using DoctorAppointment;
using FluentAssertions;
using System.Net;

namespace DoctorIntegrationTests
{
    public class DoctorIntegrationTests
    {
        private readonly HttpClient _httpClient;

        public DoctorIntegrationTests()
        {
            _httpClient = new CustomWebApplicationFactory<Program>().CreateClient();
        }

        [Fact]
        public async void WhenRequestingGetAllDoctors_GivenEmptyDatabase_ShouldReturn_BadRequest()
        {
            //act
            var response = await _httpClient.GetAsync("api/v1.0/Doctor");
            //assert
            response.StatusCode.Should().Be(HttpStatusCode.BadRequest);
        }
    }
}