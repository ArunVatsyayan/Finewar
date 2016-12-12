using System.Data.SqlClient;
using System.Configuration;

namespace Finewar.DB
{
    public sealed class DBConnection
    {//database
        public static SqlConnection getConnection()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            return con;
        }
    }
}