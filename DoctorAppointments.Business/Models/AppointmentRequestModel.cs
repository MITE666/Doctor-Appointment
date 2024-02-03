using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Models
{
    public class AppointmentRequestModel
    {
        public Guid DoctorId { get; set; }
        public Guid PacientId { get; set; }
        public Guid MedicalFacilityId { get; set; }
        public DateTime Date { get; set; }
        public Status Status { get; set; }
    }
}
