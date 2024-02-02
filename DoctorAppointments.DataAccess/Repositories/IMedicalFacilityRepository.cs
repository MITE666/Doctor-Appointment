using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories.Base;

namespace DoctorAppointments.DataAccess.Repositories;

public interface IMedicalFacilityRepository : IRepository<MedicalFacility>
{
    Task<MedicalFacility> GetFacilityById(Guid idGuid);
    Task<IReadOnlyCollection<MedicalFacility>> GetAllFacilities();
    Task<MedicalFacility> AddFacility(MedicalFacility medicalFacility);

    Task<bool> DeleteFacility(Guid id);



    Task Save();

    Task<MedicalFacility?> UpdateFacility(MedicalFacility medicalFacility);
}