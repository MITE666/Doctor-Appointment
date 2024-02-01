using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

#pragma warning disable CA1814 // Prefer jagged arrays over multidimensional

namespace DoctorAppointments.DataAccess.Migrations
{
    /// <inheritdoc />
    public partial class AddRegionTable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "Cities",
                keyColumn: "Id",
                keyValue: new Guid("1e3e68c8-5d30-4210-93fd-6eca28a5b012"));

            migrationBuilder.DeleteData(
                table: "Cities",
                keyColumn: "Id",
                keyValue: new Guid("37b677a1-229e-4df4-8c2a-694113d004ef"));

            migrationBuilder.DeleteData(
                table: "Cities",
                keyColumn: "Id",
                keyValue: new Guid("9170514b-575f-4cdd-8fbe-d628919df13e"));

            migrationBuilder.DeleteData(
                table: "Cities",
                keyColumn: "Id",
                keyValue: new Guid("a91474ca-eeeb-4f96-9a43-54dab1dc961f"));

            migrationBuilder.DeleteData(
                table: "Cities",
                keyColumn: "Id",
                keyValue: new Guid("aa0016c4-1540-4138-a2fe-eee4f3b2516c"));

            migrationBuilder.AddColumn<Guid>(
                name: "RegionId",
                table: "Cities",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateTable(
                name: "Regions",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    Name = table.Column<string>(type: "text", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Regions", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Cities_RegionId",
                table: "Cities",
                column: "RegionId");

            migrationBuilder.AddForeignKey(
                name: "FK_Cities_Regions_RegionId",
                table: "Cities",
                column: "RegionId",
                principalTable: "Regions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Cities_Regions_RegionId",
                table: "Cities");

            migrationBuilder.DropTable(
                name: "Regions");

            migrationBuilder.DropIndex(
                name: "IX_Cities_RegionId",
                table: "Cities");

            migrationBuilder.DropColumn(
                name: "RegionId",
                table: "Cities");

            migrationBuilder.InsertData(
                table: "Cities",
                columns: new[] { "Id", "Name" },
                values: new object[,]
                {
                    { new Guid("1e3e68c8-5d30-4210-93fd-6eca28a5b012"), "Bucuresti" },
                    { new Guid("37b677a1-229e-4df4-8c2a-694113d004ef"), "Galati" },
                    { new Guid("9170514b-575f-4cdd-8fbe-d628919df13e"), "Constanta" },
                    { new Guid("a91474ca-eeeb-4f96-9a43-54dab1dc961f"), "Vaslui" },
                    { new Guid("aa0016c4-1540-4138-a2fe-eee4f3b2516c"), "Iasi" }
                });
        }
    }
}