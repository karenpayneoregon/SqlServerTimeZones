using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BaseLibrary;

namespace TimeZoneUnitTests.BaseClasses
{
    public abstract class TestBase : BaseSqlServerConnections
    {
        public TestBase()
        {
            DefaultCatalog = "ForumExamples";
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
