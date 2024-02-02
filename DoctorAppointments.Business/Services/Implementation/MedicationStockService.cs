using AutoMapper;
using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;

namespace DoctorAppointment.Application.Services.Implementation;

public class MedicationStockService : IMedicationStockService
{
    private readonly IMedicationStockRepository _medicationStockRepository;
    private readonly IMapper _mapper;

    public MedicationStockService(IMedicationStockRepository medicationStockRepository, IMapper mapper)
    {
        _medicationStockRepository = medicationStockRepository;
        _mapper = mapper;
    }

    public async Task<ApiResponse<MedicationStockResponseModel>> AddMedicationStock(MedicationStockRequestModel medicationStockRequestModel)
    {
        var medicationStock = _mapper.Map<MedicationStock>(medicationStockRequestModel);
        medicationStock = await _medicationStockRepository.AddMedicationStock(medicationStock);
        return ApiResponse<MedicationStockResponseModel>.Success(_mapper.Map<MedicationStockResponseModel>(medicationStock));
    }

    public async Task<ApiResponse<bool>> DeleteMedicationStock(Guid id)
    {
        var result = await _medicationStockRepository.DeleteMedicationStock(id);
        return result
            ? ApiResponse<bool>.Success(true)
            : ApiResponse<bool>.Fail("Doctor not found");
    }

    public async Task<ApiResponse<List<MedicationStockResponseModel>>> GetAllMedicationStock()
    {
        var medicationStock = await _medicationStockRepository.GetAllMedicationStock();
        if (medicationStock.Count == 0)
        {
            return ApiResponse<List<MedicationStockResponseModel>>.Fail("Could not find MedicationStock in db");
        }
        return ApiResponse<List<MedicationStockResponseModel>>.Success(_mapper.Map<List<MedicationStockResponseModel>>(medicationStock));
    }

    public async Task<ApiResponse<MedicationStockResponseModel>> GetMedicationStockById(Guid id)
    {
        var medicationStock = await _medicationStockRepository.GetMedicationStockById(id);
        if (medicationStock == null)
        {
            return ApiResponse<MedicationStockResponseModel>.Fail("Could not find medicationStock");
        }

        return ApiResponse<MedicationStockResponseModel>.Success(_mapper.Map<MedicationStockResponseModel>(medicationStock));
    }

    public async Task<ApiResponse<MedicationStockResponseModel>> UpdateMedicationStock(MedicationStock medicationStock)
    {
        var result = await _medicationStockRepository.UpdateMedicationStock(medicationStock);
        if (result == null)
        {
            return ApiResponse<MedicationStockResponseModel>.Fail("Could not find MedicationStock");
        }
        return ApiResponse<MedicationStockResponseModel>.Success(_mapper.Map<MedicationStockResponseModel>(result));
    }
}