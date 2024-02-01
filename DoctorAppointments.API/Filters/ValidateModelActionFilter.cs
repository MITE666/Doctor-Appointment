using DoctorAppointment.Common;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

namespace DoctorAppointment.Filters
{
    public class ValidateModelActionFilter : IAsyncActionFilter
    {
        public async Task OnActionExecutionAsync(ActionExecutingContext context, ActionExecutionDelegate next)
        {
            if (!context.ModelState.IsValid)
            {
                var validationErrors = new List<ValidationError>();

                foreach (var modelStateKey in context.ModelState.Keys)
                {
                    var modelStateVal = context.ModelState[modelStateKey];
                    if (modelStateVal?.Errors != null)
                        foreach (var error in modelStateVal.Errors)
                        {
                            var key = modelStateKey;
                            var errorMessage = error.ErrorMessage;
                            validationErrors.Add(new ValidationError(key, errorMessage));
                        }
                }

                context.Result = new BadRequestObjectResult(ApiResponse<string>.Fail(validationErrors));
            }
            else
            {
                await next();
            }
        }
    }
}