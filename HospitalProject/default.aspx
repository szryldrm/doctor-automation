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
                        <h4>$34650</h4>
                        <span class="text-muted">Aylık Muayene Ücreti</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="white-box">
                <div class="r-icon-stats">
                    <i class="ti-wallet bg-inverse"></i>
                    <div class="bodystate">
                        <h4>$34650</h4>
                        <span class="text-muted">Total Muayene Ücreti</span>
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
                    <table id="myTable" class="table table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Patient</th>
                                <th>Doctor</th>
                                <th>Date</th>
                                <th>Charges</th>
                                <th>Discount</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Tiger Nixon</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$610</td>
                                <td>15%</td>
                                <td>$320</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Garrett Winters</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$630</td>
                                <td>15%</td>
                                <td>$170</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Ashton Cox</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$660</td>
                                <td>15%</td>
                                <td>$860</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Cedric Kelly</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$220</td>
                                <td>15%</td>
                                <td>$433</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Airi Satou</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$330</td>
                                <td>15%</td>
                                <td>$162</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Brielle Williamson</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$610</td>
                                <td>15%</td>
                                <td>$372</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>Herrod Chandler</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$590</td>
                                <td>15%</td>
                                <td>$137</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>Rhona Davidson</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$550</td>
                                <td>15%</td>
                                <td>$327</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>Colleen Hurst</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$390</td>
                                <td>15%</td>
                                <td>$205</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>Sonya Frost</td>
                                <td>Steve Gection</td>
                                <td>2008/12/13</td>
                                <td>$230</td>
                                <td>15%</td>
                                <td>$103</td>
                            </tr>
                            <tr>
                                <td>31</td>
                                <td>Tiger Nixon</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$610</td>
                                <td>15%</td>
                                <td>$320</td>
                            </tr>
                            <tr>
                                <td>28</td>
                                <td>Garrett Winters</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$630</td>
                                <td>15%</td>
                                <td>$170</td>
                            </tr>
                            <tr>
                                <td>73</td>
                                <td>Ashton Cox</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$660</td>
                                <td>15%</td>
                                <td>$860</td>
                            </tr>
                            <tr>
                                <td>44</td>
                                <td>Cedric Kelly</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$220</td>
                                <td>15%</td>
                                <td>$433</td>
                            </tr>
                            <tr>
                                <td>95</td>
                                <td>Airi Satou</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$330</td>
                                <td>15%</td>
                                <td>$162</td>
                            </tr>
                            <tr>
                                <td>76</td>
                                <td>Brielle Williamson</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$610</td>
                                <td>15%</td>
                                <td>$372</td>
                            </tr>
                            <tr>
                                <td>67</td>
                                <td>Herrod Chandler</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$590</td>
                                <td>15%</td>
                                <td>$137</td>
                            </tr>
                            <tr>
                                <td>83</td>
                                <td>Rhona Davidson</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$550</td>
                                <td>15%</td>
                                <td>$327</td>
                            </tr>
                            <tr>
                                <td>19</td>
                                <td>Colleen Hurst</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$390</td>
                                <td>15%</td>
                                <td>$205</td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td>Sonya Frost</td>
                                <td>Steve Gection</td>
                                <td>2008/12/13</td>
                                <td>$230</td>
                                <td>15%</td>
                                <td>$103</td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td>Tiger Nixon</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$610</td>
                                <td>15%</td>
                                <td>$320</td>
                            </tr>
                            <tr>
                                <td>25</td>
                                <td>Garrett Winters</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$630</td>
                                <td>15%</td>
                                <td>$170</td>
                            </tr>
                            <tr>
                                <td>39</td>
                                <td>Ashton Cox</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$660</td>
                                <td>15%</td>
                                <td>$860</td>
                            </tr>
                            <tr>
                                <td>41</td>
                                <td>Cedric Kelly</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$220</td>
                                <td>15%</td>
                                <td>$433</td>
                            </tr>
                            <tr>
                                <td>53</td>
                                <td>Airi Satou</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$330</td>
                                <td>15%</td>
                                <td>$162</td>
                            </tr>
                            <tr>
                                <td>65</td>
                                <td>Brielle Williamson</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$610</td>
                                <td>15%</td>
                                <td>$372</td>
                            </tr>
                            <tr>
                                <td>77</td>
                                <td>Herrod Chandler</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$590</td>
                                <td>15%</td>
                                <td>$137</td>
                            </tr>
                            <tr>
                                <td>80</td>
                                <td>Rhona Davidson</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$550</td>
                                <td>15%</td>
                                <td>$327</td>
                            </tr>
                            <tr>
                                <td>90</td>
                                <td>Colleen Hurst</td>
                                <td>Steve Gection</td>
                                <td>2011/04/25</td>
                                <td>$390</td>
                                <td>15%</td>
                                <td>$205</td>
                            </tr>
                            <tr>
                                <td>100</td>
                                <td>Sonya Frost</td>
                                <td>Steve Gection</td>
                                <td>2008/12/13</td>
                                <td>$230</td>
                                <td>15%</td>
                                <td>$103</td>
                            </tr>
                        </tbody>
                    </table>
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
