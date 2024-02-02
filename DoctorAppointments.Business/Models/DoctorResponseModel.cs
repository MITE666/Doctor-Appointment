using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Models;

#pragma warning disable 8618

public class DoctorResponseModel
{
    public Guid Id { get; set; }
    public string CNP { get; set; }
    public string ProfilePicture { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public MedicalFacility MedicalFacility { get; set; }
    public Specialty Specialty { get; set; }
}