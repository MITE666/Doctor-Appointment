using DoctorAppointment.Application.Models;
using DoctorAppointments.DataAccess.Entities;
using MediatR;

namespace DoctorAppointment.Application.Commands
{
    public class GetAllFacilitiesCommand : IRequest<MedicalFacilityResponseModel>
    {
        public string Name { get; set; }

        public Guid CityId { get; set; }

        public City City { get; set; }

        public IEnumerable<MedicationStock> Medications { get; set; }
    }
}
