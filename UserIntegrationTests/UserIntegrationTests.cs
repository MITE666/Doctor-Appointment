using DoctorAppointment;
using DoctorAppointment.Application.Models;
using DoctorAppointment.Common;
using DoctorAppointments.DataAccess.Entities;
using FluentAssertions;
using Newtonsoft.Json;
using System.Net;
using System.Net.Http.Json;
using System.Text;

namespace UserIntegrationTests
{
    public class UserIntegrationTests
    {
        private readonly HttpClient _httpClient;

        public UserIntegrationTests()
        {
            _httpClient = new CustomWebApplicationFactory<Program>().CreateClient();
        }

        [Fact]
        public async void GivenExistingId_WhenUsingGetRequest_ShouldReturn_Ok()
        {
            //Arrange
            var userId = Guid.Parse("A825BD63-F0DB-4CB1-8FB4-AD698EF7E23B");

            //Act
            var response = await _httpClient.GetAsync($"/api/v1.0/User/{userId}");
            var result = await _httpClient.GetFromJsonAsync<UserResponseModel>(
                        $"/api/v1/User/{userId}");

            //Assert
            response.StatusCode.Should().Be(HttpStatusCode.OK);
            result.Should().NotBeNull();
            result.Should().BeOfType<UserResponseModel>();
        }

        [Fact]
        public async void GivenBadId_WhenUsingGetRequest_ShouldReturn_NotFound()
        {
            //Arrange
            var userId = Guid.Parse("A825BD63-F0DB-4CB1-8FB4-AD698EF7E2DD");

            //Act
            var response = await _httpClient.GetAsync($"/api/v1/User/{userId}");

            //Assert
            response.StatusCode.Should().Be(HttpStatusCode.BadRequest);
        }

        [Fact]
        public async void WhenRequestGetAllUsers_Should_Return_OK()
        {
            //Act
            var response = await _httpClient.GetAsync($"/api/v1/User");
            var result = await response.Content.ReadAsStringAsync();

            //Assert
            response.StatusCode.Should().Be(HttpStatusCode.OK);
            result.Should().NotBeNull();
            result.Should().NotBeEmpty();
        }

        [Fact]
        public async void WhenDeletingAUser_GivenCorrectId_ShouldReturn_OK()
        {
            //arrange
            var userId = Guid.Parse("A825BD63-F0DB-4CB1-8FB4-AD698EF7E23B");
            //act
            var response = await _httpClient.DeleteAsync($"/api/v1/User/{userId}");
            //assert
            response.StatusCode.Should().Be(HttpStatusCode.OK);
        }

        [Fact]
        public async void WhenDeletingAUser_GivenWrongId_ShouldReturn_BadRequest()
        {
            //arrange
            var userId = Guid.Parse("A825BD63-F0DB-4CB1-8FB4-AD698EF7E2DD");
            //act
            var response = await _httpClient.DeleteAsync($"/api/v1/User/{userId}");
            //assert
            response.StatusCode.Should().Be(HttpStatusCode.BadRequest);
        }

        [Fact]
        public async void WhenAddingAUser_GivenCorrectData_ShouldReturn_Created()
        {
            //arrange
            var user = new UserRequestModel()
            {
                UserTypeId = Guid.Parse("430F6E13-FF63-461F-9F24-4054B2D68BEE"),
                Email = "email@email.com",
                Password = "Parola1234!"
            };
            var serializedObject = JsonConvert.SerializeObject(user);

            var httpContent = new StringContent(serializedObject, Encoding.UTF8, "application/json");
            //act

            var response = await _httpClient.PostAsync($"/api/v1/User", httpContent);
            var result = JsonConvert.DeserializeObject<ApiResponse<UserResponseModel>>(await response.Content.ReadAsStringAsync());

            //assert
            response.StatusCode.Should().Be(HttpStatusCode.Created);
            result.Should().NotBeNull();
            result.Should().BeOfType<ApiResponse<UserResponseModel>>();
            result?.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async void WhenAddingAUser_GivenBadData_ShouldReturn_BadRequest()
        {
            //arrange
            var user = new UserRequestModel()
            {
                UserTypeId = Guid.Empty,
                Email = "email@email.com",
                Password = "Parola1234"
            };
            var serializedObject = JsonConvert.SerializeObject(user);

            var httpContent = new StringContent(serializedObject, Encoding.UTF8, "application/json");
            //act

            var response = await _httpClient.PostAsync($"/api/v1/User", httpContent);

            //assert
            response.StatusCode.Should().Be(HttpStatusCode.BadRequest);
        }

        [Fact]
        public async void WhenUpdatingAUser_GivenCorrectData_ShouldReturn_OK()
        {
            //arrange
            var user = new User()
            {
                Id = Guid.Parse("15BF17E5-2D7D-42B5-8EBF-FC99B2D04D19"),
                UserTypeId = Guid.Parse("430F6E13-FF63-461F-9F24-4054B2D68BEE"),
                Email = "email@email.com",
                UserType = new UserType()
                {
                    Id = Guid.Parse("430F6E13-FF63-461F-9F24-4054B2D68BEE"),
                    Type = "Doctor"
                },
                Password = "Parola1234"
            };
            var serializedObject = JsonConvert.SerializeObject(user);

            var httpContent = new StringContent(serializedObject, Encoding.UTF8, "application/json");
            //act

            using var response = await _httpClient.PutAsync($"/api/v1/User", httpContent);
            var result = JsonConvert.DeserializeObject<ApiResponse<UserResponseModel>>(await response.Content.ReadAsStringAsync());

            //assert
            response.StatusCode.Should().Be(HttpStatusCode.OK);
            result.Should().NotBeNull();
            result.Should().BeOfType<ApiResponse<UserResponseModel>>();
            result?.Succeeded.Should().BeTrue();
        }

        [Fact]
        public async void WhenUpdatingAUser_GivenBadData_ShouldReturn_BadRequest()
        {
            //arrange
            var user = new User()
            {
                Id = Guid.Parse("A5BF17E5-2D7D-42B5-8EBF-FC99B2D04D15"),
                UserTypeId = Guid.Parse("430F6E13-FF63-461F-9F24-4054B2D68BEE"),
                Email = "email@email.com",
                Password = "Parola1234"
            };
            var serializedObject = JsonConvert.SerializeObject(user);

            var httpContent = new StringContent(serializedObject, Encoding.UTF8, "application/json");
            //act

            var response = await _httpClient.PutAsync($"/api/v1/User", httpContent);

            //assert
            response.StatusCode.Should().Be(HttpStatusCode.BadRequest);
        }
    }
}