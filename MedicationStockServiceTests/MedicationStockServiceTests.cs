using AutoMapper;
using DoctorAppointment.Application.Mapping;
using DoctorAppointment.Application.Models;
using DoctorAppointment.Application.Services;
using DoctorAppointment.Application.Services.Implementation;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using DoctorAppointments.DataAccess.Repositories;
using FluentAssertions;
using NSubstitute;
using Xunit;

namespace MedicationStockServiceTests;

public class MedicationStockServiceTests
{
    private readonly IMedicationStockService _service;
    private readonly IMedicationStockRepository _repository;
    private readonly IMapper _mapper;

    public MedicationStockServiceTests()
    {
        _repository = Substitute.For<IMedicationStockRepository>();
        var mapperConfiguration = new MapperConfiguration(x =>
        {
            x.AddProfile(typeof(MedicationStockProfile));
        });
        _mapper = new Mapper(mapperConfiguration);

        _service = new MedicationStockService(_repository, _mapper);
    }

    [Fact]
    public async Task AddMedicationStock_Should_Return_Success()
    {
        //Arrange
        _repository.AddMedicationStock(Arg.Any<MedicationStock>())
            .Returns(new MedicationStock());

        //Act
        var result = await _service
            .AddMedicationStock(new MedicationStockRequestModel());

        //Assert
        result.Should().NotBeNull();
        result.Should().BeOfType<ApiResponse<MedicationStockResponseModel>>();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task GetMedicationStockById_Should_Return_Success_When_Id_Exists()
    {
        //Arrange
        _repository.GetMedicationStockById(Arg.Any<Guid>())
            .Returns(new MedicationStock());

        //Act
        var result = await _service.GetMedicationStockById(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Should().BeOfType<ApiResponse<MedicationStockResponseModel>>();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task GetMedicationStockById_Should_Return_Null_When_Id_Doesnt_Exist()
    {
        //Arrange
        _repository.GetMedicationStockById(Arg.Any<Guid>())
            .Returns(null as MedicationStock);

        //Act
        var result = await _service.GetMedicationStockById(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Should().HaveCount(1);
    }

    [Fact]
    public async Task UpdateMedicationStock_Should_Return_MedicationStock_When_MedicationStock_Exists()
    {
        //Arrange
        _repository.UpdateMedicationStock(Arg.Any<MedicationStock>())
            .Returns(new MedicationStock());

        //Act
        var result = await _service.UpdateMedicationStock(new MedicationStock());

        //Assert
        result.Should().NotBeNull();
        result.Should().BeOfType<ApiResponse<MedicationStockResponseModel>>();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task UpdateMedicationStock_Should_Return_Null_When_MedicationStock_Doesnt_Exist()
    {
        //Arrange
        _repository.UpdateMedicationStock(Arg.Any<MedicationStock>())!
            .Returns(null as MedicationStock);

        //Act
        var result = await _service.UpdateMedicationStock(new MedicationStock());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Should().HaveCount(1);
    }

    [Fact]
    public async Task DeleteMedicationStock_Should_Return_Success_When_MedicationStock_Exists()
    {
        //Arrange
        _repository.GetMedicationStockById(Arg.Any<Guid>())
            .Returns(new MedicationStock());
        _repository.DeleteMedicationStock(Arg.Any<Guid>())
            .Returns(true);
        //Act
        var result = await _service.DeleteMedicationStock(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeTrue();
    }

    [Fact]
    public async Task DeleteMedicationStock_Should_Return_Failure_When_MedicationStock_Doesnt_Exist()
    {
        //Arrange
        _repository.GetMedicationStockById(Arg.Any<Guid>())
            .Returns(null as MedicationStock);

        //Act
        var result = await _service.DeleteMedicationStock(new Guid());

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeFalse();
        result.Errors.Count.Should().Be(1);
    }

    [Fact]
    public async Task GetAllMedicationStock_Should_Return_Success_When_MedicationStock_Exist()
    {
        //Arrange
        _repository.GetAllMedicationStock()
            .Returns(new List<MedicationStock>() { new MedicationStock() });

        //Act
        var result = await _service.GetAllMedicationStock();

        //Assert
        result.Should().NotBeNull();
        result.Succeeded.Should().BeTrue();
    }
}