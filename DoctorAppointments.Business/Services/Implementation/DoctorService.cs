using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;

namespace DoctorAppointment.Application.Services.Implementation;

public class DoctorService : IDoctorService
{
    private readonly IDoctorRepository _doctorRepository;
    private readonly IMapper _mapper;

    public DoctorService(IDoctorRepository doctorRepository, IMapper mapper)
    {
        _doctorRepository = doctorRepository;
        _mapper = mapper;
    }

    public async Task<ApiResponse<DoctorResponseModel>> AddDoctor(DoctorRequestModel doctorRequestModel)
    {
        var doctor = _mapper.Map<Doctor>(doctorRequestModel);
        doctor = await _doctorRepository.AddDoctor(doctor);
        return ApiResponse<DoctorResponseModel>.Success(_mapper.Map<DoctorResponseModel>(doctor));
    }

    public async Task<ApiResponse<bool>> DeleteDoctor(Guid id)
    {
        var result = await _doctorRepository.DeleteDoctor(id);
        return result ? ApiResponse<bool>.Success(true) : ApiResponse<bool>.Fail("Doctor not found");
    }

    public async Task<ApiResponse<List<DoctorResponseModel>>> GetAllDoctors()
    {
        var doctors = await _doctorRepository.GetAllDoctors();
        if (doctors.Count == 0)
        {
            return ApiResponse<List<DoctorResponseModel>>.Fail("Could not find doctors in db");
        }
        return ApiResponse<List<DoctorResponseModel>>.Success(_mapper.Map<List<DoctorResponseModel>>(doctors));
    }

    public async Task<ApiResponse<DoctorResponseModel>> GetDoctorById(Guid id)
    {
        var doctor = await _doctorRepository.GetDoctorById(id);
        if (doctor == null)
        {
            return ApiResponse<DoctorResponseModel>.Fail("Could not find doctor");
        }

        return ApiResponse<DoctorResponseModel>.Success(_mapper.Map<DoctorResponseModel>(doctor));
    }

    public async Task<ApiResponse<DoctorResponseModel>> GetDoctorByUserId(Guid id)
    {
        var doctor = await _doctorRepository.GetDoctorByUserId(id);
        if (doctor == null)
        {
            return ApiResponse<DoctorResponseModel>.Fail("Could not find doctor");
        }

        return ApiResponse<DoctorResponseModel>.Success(_mapper.Map<DoctorResponseModel>(doctor));
    }

    public async Task<ApiResponse<DoctorResponseModel>> UpdateDoctor(Doctor doctor)
    {
        var result = await _doctorRepository.UpdateDoctor(doctor);
        if (result == null)
        {
            return ApiResponse<DoctorResponseModel>.Fail("Could not find doctor");
        }
        return ApiResponse<DoctorResponseModel>.Success(_mapper.Map<DoctorResponseModel>(result));
    }
}