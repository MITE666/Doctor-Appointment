namespace DoctorAppointments.DataAccess.Entities;

#pragma warning disable 8618

public class MedicalFacility : Entity
{
    public string Name { get; set; }

    public Guid CityId { get; set; }

    public City City { get; set; }

    public IEnumerable<MedicationStock> Medications { get; set; }
}