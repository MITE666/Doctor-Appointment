using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Services;

public interface IDoctorService
{
    Task<ApiResponse<DoctorResponseModel>> GetDoctorById(Guid id);
    Task<ApiResponse<DoctorResponseModel>> GetDoctorByUserId(Guid id);

    Task<ApiResponse<List<DoctorResponseModel>>> GetAllDoctors();

    Task<ApiResponse<bool>> DeleteDoctor(Guid id);

    Task<ApiResponse<DoctorResponseModel>> UpdateDoctor(Doctor doctor);

    Task<ApiResponse<DoctorResponseModel>> AddDoctor(DoctorRequestModel doctorRequestModel);
}