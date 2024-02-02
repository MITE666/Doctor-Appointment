﻿// <auto-generated />
using System;
using DoctorAppointments.DataAccess.Persistence;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace DoctorAppointments.DataAccess.Migrations
{
    [DbContext(typeof(DatabaseContext))]
    [Migration("20221213131404_MedicationStockChanges")]
    partial class MedicationStockChanges
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.0")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            NpgsqlModelBuilderExtensions.UseIdentityByDefaultColumns(modelBuilder);

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Appointment", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<DateTime>("Date")
                        .HasColumnType("timestamp with time zone");

                    b.Property<Guid>("DoctorId")
                        .HasColumnType("uuid");

                    b.Property<Guid>("MedicalFacilityId")
                        .HasColumnType("uuid");

                    b.Property<Guid>("PacientId")
                        .HasColumnType("uuid");

                    b.HasKey("Id");

                    b.HasIndex("DoctorId");

                    b.HasIndex("MedicalFacilityId");

                    b.HasIndex("PacientId");

                    b.ToTable("Appointments");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Billing", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<Guid>("AppointmentId")
                        .HasColumnType("uuid");

                    b.Property<string>("Descriprion")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<int>("Price")
                        .HasColumnType("integer");

                    b.HasKey("Id");

                    b.HasIndex("AppointmentId");

                    b.ToTable("Billings");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.City", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("Id");

                    b.ToTable("Cities");

                    b.HasData(
                        new
                        {
                            Id = new Guid("aa0016c4-1540-4138-a2fe-eee4f3b2516c"),
                            Name = "Iasi"
                        },
                        new
                        {
                            Id = new Guid("1e3e68c8-5d30-4210-93fd-6eca28a5b012"),
                            Name = "Bucuresti"
                        },
                        new
                        {
                            Id = new Guid("a91474ca-eeeb-4f96-9a43-54dab1dc961f"),
                            Name = "Vaslui"
                        },
                        new
                        {
                            Id = new Guid("37b677a1-229e-4df4-8c2a-694113d004ef"),
                            Name = "Galati"
                        },
                        new
                        {
                            Id = new Guid("9170514b-575f-4cdd-8fbe-d628919df13e"),
                            Name = "Constanta"
                        });
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Doctor", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("CNP")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<Guid>("MedicalFacilityId")
                        .HasColumnType("uuid");

                    b.Property<string>("ProfilePicture")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<Guid>("SpecialtyId")
                        .HasColumnType("uuid");

                    b.Property<Guid>("UserId")
                        .HasColumnType("uuid");

                    b.HasKey("Id");

                    b.HasIndex("CNP")
                        .IsUnique();

                    b.HasIndex("MedicalFacilityId");

                    b.HasIndex("SpecialtyId");

                    b.HasIndex("UserId");

                    b.ToTable("Doctors");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.MedicalFacility", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<Guid>("CityId")
                        .HasColumnType("uuid");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("Id");

                    b.HasIndex("CityId");

                    b.ToTable("MedicalFacilities");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.MedicationStock", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<Guid>("MedicalFacilityId")
                        .HasColumnType("uuid");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<decimal>("Price")
                        .HasColumnType("numeric");

                    b.Property<int?>("Quantity")
                        .HasColumnType("integer");

                    b.HasKey("Id");

                    b.HasIndex("MedicalFacilityId");

                    b.ToTable("MedicationStocks");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Pacient", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Allergies")
                        .HasColumnType("text");

                    b.Property<DateTime>("BirthDate")
                        .HasColumnType("timestamp with time zone");

                    b.Property<string>("CNP")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<Guid?>("CityId")
                        .HasColumnType("uuid");

                    b.Property<string>("FirstName")
                        .HasColumnType("text");

                    b.Property<string>("Gender")
                        .HasColumnType("text");

                    b.Property<string>("Height")
                        .HasColumnType("text");

                    b.Property<string>("LastName")
                        .HasColumnType("text");

                    b.Property<string>("MedicalHistory")
                        .HasColumnType("text");

                    b.Property<string>("Phone")
                        .HasColumnType("text");

                    b.Property<string>("ProfilePicture")
                        .HasColumnType("text");

                    b.Property<Guid>("UserId")
                        .HasColumnType("uuid");

                    b.Property<string>("Weight")
                        .HasColumnType("text");

                    b.HasKey("Id");

                    b.HasIndex("CNP")
                        .IsUnique();

                    b.HasIndex("CityId");

                    b.HasIndex("UserId");

                    b.ToTable("Pacients");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Specialty", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("Id");

                    b.ToTable("Specialties");

                    b.HasData(
                        new
                        {
                            Id = new Guid("ba9c9af3-a17a-4863-99d1-75892e6987ca"),
                            Name = "Dermatology"
                        },
                        new
                        {
                            Id = new Guid("20d8ed61-3b25-4b89-8724-bfff53dd8c43"),
                            Name = "Emergency medicine"
                        },
                        new
                        {
                            Id = new Guid("d2147f37-b602-4a33-b29b-a5afbf844d4f"),
                            Name = "Family medicine"
                        },
                        new
                        {
                            Id = new Guid("f2bfd52b-cbdd-4f90-afc8-d6f2bf903ab6"),
                            Name = "Ophthalmology"
                        },
                        new
                        {
                            Id = new Guid("b8cfaf4a-2be7-46b6-a30d-9156947623e9"),
                            Name = "Surgery"
                        },
                        new
                        {
                            Id = new Guid("410ba8be-0848-4fc2-9e15-19d883c0f19f"),
                            Name = "Pediatrics"
                        });
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.User", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<Guid>("UserTypeId")
                        .HasColumnType("uuid");

                    b.HasKey("Id");

                    b.HasIndex("Email")
                        .IsUnique();

                    b.HasIndex("UserTypeId");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.UserType", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Type")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("Id");

                    b.ToTable("UserTypes");

                    b.HasData(
                        new
                        {
                            Id = new Guid("8a16d3e1-dc8d-47d6-b93a-bd7a1d5824ab"),
                            Type = "Patient"
                        },
                        new
                        {
                            Id = new Guid("430f6e13-ff63-461f-9f24-4054b2d68bee"),
                            Type = "Doctor"
                        });
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Appointment", b =>
                {
                    b.HasOne("DoctorAppointments.DataAccess.Entities.Doctor", "Doctor")
                        .WithMany("Appointments")
                        .HasForeignKey("DoctorId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("DoctorAppointments.DataAccess.Entities.MedicalFacility", "MedicalFacility")
                        .WithMany()
                        .HasForeignKey("MedicalFacilityId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("DoctorAppointments.DataAccess.Entities.Pacient", "Pacient")
                        .WithMany("Appointments")
                        .HasForeignKey("PacientId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Doctor");

                    b.Navigation("MedicalFacility");

                    b.Navigation("Pacient");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Billing", b =>
                {
                    b.HasOne("DoctorAppointments.DataAccess.Entities.Appointment", "Appointment")
                        .WithMany()
                        .HasForeignKey("AppointmentId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Appointment");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Doctor", b =>
                {
                    b.HasOne("DoctorAppointments.DataAccess.Entities.MedicalFacility", "MedicalFacility")
                        .WithMany()
                        .HasForeignKey("MedicalFacilityId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("DoctorAppointments.DataAccess.Entities.Specialty", "Specialty")
                        .WithMany()
                        .HasForeignKey("SpecialtyId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("DoctorAppointments.DataAccess.Entities.User", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("MedicalFacility");

                    b.Navigation("Specialty");

                    b.Navigation("User");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.MedicalFacility", b =>
                {
                    b.HasOne("DoctorAppointments.DataAccess.Entities.City", "City")
                        .WithMany()
                        .HasForeignKey("CityId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("City");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.MedicationStock", b =>
                {
                    b.HasOne("DoctorAppointments.DataAccess.Entities.MedicalFacility", "MedicalFacility")
                        .WithMany("Medications")
                        .HasForeignKey("MedicalFacilityId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("MedicalFacility");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Pacient", b =>
                {
                    b.HasOne("DoctorAppointments.DataAccess.Entities.City", "City")
                        .WithMany()
                        .HasForeignKey("CityId");

                    b.HasOne("DoctorAppointments.DataAccess.Entities.User", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("City");

                    b.Navigation("User");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.User", b =>
                {
                    b.HasOne("DoctorAppointments.DataAccess.Entities.UserType", "UserType")
                        .WithMany()
                        .HasForeignKey("UserTypeId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("UserType");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Doctor", b =>
                {
                    b.Navigation("Appointments");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.MedicalFacility", b =>
                {
                    b.Navigation("Medications");
                });

            modelBuilder.Entity("DoctorAppointments.DataAccess.Entities.Pacient", b =>
                {
                    b.Navigation("Appointments");
                });
#pragma warning restore 612, 618
        }
    }
}
