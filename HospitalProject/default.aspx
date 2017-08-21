<%@ Page Title="" Language="C#" MasterPageFile="~/patient.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="HospitalProject._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentHead" runat="server">
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentBreadcrump" runat="server">
    <h4 class="page-title">Ana Sayfa</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentIcerik" runat="server">
    <div class="row">
        <div class="col-md-3 col-sm-6">
            <div class="white-box">
                <div class="r-icon-stats">
                    <i class="ti-user bg-megna"></i>
                    <div class="bodystate">
                        <h4>370</h4>
                        <span class="text-muted">Aylık Randevu</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="white-box">
                <div class="r-icon-stats">
                    <i class="ti-user bg-inverse"></i>
                    <div class="bodystate">
                        <h4>342</h4>
                        <span class="text-muted">Total Randevu</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="white-box">
                <div class="r-icon-stats">
                    <i class="ti-wallet bg-megna"></i>
                    <div class="bodystate">
                        <h4>$34</h4>
                        <span class="text-muted">Aylık Ödenen</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="white-box">
                <div class="r-icon-stats">
                    <i class="ti-wallet bg-inverse"></i>
                    <div class="bodystate">
                        <h4>$34</h4>
                        <span class="text-muted">Total Ödenen</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
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
                                        <th>Doktor</th>
                                        <th>Detay</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# Container.ItemIndex + 1 %></td>
                                <td><%# Eval("ex_Tarih", "{0:dd/MM/yyyy}") %></td>
                                <td><%# Eval("dp_Name") %></td>
                                <td><%# Eval("dt_NameSurname") %></td>
                                <td><a href="#">Görüntüle</a></td>
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
    <script src="../assets/plugins/bower_components/datatables/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#myTable').DataTable({
                language: {
                    url: '//cdn.datatables.net/plug-ins/1.10.15/i18n/Turkish.json'
                }
            });
        });
    </script>
    <script src="../assets/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</asp:Content>
