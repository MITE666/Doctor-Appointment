using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;

namespace DoctorAppointment.Application.Services.Implementation;

public class MedicalFacilityService : IMedicalFacilityService
{
    private readonly IMedicalFacilityRepository _facilityRepository;
    private readonly IMapper _mapper;

    public MedicalFacilityService(IMedicalFacilityRepository facilityRepository, IMapper mapper)
    {
        _facilityRepository = facilityRepository;
        _mapper = mapper;
    }

    public async Task<ApiResponse<MedicalFacilityResponseModel>> AddFacility(MedicalFacilityRequestModel medicalFacilityRequestModel)
    {
        var facility = _mapper.Map<MedicalFacility>(medicalFacilityRequestModel);
        facility = await _facilityRepository.AddFacility(facility);
        return ApiResponse<MedicalFacilityResponseModel>.Success(_mapper.Map<MedicalFacilityResponseModel>(facility));
    }

    public async Task<ApiResponse<bool>> DeleteFacility(Guid id)
    {
        var result = await _facilityRepository.DeleteFacility(id);
        if (result)
            return ApiResponse<bool>.Success(true);
        return ApiResponse<bool>.Fail("MedicalFacility not found");
    }

    public async Task<ApiResponse<List<MedicalFacilityResponseModel>>> GetAllFacilities()
    {
        var facility = await _facilityRepository.GetAllFacilities();
        if (facility.Count == 0)
        {
            return ApiResponse<List<MedicalFacilityResponseModel>>.Fail("Could not find MedicalFacilities in db");
        }
        return ApiResponse<List<MedicalFacilityResponseModel>>.Success(_mapper.Map<List<MedicalFacilityResponseModel>>(facility));
    }

    public async Task<ApiResponse<MedicalFacilityResponseModel>> GetFacilityById(Guid id)
    {
        var facility = await _facilityRepository.GetFacilityById(id);
        return facility == null
            ? ApiResponse<MedicalFacilityResponseModel>.Fail("Could not find MedicalFacility")
            : ApiResponse<MedicalFacilityResponseModel>.Success(_mapper.Map<MedicalFacilityResponseModel>(facility));
    }

    public async Task<ApiResponse<MedicalFacilityResponseModel>> UpdateFacility(MedicalFacility medicalFacility)
    {
        var result = await _facilityRepository.UpdateFacility(medicalFacility);
        if (result == null)
        {
            return ApiResponse<MedicalFacilityResponseModel>.Fail("Could not find MedicalFacility");
        }
        return ApiResponse<MedicalFacilityResponseModel>.Success(_mapper.Map<MedicalFacilityResponseModel>(result));
    }
}