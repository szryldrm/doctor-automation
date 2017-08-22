<%@ Page Title="" Language="C#" MasterPageFile="~/doctors/doctor.Master" AutoEventWireup="true" CodeBehind="DoctorDetayRandevu.aspx.cs" Inherits="HospitalProject.doctors.DoctorDetayRandevu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentBreadcrump" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentIcerik" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="white-box">
                <h3 class="box-title m-b-0">Profil Ayarları</h3>
                <p class="text-muted m-b-30 font-13">Profilimi Düzenle </p>
                <div class="row">
                    <div class="col-sm-12 col-xs-12">
                        <div>
                            <div class="form-group">
                                <label for="inputAdSoyad">Açıklama</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-user"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputAciklama" placeholder="Açıklama">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail">Sonuç</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-email"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputSonuc" placeholder="Sonuç">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputMeslek">Tarih</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-id-badge"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputTarih" placeholder="Tarih">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTel">Ücret</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-mobile"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputUcret" placeholder="Ücret">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info waves-effect waves-light m-r-10" id="btnKaydet" onserverclick="btnKaydet_ServerClick" runat="server">Kaydet</button>

                            <div class="form-group text-center m-t-20">
                                <div class="col-xs-12">
                                    <asp:Panel ID="alertDiv" runat="server" Visible="false">
                                        <asp:Label ID="lblAlert" runat="server" /></asp:Panel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-xs-12">
            <div class="white-box">
                <div class="user-bg">
                    <img width="100%" alt="user" src="../assets/plugins/images/patientsLogo.png">
                </div>
                <div class="user-btm-box">
                    <!-- .row -->
                    <div class="row text-center m-t-10">
                        <div class="col-md-6 b-r">
                            <strong>Açiklama</strong>
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
                            <strong>Hasta Adı</strong>
                            <p>
                                <label id="lblHastaAdi" runat="server"></label>
                            </p>
                        </div>
                    </div>
                    <hr />
                    <button type="submit" class="btn btn-danger waves-effect waves-light m-r-10 center-block" id="btnSil" onserverclick="btnSil_ServerClick" runat="server">Randevuyu Sil</button>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentJS" runat="server">
</asp:Content>
