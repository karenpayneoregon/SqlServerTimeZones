using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BaseLibrary;

namespace TimeZoneUnitTests.BaseClasses
{
    /*
     * Formatting a DateTimeOffset
     * https://msdn.microsoft.com/en-us/library/bb346136%28v=vs.110%29.aspx?f=255&MSPPError=-2147217396
     */
    public abstract class TestBase : BaseSqlServerConnections
    {
        public TestBase()
        {
            DefaultCatalog = "ForumExamples";
        }

        protected (DateTimeOffset CurrentLocalDateTimeOffset, string CurrentLocalOffset, DateTimeOffset AnotherTimeZone, DateTime CurrentLocalDateTime) Example1()
        {
            using (var cn = new SqlConnection() {ConnectionString = ConnectionString})
            {
                using (var cmd = new SqlCommand() {Connection = cn})
                {

                    cmd.CommandText = "SELECT SYSDATETIMEOFFSET() AS CurrentLocalDateTimeOffset, " + 
                                        "DATENAME(tzoffset, SYSDATETIMEOFFSET()) AS CurrentLocalOffset, " +
                                        "SWITCHOFFSET(CONVERT(DATETIMEOFFSET, GETDATE()),'-04:00') AS AnotherTimeZone," + 
                                        "GETDATE() AS CurrentLocalDateTime;";

                    cn.Open();
                    var reader = cmd.ExecuteReader();
                    reader.Read();
                    return (reader.GetDateTimeOffset(0), reader.GetString(1), reader.GetDateTimeOffset(2), reader.GetDateTime(3));
                }
            }
        }

        private static void ShowPossibleTimeZones(DateTimeOffset offsetTime)
        {
            TimeSpan offset = offsetTime.Offset;
            Console.WriteLine("{0} could belong to the following time zones:", offsetTime.ToString());
            ReadOnlyCollection<TimeZoneInfo> timeZones = TimeZoneInfo.GetSystemTimeZones();
            foreach (TimeZoneInfo timeZone in timeZones)
            {
                string tz = timeZone.BaseUtcOffset.ToString();
                Console.WriteLine($"{tz}  {timeZone.DaylightName}");
                if (timeZone.GetUtcOffset(offsetTime.DateTime).Equals(offset))
                {
                    //Console.WriteLine("   {0}", timeZone.DisplayName);
                }
            }
        }
        /// <summary>
        /// Show all TimeZones from
        /// </summary>
        protected void GetAllTimeZonesFromTheFramework()
        {
            var timeZones = TimeZoneInfo.GetSystemTimeZones();
            foreach (TimeZoneInfo timeZone in timeZones)
            {
                Console.WriteLine($"{timeZone.StandardName}, {timeZone.BaseUtcOffset}");
            }
        }

        protected void Tester()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn() {ColumnName = "id", DataType = typeof(int), AutoIncrement = true, AutoIncrementSeed = 1});
            dt.Columns.Add(new DataColumn() {ColumnName = "OrderDate",DataType = typeof(DateTimeOffset)});

            DateTimeOffset dateAndTime;
            dateAndTime = new DateTimeOffset(2018, 5, 1, 8, 6, 32,new TimeSpan(-8, 0, 0));

            dt.Rows.Add(null, dateAndTime);

            var os = dateAndTime.Offset;

            Console.WriteLine($"{os.Hours.ToString("D2")}:{os.Minutes.ToString("D2")}");

            DateTime dstDate = new DateTime(2018, 6, 10, 0, 0, 0);

            DateTimeOffset thisTime = new DateTimeOffset(dstDate, new TimeSpan(-5, 0, 0));
            ShowPossibleTimeZones(thisTime);


        }

        protected int TimeZoneCount()
        {
            int recordCount = 0;

            using (var cn = new SqlConnection() { ConnectionString = ConnectionString })
            {
                using (var cmd = new SqlCommand() { Connection = cn })
                {
                    cmd.CommandText = "SELECT DISTINCT Timezone FROM dbo.Timezones;";
                    try
                    {
                        cn.Open();

                        using (var reader = cmd.ExecuteReader()) {}

                        cmd.CommandText = "SELECT @@ROWCOUNT";
                        recordCount = (int)cmd.ExecuteScalar();
                    }
                    catch (Exception e)
                    {
                        mHasException = true;
                        mLastException = e;
                    }
                }
            }

            return recordCount;
        }

    }
}
