using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Finewar.Structure.Customizers;

namespace Finewar.API
{
    public class UserController : ApiController
    {
        public Response<Object> update(Structure.Models.UserEditSubmitModel SDM)
        {
            return Structure.User.Update(SDM);
        }
    }
}
