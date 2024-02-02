using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Services;

public interface IMedicalFacilityService
{
    Task<ApiResponse<MedicalFacilityResponseModel>> GetFacilityById(Guid id);

    Task<ApiResponse<List<MedicalFacilityResponseModel>>> GetAllFacilities();

    Task<ApiResponse<bool>> DeleteFacility(Guid id);

    Task<ApiResponse<MedicalFacilityResponseModel>> UpdateFacility(MedicalFacility medicalFacility);

    Task<ApiResponse<MedicalFacilityResponseModel>> AddFacility(MedicalFacilityRequestModel medicalFacilityRequestModel);
}