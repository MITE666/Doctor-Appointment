using DoctorAppointment.Application.Models;
using FluentValidation;

namespace DoctorAppointment.Application.Validators
{
    public class MedicationStockValidator : AbstractValidator<MedicationStockRequestModel>

    {
        public MedicationStockValidator()
        {
            ClassLevelCascadeMode = CascadeMode.Stop;
            RuleFor(stock => stock.Name).NotEmpty().NotNull();
            RuleFor(stock => stock.MedicalFacilityId).NotEmpty().NotNull();
            RuleFor(stock => stock.Quantity).NotEmpty().NotNull().InclusiveBetween(1, 10000).WithMessage("Stock quantity not in range!");
            RuleFor(stock => stock.Price).NotEmpty().NotNull().InclusiveBetween(1, 1000).WithMessage("Price not in range!");
        }
    }
}