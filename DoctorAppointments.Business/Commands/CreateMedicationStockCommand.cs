using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;
using MediatR;

namespace DoctorAppointment.Application.Commands
{
    public class CreateMedicationStockCommand : IRequest<MedicationStockResponseModel>
    {
        public string Name { get; set; }

        public int? Quantity { get; set; }

        public decimal Price { get; set; }

        public MedicalFacility MedicalFacility { get; set; }
    }
}
