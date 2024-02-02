using DoctorAppointment;
using FluentAssertions;
using System.Net;

namespace MedicationStockIntegrationTests;

public class MedicationStockIntegrationTests
{
    private readonly HttpClient _httpClient;

    public MedicationStockIntegrationTests()
    {
        _httpClient = new CustomWebApplicationFactory<Program>().CreateClient();
    }

    [Fact]
    public async void WhenRequestingGetAllMedicationStock_GivenEmptyDatabse_ShouldReturn_BadRequest()
    {
        //act
        var response = await _httpClient.GetAsync("api/v1.0/MedicationStock");
        //assert
        response.StatusCode.Should().Be(HttpStatusCode.BadRequest);
    }
}