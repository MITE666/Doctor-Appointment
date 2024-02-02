using DoctorAppointment.Application.Models;
using FluentValidation;

namespace DoctorAppointment.Application.Validators
{
    public class MedicalFacilityValidator : AbstractValidator<MedicalFacilityRequestModel>

    {
        public MedicalFacilityValidator()
        {
            ClassLevelCascadeMode = CascadeMode.Stop;
            RuleFor(facility => facility.Name).NotEmpty().NotNull().WithMessage("Name cannot be empty!");
            RuleFor(facility => facility.CityId).NotEmpty().NotNull().WithMessage("CityId not specified!");
        }
    }
}