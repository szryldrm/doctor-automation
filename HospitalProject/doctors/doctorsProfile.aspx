<%@ Page Title="" Language="C#" MasterPageFile="~/doctors/doctor.Master" AutoEventWireup="true" CodeBehind="doctorsProfile.aspx.cs" Inherits="HospitalProject.doctors.doctorsProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentHead" runat="server">
    <style>
        .center {
            margin: 0 auto;
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentBreadcrump" runat="server">
    <h4 class="page-title">Profilim</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentIcerik" runat="server">
    <div class="row">
        <div class="center">
            <div class="col-md-3"></div>
            <div class="col-md-6 col-xs-12">
                <div class="white-box">
                    <div class="user-bg">
                        <img width="100%" alt="user" src="../assets/plugins/images/patientsLogo.png">
                    </div>
                    <div class="user-btm-box">
                        <!-- .row -->
                        <div class="row text-center m-t-10">
                            <div class="col-md-6 b-r">
                                <strong>Adı Soyadı</strong>
                                <p>
                                    <asp:label id="lblAdSoyad" runat="server"></asp:label>
                                </p>
                            </div>
                            <div class="col-md-6">
                                <strong>Bölüm</strong>
                                <p>
                                    <asp:label id="lblBolum" runat="server"></asp:label>
                                </p>
                            </div>
                        </div>
                        <!-- /.row -->
                        <hr>
                        <!-- .row -->
                        <div class="row text-center m-t-10">
                            <div class="col-md-6 b-r">
                                <strong>Cinsiyet</strong>
                                <p>
                                    <asp:label id="lblCinsiyet" runat="server"></asp:label>
                                </p>
                            </div>
                            <div class="col-md-6">
                                <strong>Telefon</strong>
                                <p>
                                    <asp:label id="lblTel" runat="server"></asp:label>
                                </p>
                            </div>
                        </div>
                        <!-- /.row -->
                        <hr>
                        <!-- .row -->
                        <div class="row text-center m-t-10">
                            <div class="col-md-12">
                                <strong>Adres</strong>
                                <p>
                                    <asp:label id="lblAdres" runat="server"></asp:label>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentJS" runat="server">
</asp:Content>
