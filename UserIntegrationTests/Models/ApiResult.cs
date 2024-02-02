#pragma warning disable 8618

namespace UserIntegrationTests.Models
{
    public class ApiResult<T>
    {
        public bool Succeeded { get; init; }

        public T Result { get; init; }

        public IEnumerable<ValidationError> Errors { get; init; } = new List<ValidationError>();
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