using DoctorAppointment.Application.Models;
using FluentValidation;

namespace DoctorAppointment.Application.Validators
{
    public class PacientValidator : AbstractValidator<PacientRequestModel>

    {
        public PacientValidator()
        {
            ClassLevelCascadeMode = CascadeMode.Stop;
            RuleFor(p => p.CNP).NotNull()
                .Matches(
                    "^[1-9]\\d{2}(0[1-9]|1[0-2])(0[1-9]|[12]\\d|3[01])(0[1-9]|[1-4]\\d|5[0-2]|99)(00[1-9]|0[1-9]\\d|[1-9]\\d\\d)\\d$")
                .WithMessage("Not a valid CNP format!");
            RuleFor(p => p.FirstName).NotNull();
            RuleFor(p => p.LastName).NotNull();
            RuleFor(p => p.Phone).NotEmpty()
                .NotNull().WithMessage("Phone Number is required.")
                .MinimumLength(10).WithMessage("PhoneNumber must not be less than 10 characters.")
                .MaximumLength(20).WithMessage("PhoneNumber must not exceed 50 characters.")
                .Matches(@"((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}").WithMessage("PhoneNumber not valid");
            RuleFor(p => p.BirthDate)
                .NotEmpty().WithMessage("Birthdate cannot be empty!")
                .LessThan(p => DateTime.Now).WithMessage("Birthdate cannot be past present");
            RuleFor(p => p.UserId).NotNull().WithMessage("UserId is empty");
        }
    }
}