using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Models
{
    public class AppointmentResponseModel
    {
        public DoctorResponseModel Doctor { get; set; }
        public PacientResponseModel Pacient { get; set; }
        public MedicalFacilityResponseModel MedicalFacility { get; set; }
        public DateTime Date { get; set; }
        public Status Status { get; set; }
    }
}
