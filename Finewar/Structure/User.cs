using System;
using System.Data.SqlClient;
using System.Data;
using Finewar.Structure.Customizers;
using System.Net;
using Finewar.DB;
using System.Web;

namespace Finewar.Structure
{
    public sealed class User
    {
        public static Response<Object> Update(Models.UserEditSubmitModel SDM)
        {
            Response<Object> Response = new Response<Object>();
            int Return = 0;
            if (!Validation.checkAlphaNumericHyphen(SDM.Value) && (SDM.Field == "Name" || SDM.Field == "City"))
            {
                Response.Create(false, Return, SDM.Field + "Contains invalid characters", "Only alphanumeric, space or hyphen allowed", "false");
            }
            else
                if (SDM.Value.Length < 3 && (SDM.Field == "Name" || SDM.Field == "City"))
            {
                Response.Create(false, Return, "Please enter at least 3 characters in " + SDM.Field, SDM.Field + " Length less than 3 characters", "false");
            }
            else
                if (SDM.Value.Length < 5 && SDM.Field == "Address")
            {
                Response.Create(false, Return, "Please enter at least 5 characters in " + SDM.Field, SDM.Field + " Length less than 5 characters", "false");
            }
            else
            if (!Validation.IsValidEmail(SDM.Value) && SDM.Field == "Email")
            {
                Response.Create(false, Return, "Please enter a valid email address", "Email format is wrong", "false");
            }
            else
                using (SqlConnection connection = DBConnection.getConnection())
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "USER_UPDATE";
                    string value = SDM.Value;

                    if (SDM.Field == "Address")
                        value = WebUtility.HtmlEncode(SDM.Value);
                    cmd.Parameters.Add(new SqlParameter("@Field", SDM.Field));
                    cmd.Parameters.Add(new SqlParameter("@Value", value));
                    cmd.Parameters.Add(new SqlParameter("@Token", SDM.Token));
                    cmd.Parameters.Add(new SqlParameter("@UserId", SDM.ID));

                    SqlParameter returnParameter = cmd.Parameters.Add("ReturnValue", SqlDbType.BigInt);
                    returnParameter.Direction = ParameterDirection.ReturnValue;

                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    Return = (int)returnParameter.Value;
                    cmd.Connection.Close();
                    switch (Return)
                    {
                        case 0:
                            Response.Create(false, Return, "Internal error", "SQL transaction failed", "false");
                            break;
                        case -2:
                            Response.Create(false, Return, "Username is already taken", "Username is registered", "false");
                            break;
                        case -3:
                            Response.Create(false, Return, "This Email is already registered with us", "Email is already in database", "false");
                            break;
                        case -4:
                            Response.Create(false, Return, "Invalid Token", "Invalid Token", "false");
                            break;
                        case -5:
                            Response.Create(false, Return, "Wrong request please try again", "Field is restricted or not exist", "false");
                            break;
                        case 1:
                            Response.Create(true, Return, "Successfully Updated", SDM.Field + " is Successfully Updated", "true");
                            break;

                    }
                }
            return Response;
        }
    }
}