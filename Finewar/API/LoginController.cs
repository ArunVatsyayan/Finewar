using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Finewar.Structure.Customizers;

namespace Finewar.API
{
    public class LoginController : ApiController
    {
        public Response<Object> login(Structure.Models.LoginSubmitModel SDM)
        {
            return Structure.Login.login(SDM);
        }
        public Response<Object> register(Structure.Models.UserSubmitModel SDM)
        {
            return Structure.Login.Register(SDM);
        }
        public Response<Object> checkUsername(Structure.Models.UsernameSubmitModel SDM)
        {
            return Structure.Login.CheckUsername(SDM);
        }
    }
}
