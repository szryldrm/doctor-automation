<%@ Page Title="" Language="C#" MasterPageFile="~/doctors/doctor.Master" AutoEventWireup="true" CodeBehind="dtDashboard.aspx.cs" Inherits="HospitalProject.doctors.dtDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentBreadcrump" runat="server">
    <h4 class="page-title">Ana Sayfa</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentIcerik" runat="server">
    <div class="row">
        <div class="col-md-4">
            <div class="white-box">
                <h3 class="box-title m-b-0">Yeni Oluştur</h3>
                <div class="row">
                    <div class="col-sm-12 col-xs-12">
                        <div>
                            <div class="form-group">
                                <label for="inputAdSoyad">Hasta TC</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-user"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputTC" placeholder="Hastanın TC Numarasını Giriniz">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail">Açıklama</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-email"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputAciklama" placeholder="Açıklama Giriniz">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputMeslek">Sonuç</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-id-badge"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputSonuc" placeholder="Sonuç Giriniz">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTel">Ücret</label>
                                <div class="input-group">
                                    <div class="input-group-addon"><i class="ti-mobile"></i></div>
                                    <input type="text" class="form-control" runat="server" id="inputUcret" placeholder="Ücret Giriniz">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info waves-effect waves-light m-r-10" id="btnKaydet" onserverclick="btnKaydet_ServerClick" runat="server">Kaydet</button>

                            <div class="form-group text-center m-t-20">
                                <div class="col-xs-12">
                                    <asp:Panel ID="alertDiv" runat="server" Visible="false">
                                        <asp:Label ID="lblAlert" runat="server" />
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="white-box">
                <h3 class="box-title m-b-0">Geçmiş Randevular</h3>
                <hr>
                <div class="table-responsive">
                    <asp:Repeater ID="rptPastExamine" runat="server">
                        <HeaderTemplate>
                            <table id="myTable" class="table table-striped color-table info-table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Tarih</th>
                                        <th>Bölüm</th>
                                        <th>Hasta Adı</th>
                                        <th><i class="ti-settings"></i></th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# Container.ItemIndex + 1 %></td>
                                <td><%# Eval("ex_Tarih", "{0:dd/MM/yyyy}") %></td>
                                <td><%# Eval("dp_Name") %></td>
                                <td><%# Eval("pt_NameSurname") %></td>
                                <td><a href='<%#Eval("ex_ID", "DoctorDetayRandevu.aspx?detayid={0}")%>'>Düzenle</a></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                       </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="contentJS" runat="server">
</asp:Content>
