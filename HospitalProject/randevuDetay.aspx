<%@ Page Title="" Language="C#" MasterPageFile="~/patient.Master" AutoEventWireup="true" CodeBehind="randevuDetay.aspx.cs" Inherits="HospitalProject.randevuDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentBreadcrump" runat="server">
    <h4 class="page-title">Randevu Detay</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentIcerik" runat="server">
    <div class="row">
        <div class="col-md-12 col-xs-12">
            <div class="white-box">
                    <h3 class="page-title text-center"><strong>Randevu Detayınız</strong></h3>
                <div class="user-btm-box">
                    <!-- .row -->
                    <hr />
                    <div class="row text-center m-t-10">
                        <div class="col-md-6 b-r">
                            <strong>Açıklama</strong>
                            <p>
                                <label id="lblAciklama" runat="server"></label>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <strong>Sonuç</strong>
                            <p>
                                <label id="lblSonuc" runat="server"></label>
                            </p>
                        </div>
                    </div>
                    <!-- /.row -->
                    <hr>
                    <!-- .row -->
                    <div class="row text-center m-t-10">
                        <div class="col-md-6 b-r">
                            <strong>Tarih</strong>
                            <p>
                                <label id="lblTarih" runat="server"></label>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <strong>Ücret</strong>
                            <p>
                                <label id="lblUcret" runat="server"></label>
                            </p>
                        </div>
                    </div>
                    <!-- /.row -->
                    <hr>
                    <!-- .row -->
                    <div class="row text-center m-t-10">
                        <div class="col-md-12">
                            <strong>Doktor</strong>
                            <p>
                                <label id="lblDoktor" runat="server"></label>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentJS" runat="server">
</asp:Content>
