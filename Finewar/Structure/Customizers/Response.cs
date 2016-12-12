using System;

namespace Finewar.Structure.Customizers
{
    [Serializable]
    public class Response<T>
    {
        public bool Success;
        public long ErrorCode;
        public string UserMessage;
        public string DeveloperMessage;
        public T Result;

        public void Create(bool Success, long ErrorCode, string UserMessage,string DeveloperMessage, T Result)
        {
            this.Success = Success;                         //Error Status
            this.ErrorCode = ErrorCode;                    //0-No error, 1-Database error, 2-Empty Data (further errors no. will be shared as per the requirements)
            this.UserMessage = UserMessage;               //return user message
            this.DeveloperMessage = DeveloperMessage;    //return developer message
            this.Result = Result;                       //return data for ex. id,name etc
        }

    }
}