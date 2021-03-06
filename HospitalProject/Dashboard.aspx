﻿<%@ Page Title="" Language="C#" MasterPageFile="~/patient.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="HospitalProject.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contentHead" runat="server">
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentBreadcrump" runat="server">
    <h4 class="page-title">Ana Sayfa</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentIcerik" runat="server">
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
                                        <th>Detay</th>
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
                                <td><%# Eval("dt_NameSurname") %></td>
                                <td><a href='<%#Eval("ex_ID", "randevuDetay.aspx?detayid={0}")%>'>Görüntüle</a></td>
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
