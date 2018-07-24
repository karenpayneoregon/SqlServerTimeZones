using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BaseLibrary.Classes;

namespace BaseLibrary
{
    public class DataOperations : BaseSqlServerConnections
    {
        private List<TimeZone> _timeZoneList;
        public List<TimeZone> TimeZones => _timeZoneList;

        public DataOperations()
        {
            DefaultCatalog = "ForumExamples";
        }

        public List<WorkingWithDates> ReadAllRecords()
        {
            var recordList = new List<WorkingWithDates>();

            using (var cn = new SqlConnection() {ConnectionString = ConnectionString})
            {
                using (var cmd = new SqlCommand() {Connection = cn})
                {
                    cmd.CommandText = "SELECT id, SomeDateWithOffSet, SomeDate, FirstName, LastName, DATENAME(tz, SomeDateWithOffSet) AS Zone " + 
                                      "FROM dbo.WorkingWithDates AS wwd";

                    cn.Open();
                    var reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                    while (reader.Read())
                    {
                        recordList.Add(new WorkingWithDates()
                        {
                            Id = reader.GetInt32(0),
                            SomeDateWithOffSet = reader.GetDateTimeOffset(1),
                            SomeDate = reader.GetDateTime(2),
                            FirstName = reader.GetString(3),
                            LastName = reader.GetString(4),
                            Zone = reader.GetString(5)
                        });
                    }
                }
            }

            return recordList;
        }

        public List<WorkingWithDates> GetRecordByTimeZoneUsingTimeZoneTable(string pTimeZone)
        {
            var recordList = new List<WorkingWithDates>();

            using (var cn = new SqlConnection() { ConnectionString = ConnectionString })
            {
                using (var cmd = new SqlCommand() { Connection = cn })
                {
                    cmd.CommandText = "SELECT  w.id, SomeDateWithOffSet, SomeDate, DATENAME(tz, SomeDateWithOffSet) AS Zone, " +
                                        "(SELECT REPLACE(SUBSTRING(( SELECT  ',' + Place AS 'data()' FROM TimeZones AS t " + 
                                        "WHERE Timezone = DATENAME(tz, SomeDateWithOffSet) FOR XML PATH('')), 2, 6000), '&amp;', '&')) AS Locations, " + 
                                        "FirstName, LastName " + 
                                        "FROM dbo.WorkingWithDates AS w " + 
                                        "WHERE DATENAME(tz, SomeDateWithOffSet) = @TimeZone";

                    cmd.Parameters.AddWithValue("@TimeZone", pTimeZone);

                    cn.Open();
                    var reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                    while (reader.Read())
                    {
                        recordList.Add(new WorkingWithDates()
                        {
                            Id = reader.GetInt32(0),
                            SomeDateWithOffSet = reader.GetDateTimeOffset(1),
                            SomeDate = reader.GetDateTime(2),
                            Zone = reader.GetString(3),
                            Locations = reader.GetString(4),
                            FirstName = reader.GetString(5),
                            LastName = reader.GetString(6)
                            
                        });
                    }
                }
            }

            return recordList;
        }

        public void GetTimeZones()
        {
            if (_timeZoneList != null) return;

            var tmpList = new List<string>();

            using (var cn = new SqlConnection() { ConnectionString = ConnectionString })
            {
                using (var cmd = new SqlCommand() { Connection = cn })
                {

                    cmd.CommandText = "SELECT Timezone FROM dbo.Timezones";

                    try
                    {
                        cn.Open();
                        var reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            tmpList.Add(reader.GetString(0));   
                        }

                        reader.Close();

                        var uniqueList = tmpList.Distinct();
                        cmd.CommandText = "SELECT Place FROM dbo.Timezones WHERE timezone = @Zone ORDER BY Place";
                        cmd.Parameters.Add(new SqlParameter() {DbType = DbType.String, ParameterName = "@Zone"});

                        _timeZoneList = new List<TimeZone>();
                        foreach (var zone in uniqueList)
                        {
                            var tz = new TimeZone() {Name = zone, PlacesList = new List<string>()};
                            cmd.Parameters["@Zone"].Value = zone;
                            reader = cmd.ExecuteReader();
                            while (reader.Read())
                            {
                                tz.PlacesList.Add(reader.GetString(0));
                            }
                            reader.Close();
                            _timeZoneList.Add(tz);
                        }
                    }
                    catch (Exception e)
                    {
                        mHasException = true;
                        mLastException = e;
                    }
                }
            }
        }

    }
}
