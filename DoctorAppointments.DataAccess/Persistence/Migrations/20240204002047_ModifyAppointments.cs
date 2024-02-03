using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace DoctorAppointments.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class ModifyAppointments : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {

            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "Appointments",
                type: "integer",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.InsertData(
                table: "MedicalFacilities",
                columns: new[] { "Id", "CityId", "Name" },
                values: new object[,]
                {
                    { new Guid("45bdfdd5-8631-4f55-ad58-aa4d62f6a0d4"), new Guid("e2eba520-92a8-11ed-a93a-ffa9553478f9"), "Regina Maria" },
                    { new Guid("4da05e2d-f887-466c-80ad-89cf1c0a0e8f"), new Guid("e2eba520-92a8-11ed-a93a-ffa9553478f9"), "Arcadia" }
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "MedicalFacilities",
                keyColumn: "Id",
                keyValue: new Guid("45bdfdd5-8631-4f55-ad58-aa4d62f6a0d4"));

            migrationBuilder.DeleteData(
                table: "MedicalFacilities",
                keyColumn: "Id",
                keyValue: new Guid("4da05e2d-f887-466c-80ad-89cf1c0a0e8f"));

            migrationBuilder.DropColumn(
                name: "Status",
                table: "Appointments");

            migrationBuilder.RenameColumn(
                name: "Description",
                table: "Billings",
                newName: "Descriprion");
        }
    }
}
