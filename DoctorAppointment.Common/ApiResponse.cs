namespace DoctorAppointment.Common
{
    public class ApiResponse<T>
    {
        public bool Succeeded { get; init; }

        public List<ValidationError> Errors { get; set; } = new List<ValidationError>();

        public T? Data { get; set; }

        public static ApiResponse<T> Fail(string errorMessage)
        {
            return new ApiResponse<T>() { Succeeded = false, Errors = new List<ValidationError>() { new ValidationError(null, errorMessage) } };
        }

        public static ApiResponse<T> Fail(List<ValidationError> errorMessage)
        {
            return new ApiResponse<T>() { Succeeded = false, Errors = errorMessage };
        }

        public static ApiResponse<T> Success(T data)
        {
            return new ApiResponse<T>() { Succeeded = true, Data = data };
        }
    }

    public class ValidationError
    {
        public ValidationError(string? field, string message)
        {
            this.Field = field != string.Empty ? field : null;
            this.Message = message;
        }

        public string? Field { get; }

        public string Message { get; }
    }
}