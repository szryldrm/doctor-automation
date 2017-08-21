<%@ Page Title="" Language="C#" MasterPageFile="~/patient.Master" AutoEventWireup="true" CodeBehind="updateProfile.aspx.cs" Inherits="HospitalProject.updateProfile" %>

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
                                <label for="inputAdSoyad">Ad Soyad</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-user"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputAdSoyad" placeholder="Ad Soyad">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail">Cinsiyet</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-email"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputCinsiyet" placeholder="Cinsiyet">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputMeslek">Meslek</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-id-badge"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputMeslek" placeholder="Meslek">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTel">Telefon</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-mobile"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputTel" placeholder="Telefon">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputAdres">Adres</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-home"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputAdres" placeholder="Adres">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info waves-effect waves-light m-r-10" id="btnKaydet" onserverclick="btnKaydet_ServerClick" runat="server">Kaydet</button>

                            <div class="form-group text-center m-t-20">
                                <div class="col-xs-12">
                                    <asp:panel id="alertDiv" runat="server" visible="false"><asp:Label ID="lblAlert" runat="server"/></asp:panel>
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
                            <strong>Ad Soyad</strong>
                            <p>
                                <label id="lblAdSoyad" runat="server"></label>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <strong>Meslek</strong>
                            <p>
                                <label id="lblMeslek" runat="server">Test</label></p>
                        </div>
                    </div>
                    <!-- /.row -->
                    <hr>
                    <!-- .row -->
                    <div class="row text-center m-t-10">
                        <div class="col-md-6 b-r">
                            <strong>Cinsiyet</strong>
                            <p>
                                <label id="lblCinsiyet" runat="server">Test</label></p>
                        </div>
                        <div class="col-md-6">
                            <strong>Telefon</strong>
                            <p>
                                <label id="lblTel" runat="server">Test</label></p>
                        </div>
                    </div>
                    <!-- /.row -->
                    <hr>
                    <!-- .row -->
                    <div class="row text-center m-t-10">
                        <div class="col-md-12">
                            <strong>Adres</strong>
                            <p>
                                <label id="lblAdres" runat="server">Test</label>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentJS" runat="server">
    <%--    <script>
$(function() {
    $('#inputAdSoyad').on('change keyup', function() {
        var myVal, newVal = $.makeArray($('#inputAdSoyad').map(function(){
        if (myVal = $(this).val()) {
            return(myVal);
        }
    }))
        $('#lblAdSoyad').text(newVal)
                                              
  });
});
    </script>--%>
</asp:Content>
