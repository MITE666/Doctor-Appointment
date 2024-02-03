using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;

namespace DoctorAppointment.Application.Services;

public interface IAppointmentService
{
    Task<ApiResponse<AppointmentResponseModel>> GetAppointmentById(Guid id);

    Task<ApiResponse<List<AppointmentResponseModel>>> GetAllAppointments();
    Task<ApiResponse<List<AppointmentResponseModel>>> GetUserAppointments(Guid id);

    Task<ApiResponse<bool>> DeleteAppointment(Guid id);

    Task<ApiResponse<AppointmentResponseModel>> UpdateAppointment(Appointment appointment);

    Task<ApiResponse<AppointmentResponseModel>> AddAppointment(AppointmentRequestModel appointmentRequestModel);
}