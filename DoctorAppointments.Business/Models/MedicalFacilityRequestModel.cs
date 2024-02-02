using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Models;

#pragma warning disable 8618

public class MedicalFacilityRequestModel
{
    public string Name { get; set; }

    public Guid CityId { get; set; }
    public City City { get; set; }
    
}