using DoctorAppointment.Application.Models;
using FluentValidation;

namespace DoctorAppointment.Application.Validators
{
    public class UserValidator : AbstractValidator<UserRequestModel>

    {
        public UserValidator()
        {
            ClassLevelCascadeMode = CascadeMode.Stop;
            RulesForEmail();
            RulesForPassword();
        }

        private void RulesForEmail()
        {
            RuleFor(patient => patient.Email).NotEmpty().WithMessage("Email cannot be Empty");
            RuleFor(patient => patient.Email).NotNull().WithMessage("Email cannot be null");
            RuleFor(patient => patient.Email).EmailAddress().WithMessage("String provided is not an email");
        }

        private void RulesForPassword()
        {
            RuleFor(patient => patient.Password).NotEmpty().WithMessage("Password cannot be Empty");
            RuleFor(patient => patient.Password).NotNull().WithMessage("Password cannot be null");
            RuleFor(patient => patient.Password).Must(ValidatePassword).WithMessage("Password must contain a number and a special character");
        }

        private bool ValidatePassword(string password)
        {
            if (!password.Any(char.IsDigit))
            {
                return false;
            }

            if (!password.Any(x => !char.IsLetterOrDigit(x) && !char.IsWhiteSpace(x)))
            {
                return false;
            }

            return true;
        }
    }
}