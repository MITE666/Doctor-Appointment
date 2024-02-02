using DoctorAppointment.Application.Models;
using FluentValidation;

namespace DoctorAppointment.Application.Validators;

public class DoctorValidator : AbstractValidator<DoctorRequestModel>
{
    public DoctorValidator()
    {
        ClassLevelCascadeMode = CascadeMode.Stop;
        RuleFor(doc => doc.CNP).NotEmpty().NotNull()
            .Matches(
                "^[1-9]\\d{2}(0[1-9]|1[0-2])(0[1-9]|[12]\\d|3[01])(0[1-9]|[1-4]\\d|5[0-2]|99)(00[1-9]|0[1-9]\\d|[1-9]\\d\\d)\\d$")
            .WithMessage("Not a valid CNP format!");
        RuleFor(doc => doc.FirstName).NotEmpty().NotNull();
        RuleFor(doc => doc.LastName).NotEmpty().NotNull();
    }
}