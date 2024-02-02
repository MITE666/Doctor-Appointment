using DoctorIntegrationTests;
using FluentAssertions;
using System.Net;
using DoctorAppointment;

namespace MedicalFacilityIntegrationTests;

public class MedicalFacilityIntegrationTests
{
    private readonly HttpClient _httpClient;

    public MedicalFacilityIntegrationTests()
    {
        _httpClient = new CustomWebApplicationFactory<Program>().CreateClient();
    }

    [Fact]
    public async void WhenRequestingGetAllMedicalFacilities_GivenEmptyDatabase_ShouldReturn_BadRequest()
    {
        //act
        var response = await _httpClient.GetAsync("api/v1.0/MedicalFacility");
        //assert
        response.StatusCode.Should().Be(HttpStatusCode.BadRequest);
    }
}