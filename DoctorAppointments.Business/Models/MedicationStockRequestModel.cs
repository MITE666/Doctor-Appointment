namespace DoctorAppointment.Application.Models;

#pragma warning disable 8618

public class MedicationStockRequestModel
{
    public string? Name { get; set; }

    public int? Quantity { get; set; }

    public decimal Price { get; set; }

    public Guid MedicalFacilityId { get; set; }
}