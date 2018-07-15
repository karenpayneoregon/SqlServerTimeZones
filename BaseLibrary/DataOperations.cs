using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
