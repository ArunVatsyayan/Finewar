using System;
using System.Data.SqlClient;
using System.Data;
using Finewar.Structure.Customizers;
using System.Net;
using Finewar.DB;

namespace Finewar.Structure
{
    public sealed class Login
    {
        public static Response<Object> login(Models.LoginSubmitModel SDM)
        {
            Response<Object> Response = new Response<Object>();
            Models.UserViewModel SDM2 = new Models.UserViewModel();
            int SignInStatus = 0;


            using (SqlConnection connection = DB.DBConnection.getConnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "USER_LOGIN";
                cmd.Parameters.Add(new SqlParameter("@Username", SDM.Username));

                cmd.Connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    SignInStatus = (int)reader["SignInStatus"];
                    if (SignInStatus == 1)
                    {
                        if (!(PasswordEncryption.VerifyHash(SDM.Password, "SHA512", (string)reader["Password"]))) SignInStatus = -3;
                        else
                        {
                            SDM2.ID = (long)reader["id"];
                            SDM2.Email = (string)reader["Email"];
                            SDM2.LastLogin = (DateTime)reader["LastLogin"];
                            SDM2.Name= (string)reader["Name"];
                            SDM2.Address = (string)reader["Address"];
                            SDM2.City = (string)reader["City"];
                            SDM2.Country = (string)reader["Country"];
                            SDM2.Password = "NA";
                            SDM2.Username = (string)reader["Username"];
                            SDM2.Token = updateLastLogin(SDM2.ID);
                            SDM2.LoginStatus = (int)reader["LoginStatus"];
                            SDM2.CreatedDate = (DateTime)reader["CreatedDate"];
                            SDM2.UpdatedDate = (DateTime)reader["UpdatedDate"];
                            SDM2.DOB = (DateTime)reader["DOB"];

                        }
                    }
                }
                cmd.Connection.Close();
            }


            switch (SignInStatus)
            {

                case 0:
                    Response.Create(false, SignInStatus, "Internal error", "Error in making connection", "false");
                    break;
                case -1:
                    Response.Create(false, SignInStatus, "Internal error", "SQL transaction failed", "false");
                    break;
                case -2:
                    Response.Create(false, SignInStatus, "Username or Password mismatched", "Username or Password mismatched", "false");
                    break;
                case -3:
                    //following code is not used because of Brute Force Attack
                    //Response.Create(false, SignInStatus, "Password is incorrect", "Password Mismatched", "false");
                    Response.Create(false, -2, "Username or Password mismatched", "Username or Password mismatched", "false");
                    break;
                case 1:
                    Response.Create(true, SignInStatus, "Succefully Logged In.", "Username and Password are correct.", SDM2);
                    break;

            }

            return Response;
        }
        public static string updateLastLogin(long ID)
        {
            string token = Guid.NewGuid().ToString();
            using (SqlConnection connection = DBConnection.getConnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "USER_LAST_LOGIN_UPDATE";
                cmd.Parameters.Add(new SqlParameter("@id", ID));
                cmd.Parameters.Add(new SqlParameter("@Token", token));

                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();

            }
            return token;
        }
        public static Response<Object> Register(Models.UserSubmitModel SDM)
        {
            Response<Object> Response = new Response<Object>();
            long Return = 0;//variable used for catching returned id from procedure

            if (Validation.checkAlphaNumericPeriodUnderscore(SDM.Username))
                using (SqlConnection connection = DBConnection.getConnection())
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "USER_ADD";

                    cmd.Parameters.Add(new SqlParameter("@Name", SDM.Name));
                    cmd.Parameters.Add(new SqlParameter("@Email", SDM.Email));
                    cmd.Parameters.Add(new SqlParameter("@Username", SDM.Username));
                    cmd.Parameters.Add(new SqlParameter("@Password", PasswordEncryption.ComputeHash(SDM.Password, "SHA512", null)));
                    cmd.Parameters.Add(new SqlParameter("@Address", WebUtility.HtmlEncode(SDM.Address)));
                    cmd.Parameters.Add(new SqlParameter("@City", WebUtility.HtmlEncode(SDM.City)));
                    cmd.Parameters.Add(new SqlParameter("@Country", SDM.Country));
                    cmd.Parameters.Add(new SqlParameter("@DOB", SDM.DOB));
                    cmd.Parameters.Add(new SqlParameter("@Token", Guid.NewGuid()));

                    cmd.Connection.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Return = (long)reader["ReturnValue"];
                    }
                    cmd.Connection.Close();
                    switch (Return)
                    {
                        case -1:
                            Response.Create(false, Return, "Internal error", "SQL transaction failed", "false");
                            break;
                        case -2:
                            Response.Create(false, Return, "Username is already taken.", "Username is registered", "false");
                            break;
                        case -3:
                            Response.Create(false, Return, "This Email is already registered with us", "Email is already in database", "false");
                            break;
                        default:
                            Response.Create(true, Return, "Successfully Registered", "All Details are Correct", "true");
                            break;

                    }
                }
            else
                Response.Create(false, Return, "Username contains invalid pattern", "Only alphanumeric and one period or one underscore or one hyphen allowed", "false");
            return Response;
        }

        public static Response<Object> CheckUsername(Models.UsernameSubmitModel SDM)
        {
            Response<Object> Response = new Response<Object>();
            int Return = 0;//variable used for catching returned value from procedure


            if (SDM.Username.Trim().Length < 3 || SDM.Username.Trim().Length > 25)
            {
                Response.Create(false, Return, "Username should contains atleast 3 characters and no more than 25 characters", "Length validation failed", "false");
            }
            else if (!Validation.checkAlphaNumericPeriodUnderscore(SDM.Username))
            {
                Response.Create(false, Return, "Username contains invalid pattern", "Only alphanumeric and one period or one underscore or one hyphen allowed", "false");
            }
            else
                using (SqlConnection connection = DBConnection.getConnection())
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "USER_USERNAME_CHECK";

                    cmd.Parameters.Add(new SqlParameter("@Username", SDM.Username));
                    SqlParameter returnParameter = cmd.Parameters.Add("ReturnValue", SqlDbType.BigInt);
                    returnParameter.Direction = ParameterDirection.ReturnValue;

                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    Return = (int)returnParameter.Value;
                    cmd.Connection.Close();
                    switch (Return)
                    {
                        case -1:
                            Response.Create(true, Return, "Username can be used", "Username is not registered", "true");
                            break;
                        case -2:
                            Response.Create(false, Return, "Username is already taken.", "Username is registered", "false");
                            break;
                    }
                }

            return Response;
        }
    }
}