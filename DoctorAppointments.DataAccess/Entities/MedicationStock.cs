namespace DoctorAppointments.DataAccess.Entities;

#pragma warning disable 8618

public class MedicationStock : Entity
{
    public string Name { get; set; }

    public int? Quantity { get; set; }

    public decimal Price { get; set; }
    public Guid MedicalFacilityId { get; set; }
    public MedicalFacility MedicalFacility { get; set; }
}