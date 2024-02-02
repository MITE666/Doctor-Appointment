using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Models;

#pragma warning disable 8618

public class PacientResponseModel
{
    public Guid Id { get; set; }
    public string CNP { get; set; }
    public string Phone { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Allergies { get; set; }
    public string MedicalHistory { get; set; }
    public string ProfilePicture { get; set; }
    public string Gender { get; set; }
    public string Height { get; set; }
    public string Weight { get; set; }
    public City City { get; set; }
    public DateTime BirthDate { get; set; }
}