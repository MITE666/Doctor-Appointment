using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Services;

public interface IPacientService
{
    Task<ApiResponse<PacientResponseModel>> GetPacientById(Guid id);
    Task<ApiResponse<PacientResponseModel>> GetPacientByUserId(Guid id);

    Task<ApiResponse<List<PacientResponseModel>>> GetAllPacients();

    Task<ApiResponse<bool>> DeletePacient(Guid id);

    Task<ApiResponse<PacientResponseModel>> UpdatePacient(Pacient pacient);

    Task<ApiResponse<PacientResponseModel>> AddPacient(PacientRequestModel pacientRequestModel);
}