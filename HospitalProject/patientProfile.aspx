<%@ Page Title="" Language="C#" MasterPageFile="~/patient.Master" AutoEventWireup="true" CodeBehind="patientProfile.aspx.cs" Inherits="HospitalProject.patientProfile" %>

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
                        <img width="100%" alt="user" src="../assets/plugins/images/big/img2.jpg">
                    </div>
                    <div class="user-btm-box">
                        <!-- .row -->
                        <div class="row text-center m-t-10">
                            <div class="col-md-6 b-r">
                                <strong>Name</strong>
                                <p>Jonathan Doe</p>
                            </div>
                            <div class="col-md-6">
                                <strong>Occupation</strong>
                                <p>Engineer</p>
                            </div>
                        </div>
                        <!-- /.row -->
                        <hr>
                        <!-- .row -->
                        <div class="row text-center m-t-10">
                            <div class="col-md-6 b-r">
                                <strong>Email ID</strong>
                                <p>jondoe@gmail.com</p>
                            </div>
                            <div class="col-md-6">
                                <strong>Phone</strong>
                                <p>+123 456 789</p>
                            </div>
                        </div>
                        <!-- /.row -->
                        <hr>
                        <!-- .row -->
                        <div class="row text-center m-t-10">
                            <div class="col-md-12">
                                <strong>Address</strong>
                                <p>
                                    E104, Dharti-2, Chandlodia Ahmedabad
                                            <br>
                                    Gujarat, India.
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
