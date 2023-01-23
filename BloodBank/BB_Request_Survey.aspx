﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BB_Request_Survey.aspx.cs" Inherits="BloodBank.BB_Request_Survey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title>Blood Request Form | Admin</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alegreya+Sans" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Black+Han+Sans" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Capriola" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Francois+One" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gafata" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gayathri" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Gothic+A1" />
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css" />
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" />
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css" />
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css" />
    <link rel="stylesheet" href="assets/css/login-full-page-bs4.css" />
    <link rel="stylesheet" href="assets/css/Modal-Login-form.css" />
    <link rel="stylesheet" href="assets/css/Table-With-Search-1.css" />
    <link rel="stylesheet" href="assets/css/Table-With-Search.css" />
</head>
<body id="page-top">
    <form runat="server" id="wrapper">
        <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0" style="background: rgb(119,40,32);">
            <div class="container-fluid d-flex flex-column p-0"><img style="font-size: 12px;line-height: 23px;border-width: -14px;margin-top:50px;height: 97px;" src="assets/img/solologo.png"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"></div>
                    <div class="sidebar-brand-text mx-3"><span style="font-size: 25px;">LifePoints</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item"><a class="nav-link active" href="BB_Dashboard.aspx"><i class="fas fa-tachometer-alt" style="font-size: 20px;"></i><span style="font-size: 15px;">Dashboard</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="Admin_BlogPost.aspx"><i class="fas fa-tachometer-alt" style="font-size: 20px;"></i><span style="font-size: 15px;">Blog Post</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="BB_BloodTransaction.aspx"><i class="fa fa-tint" style="font-size: 20px;"></i><span style="font-size: 15px;">Blood Transaction</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="Admin_Reports.aspx"><i class="fa fa-list-ul" style="font-size: 20px;"></i><span style="font-size: 15px;">Reports</span></a></li>    
                    <li class="nav-item"><a class="nav-link" href="BB_ActionLogs.aspx"><i class="fa fa-list-ul" style="font-size: 20px;"></i><span style="font-size: 15px;">Action Logs</span></a></li>

                </ul>
                <div class="text-center d-none d-md-inline"></div>
            </div>
        </nav>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content" style="background: linear-gradient(rgb(249,243,243) 28%, white), #ffffff;">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid">
                        <button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <div class="form-inline d-none d-sm-inline-block mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <input class="form-control-plaintext" type="text" value="" readonly="" style="font-size: 40px;">
                        </div>
                        <ul class="navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown no-arrow mx-1">
                                <div class="nav-item dropdown no-arrow">
                                    
                                </div>
                            </li>
                            <div class="d-none d-sm-block topbar-divider"></div>
                            <li class="nav-item dropdown no-arrow">
                                <div class="nav-item dropdown no-arrow">
                                    <a class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false" href="#"><span class="d-none d-lg-inline mr-2 text-gray-600 small" runat="server" id="username"></span>
                                        <img class="border rounded-circle img-profile" src="assets/img/user.png" /></a>
                                    <div class="dropdown-menu shadow dropdown-menu-end animated--grow-in">
                                        <a class="dropdown-item" href="BB_Profile.aspx"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" runat="server" id="BtnLogout" autopostback="true" onserverclick="BtnLogout_ServerClick"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a>

                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="container-fluid d-flex" style="justify-content: center; align-items: center;">
                    <div class="card text-center" style="max-height: 800px; height: 800px; width: 80%;">
                        <div class="card-header">
                            <h2>BLOOD REQUEST FORM</h2>

                        </div>
                        <div class="card-body">
                            <div style="max-height: 600px; overflow: auto;">
                               
                                <table style="text-align: left; width: 50%; margin: auto">
                                    <tr>
                                        <td>Family name:</td>
                                        <td>
                                   
                                            <asp:TextBox runat="server"  Class="form-control" type="text" ID="familyname" name="familyname" required="" /></td>
                                     </tr>
                                    <tr>
                                        <td>First name:</td>
                                        <td>
                                            <asp:TextBox runat="server"   Class="form-control" type="text" ID="firstname" name="firstname" required="" /></td>
                                    </tr>
                                    <tr>
                                        <td>Middle name:</td>
                                        <td>
                                            <asp:TextBox runat="server"  Class="form-control" type="text" ID="middlename" name="midname" required="" /></td>
                                    </tr>
                                     <tr>
                                        <td>Gender:</td>
                                        <td>
                                            <asp:DropDownList ID="Sex" runat="server" Class="form-control">
                                                <asp:ListItem>Female</asp:ListItem>
                                                <asp:ListItem>Male</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td></td>
                                    </tr>
                                    <tr><td>Date of birth:</td></tr>
                                    <tr>
                                        <td>Month:</td>
                                        <td>
                                            <asp:DropDownList ID="month" runat="server" Class="form-control">
                                                <asp:ListItem>January</asp:ListItem>
                                                <asp:ListItem>Febraury</asp:ListItem>
                                                <asp:ListItem>March</asp:ListItem>
                                                <asp:ListItem>April</asp:ListItem>
                                                <asp:ListItem>May</asp:ListItem>
                                                <asp:ListItem>June</asp:ListItem>
                                                <asp:ListItem>July</asp:ListItem>
                                                <asp:ListItem>August</asp:ListItem>
                                                <asp:ListItem>September</asp:ListItem>
                                                <asp:ListItem>October</asp:ListItem>
                                                <asp:ListItem>November</asp:ListItem>
                                                <asp:ListItem>December</asp:ListItem>
                                            </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>

                                        <td>Day:</td>
                                        <td>
                                            <asp:TextBox runat="server" Class="form-control" type="number" ID="day" name="dateofbirth" required="" />

                                        </td>
                                        </tr>
                                    <tr>
                                        <td>Year:</td>
                                        <td>
                                            <asp:TextBox runat="server" Class="form-control" type="year" ID="year" name="dateofbirth" required="" /></td>
                                         
                                    </tr>
                                    <tr>
                                        <td></td>
                                    </tr>
                                   
                                    
                                    <tr>
                                        <td>Blood Type Request:</td>
                                        <td>
                                            <asp:DropDownList ID="Bloodtype" runat="server" Class="form-control" >
                                                <asp:ListItem Value="Aplus">A+</asp:ListItem>
                                                <asp:ListItem Value="Anega">A-</asp:ListItem>
                                                <asp:ListItem Value="Bplus">B+</asp:ListItem>
                                                <asp:ListItem Value="Bnega">B-</asp:ListItem>
                                                <asp:ListItem Value="ABplus">AB+</asp:ListItem>
                                                <asp:ListItem Value="ABnega">AB-</asp:ListItem>
                                                <asp:ListItem Value="Oplus">O+</asp:ListItem>
                                                <asp:ListItem Value="Onega">O-</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                            
                                     </tr>
                                    <tr>
                                        <td>
                                            <br />
                                            Residential Address:.</td>
                                    </tr>
                                    <tr>
                                        

                                        <td>Street/Sector: </td>
                                        <td>
                                            <asp:TextBox runat="server" Class="form-control" type="text" ID="street" name="resaddress" required="" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Barangay:</td>
                                        <td>
                                            <asp:TextBox runat="server"  Class="form-control" type="text" ID="barangay" name="posaddress" required="" ></asp:TextBox></td>
                                    </tr>
                                     <tr>
                                        <td>City:</td>
                                        <td>
                                            <asp:TextBox runat="server"  Class="form-control" type="text" ID="city" name="city" required="" ></asp:TextBox></td>
                                    </tr>
                                     <tr>
                                        <td>Province:</td>
                                        <td>
                                            <asp:TextBox runat="server"  Class="form-control" type="text" ID="province" name="posaddress" required="" /></td>
                                    </tr>
                                    <tr>
                                        <td>ZIP Code:</td>
                                        <td>
                                            <asp:TextBox runat="server"  Class="form-control" type="number" ID="zip" name="posaddress" required="" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <br />
                                            Telephone No.</td>
                                    </tr>
                                    <tr>
                                        <td>Home:</td>
                                        <td>
                                            <asp:TextBox runat="server" Class="form-control" type="number" ID="Home" name="home" required="" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Mobile:</td>
                                        <td>
                                            <asp:TextBox runat="server"  Class="form-control" type="number" ID="Mobile" name="mobile" required="" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Email Address:</td>
                                        <td>
                                            <asp:TextBox runat="server" Class="form-control" type="email" ID="Email" name="email"  required=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                             </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        </tr>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer text-muted">
                            <div runat="server" id="SurveyGroup" style="display: none;">
                                 </div>
                            <div runat="server" id="BloodGroup" style="display: none;">
                                </div>
                            <asp:Button runat="server" CssClass="btn btn-primary  btn-signin" style="background: rgb(119,40,32);margin-top: 5px;" ID="BackButton" OnClick="BackButton_Click" Text="Back" type="reset" UseSubmitBehavior="false" AutoPostBack="true" />
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © TechySavor 2022</span></div>
                </div>
            </footer>
        </div>
        <a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </form>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/login-full-page-bs4.js"></script>
    <script src="assets/js/login-full-page-bs4-1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/Table-With-Search.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>
