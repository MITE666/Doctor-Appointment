using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Models;

#pragma warning disable 8618

public class MedicalFacilityResponseModel
{
    public Guid Id { get; set; }
    public string Name { get; set; }

    public Guid CityId { get; set; }

    public City City { get; set; }

    public IEnumerable<MedicationStock> Medications { get; set; }
}