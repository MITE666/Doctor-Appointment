using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;

namespace DoctorAppointment.Application.Services.Implementation;

public class PacientService : IPacientService
{
    private readonly IPacientRepository _pacientRepository;
    private readonly IMapper _mapper;

    public PacientService(IPacientRepository pacientRepository, IMapper mapper)
    {
        _pacientRepository = pacientRepository;
        _mapper = mapper;
    }

    public async Task<ApiResponse<PacientResponseModel>> AddPacient(PacientRequestModel pacientRequestModel)
    {
        var pacient = _mapper.Map<Pacient>(pacientRequestModel);
        pacient = await _pacientRepository.AddPacient(pacient);
        return ApiResponse<PacientResponseModel>.Success(_mapper.Map<PacientResponseModel>(pacient));
    }

    public async Task<ApiResponse<bool>> DeletePacient(Guid id)
    {
        var result = await _pacientRepository.DeletePacient(id);

        if (result)
            return ApiResponse<bool>.Success(true);

        return ApiResponse<bool>.Fail("Pacient not found");
    }

    public async Task<ApiResponse<List<PacientResponseModel>>> GetAllPacients()
    {
        var pacients = await _pacientRepository.GetAllPacients();
        if (pacients.Count == 0)
        {
            return ApiResponse<List<PacientResponseModel>>.Fail("Could not find pacients in db");
        }
        return ApiResponse<List<PacientResponseModel>>.Success(_mapper.Map<List<PacientResponseModel>>(pacients));
    }

    public async Task<ApiResponse<PacientResponseModel>> GetPacientById(Guid id)
    {
        var pacient = await _pacientRepository.GetPacientById(id);

        return pacient == null
            ? ApiResponse<PacientResponseModel>.Fail("Could not find pacient")
            : ApiResponse<PacientResponseModel>.Success(_mapper.Map<PacientResponseModel>(pacient));
    }

    public async Task<ApiResponse<PacientResponseModel>> GetPacientByUserId(Guid id)
    {
        var pacient = await _pacientRepository.GetPacientByUserId(id);

        return pacient == null
            ? ApiResponse<PacientResponseModel>.Fail("Could not find pacient")
            : ApiResponse<PacientResponseModel>.Success(_mapper.Map<PacientResponseModel>(pacient));
    }

    public async Task<ApiResponse<PacientResponseModel>> UpdatePacient(Pacient pacient)
    {
        pacient = await _pacientRepository.UpdatePacient(pacient);
        if (pacient == null)
        {
            return ApiResponse<PacientResponseModel>.Fail("Could not find pacient");
        }
        return ApiResponse<PacientResponseModel>.Success(_mapper.Map<PacientResponseModel>(pacient));
    }
}