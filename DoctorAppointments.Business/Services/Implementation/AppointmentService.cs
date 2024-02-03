using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;

namespace DoctorAppointment.Application.Services.Implementation;

public class AppointmentService : IAppointmentService
{
    private readonly IAppointmentRepository _appointmentRepository;
    private readonly IMapper _mapper;
    public AppointmentService(IAppointmentRepository appointmentRepository, IMapper mapper)
    {
        _appointmentRepository = appointmentRepository;
        _mapper = mapper;
    }

    public async Task<ApiResponse<AppointmentResponseModel>> AddAppointment(AppointmentRequestModel appointmentRequestModel)
    {
        var appointment = _mapper.Map<Appointment>(appointmentRequestModel);
        appointment = await _appointmentRepository.AddAppointment(appointment);
        return ApiResponse<AppointmentResponseModel>.Success(_mapper.Map<AppointmentResponseModel>(appointment));
    }

    public async Task<ApiResponse<bool>> DeleteAppointment(Guid id)
    {
        var result = await _appointmentRepository.DeleteAppointment(id);
        return result ? ApiResponse<bool>.Success(true) : ApiResponse<bool>.Fail("Appointment not found");
    }

    public async Task<ApiResponse<List<AppointmentResponseModel>>> GetAllAppointments()
    {
        var appointments = await _appointmentRepository.GetAllAppointments();
        if (appointments.Count == 0)
        {
            return ApiResponse<List<AppointmentResponseModel>>.Fail("Could not find appointments in db");
        }
        return ApiResponse<List<AppointmentResponseModel>>.Success(_mapper.Map<List<AppointmentResponseModel>>(appointments));
    }

    public async Task<ApiResponse<AppointmentResponseModel>> GetAppointmentById(Guid id)
    {
        var appointment = await _appointmentRepository.GetAppointmentById(id);
        if (appointment == null)
        {
            return ApiResponse<AppointmentResponseModel>.Fail("Could not find appointment");
        }

        return ApiResponse<AppointmentResponseModel>.Success(_mapper.Map<AppointmentResponseModel>(appointment));
    }

    public async Task<ApiResponse<AppointmentResponseModel>> UpdateAppointment(Appointment appointment)
    {
        var result = await _appointmentRepository.UpdateAppointment(appointment);
        if (result == null)
        {
            return ApiResponse<AppointmentResponseModel>.Fail("Could not find appointment");
        }
        return ApiResponse<AppointmentResponseModel>.Success(_mapper.Map<AppointmentResponseModel>(result));
    }

    public async Task<ApiResponse<List<AppointmentResponseModel>>> GetUserAppointments(Guid id)
    {
        var result = await _appointmentRepository.GetDoctorAppointments(id);
        if (result.Count == 0)
        {
            result = await _appointmentRepository.GetPacientAppointments(id);
            if (result.Count != 0)
            {
                return ApiResponse<List<AppointmentResponseModel>>.Success(
                    _mapper.Map<List<AppointmentResponseModel>>(result));
            }

            return ApiResponse<List<AppointmentResponseModel>>.Fail("Could not find appointments for the user in db");
        }
        return ApiResponse<List<AppointmentResponseModel>>.Success(
            _mapper.Map<List<AppointmentResponseModel>>(result));
    }

}