<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donor_Survey.aspx.cs" Inherits="BloodBank.Donor_Survey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title>Dashboard - Brand</title>
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
            <div class="container-fluid d-flex flex-column p-0">
                <img style="font-size: 12px; line-height: 23px; border-width: -14px; height: 97px;" src="assets/img/vsmmclogo1.png"><a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                    <div class="sidebar-brand-icon rotate-n-15"></div>
                    <div class="sidebar-brand-text mx-3"><span style="font-size: 30px;">VSMMC</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <ul class="navbar-nav text-light" id="accordionSidebar">
                    <li class="nav-item"><a class="nav-link active" href="BB_Dashboard.aspx"><i class="fas fa-tachometer-alt" style="font-size: 20px;"></i><span style="font-size: 15px;">Dashboard</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="table.html"><i class="fas fa-table" style="font-size: 20px;"></i><span style="font-size: 15px;">Transaction Details</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="bloodtransaction.html"><i class="fa fa-tint" style="font-size: 20px;"></i><span style="font-size: 15px;">Blood Transaction</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="BB_ActionLogs.aspx"><i class="fa fa-list-ul" style="font-size: 20px;"></i><span style="font-size: 15px;">Action Log</span></a></li>
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
                            <input class="form-control-plaintext" type="text" value="Dashboard" readonly="" style="font-size: 40px;">
                        </div>
                        <ul class="navbar-nav flex-nowrap ml-auto">
                            <li class="nav-item dropdown no-arrow mx-1">
                                <div class="nav-item dropdown no-arrow">
                                    <a class="dropdown-toggle nav-link" aria-expanded="false" data-toggle="dropdown" href="#"><span class="badge badge-danger badge-counter">3+</span><i class="fas fa-bell fa-fw" style="font-size: 29px; color: rgb(119,40,32);"></i></a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-list animated--grow-in">
                                        <h6 class="dropdown-header">alerts center</h6>
                                        <a class="dropdown-item d-flex align-items-center" href="#">
                                            <div class="mr-3">
                                                <div class="bg-primary icon-circle"><i class="fas fa-tint text-white"></i></div>
                                            </div>
                                            <div>
                                                <span class="small text-gray-500">December 12, 2019</span>
                                                <p>New Blood Request</p>
                                            </div>
                                        </a><a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                                    </div>
                                </div>
                            </li>
                            <div class="d-none d-sm-block topbar-divider"></div>
                            <li class="nav-item dropdown no-arrow">
                                <div class="nav-item dropdown show no-arrow">
                                    <a class="dropdown-toggle nav-link" aria-expanded="true" data-toggle="dropdown" href="#"><span class="d-none d-lg-inline mr-2 text-gray-600 small" runat="server" id="username"></span>
                                        <img class="border rounded-circle img-profile" src="assets/img/user.png" /></a>
                                    <div class="dropdown-menu show shadow dropdown-menu-right animated--grow-in">
                                        <a class="dropdown-item" href="BB_Profile.aspx"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="container-fluid">
                    <div id="intro_survey" style="text-align: center; width: 100%; margin: auto;">
                        <p style="font-size: 25px; font-style: bold">
                            BLOOD TRANSFUSION SERVICE </br>
                    DONOR QUESTIONNAIRE </br></br>
                        </p>
                        <div style="max-height: 500px; overflow: auto;">
                            <p style="font-size: 25px; font-style: bold; margin-left: -30%">
                                Please complete this form
                            </p>
                            <table style="text-align: left; width: 50%; margin: auto">
                                <tr>
                                    <td>Panel name:</td>
                                    <td>
                                        <input type="text" id="panelname" name="panelname"></td>
                                    <td>Donor name:</td>
                                    <td>
                                        <input type="text" id="donorname" name="donorname"></td>
                                </tr>
                                <tr>
                                    <td>Family name:</td>
                                    <td>
                                        <input type="text" id="familyname" name="familyname"></td>
                                    <td>First name:</td>
                                    <td>
                                        <input type="text" id="firstname" name="firstname"></td>
                                </tr>
                                <tr>
                                    <td>Title:</td>
                                    <td>
                                        <input type="text" id="title" name="title"></td>
                                    <td>ID No:&nbsp;</td>
                                    <td>
                                        <input type="text" id="idno" name="idno"></td>
                                </tr>
                                <tr>
                                    <td>Date of birth:</td>
                                    <td>
                                        <input type="date" id="dob" name="don"></td>
                                    <td>Gender:</td>
                                    <td>
                                        <input type="text" id="gender" name="gender"></td>
                                </tr>
                                <tr>
                                    <td>Occupation:</td>
                                    <td>
                                        <input type="text" id="occupation" name="occupation"></td>
                                </tr>
                                <tr>
                                    <td>Residential Address:</td>
                                    <td>
                                        <input type="text" id="resaddress" name="resaddress"></td>
                                </tr>
                                <tr>
                                    <td>Postal Address:</td>
                                    <td>
                                        <input type="text" id="posaddress" name="posaddress"></td>
                                </tr>
                                <tr>
                                    <td></br>Telephone No.</td>
                                </tr>
                                <tr>
                                    <td>Home:</td>
                                    <td>
                                        <input type="text" id="home" name="home"></td>
                                    <td>Work:</td>
                                    <td>
                                        <input type="text" id="work" name="work"></td>
                                </tr>
                                <tr>
                                    <td>Mobile:</td>
                                    <td>
                                        <input type="text" id="mobile" name="mobile"></td>
                                </tr>
                                <tr>
                                    <td>Email Address:</td>
                                    <td>
                                        <input type="text" id="email" name="email"></td>
                                </tr>
                            </table>
                            <p style="font-size: 25px; font-style: bold; margin-left: -30%">
                                </br>
                    1 HEALTH ASSESSMENT
                            </p>
                            <p style="font-size: 20px; font-style: bold; margin-left: -20%">
                                Please tick the appropriate answer to each question
                            </p>
                            <table style="text-align: left; width: 51%; margin: auto">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>YES</td>
                                    <td>NO</td>
                                </tr>
                                <tr>
                                    <td>1.1</td>
                                    <td>Are you feeling well and in good health today?</td>
                                    <td>
                                        <input type="radio" id="1.1Y" name="rd11" value="yes" /></td>
                                    <td>
                                        <input type="radio" id="1.1N" name="rd11" value="no" /></td>
                                </tr>
                                <tr>
                                    <td>1.2</td>
                                    <td>In the last 4 hours, have you had a meal or snack?</td>
                                    <td>
                                        <input type="checkbox" id="1.2Y" name="1.2Y" value="yes"></td>
                                    <td>
                                        <input type="checkbox" id="1.2N" name="1.2N" value="no"></td>
                                </tr>
                                <tr>
                                    <td>1.3</td>
                                    <td>Have you already given blood in the last 16 weeks?</td>
                                    <td>
                                        <input type="checkbox" id="1.3Y" name="1.3Y" value="yes"></td>
                                    <td>
                                        <input type="checkbox" id="1.3N" name="1.3N" value="no"></td>
                                </tr>
                                <tr>
                                    <td>1.4</td>
                                    <td>Have you got a chesty cough, sore throat or active cold sore?</td>
                                    <td>
                                        <input type="checkbox" id="1.4Y" name="1.4Y" value="yes"></td>
                                    <td>
                                        <input type="checkbox" id="1.4N" name="1.4N" value="no"></td>
                                </tr>
                                <tr>
                                    <td>1.5</td>
                                    <td>Are you pregnant or breastfeeding?</td>
                                    <td>
                                        <input type="checkbox" id="1.5Y" name="1.5Y" value="yes"></td>
                                    <td>
                                        <input type="checkbox" id="1.5N" name="1.5N" value="no"></td>
                                </tr>
                                <tr>
                                    <td>1.6</td>
                                    <td>Do you have or have you ever had:</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>a &nbsp;&nbsp;&nbsp;Chest pains, heart disease/surgery or stroke?</td>
                                    <td>
                                        <input type="checkbox" id="1.6aY" name="1.6aY" value="yes"></td>
                                    <td>
                                        <input type="checkbox" id="1.6aN" name="1.6aN" value="no"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>b &nbsp;&nbsp;&nbsp;Lung disease, tuberculosis or asthma?</td>
                                    <td>
                                        <input type="checkbox" id="1.6bY" name="1.6bY" value="yes"></td>
                                    <td>
                                        <input type="checkbox" id="1.6bN" name="1.6bN" value="no"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>c &nbsp;&nbsp;&nbsp;Cancer, a blood disease, an abnormal bleeding disorder,<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or a bleeding gastric ulcer or duodenal ulcer?
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.6cY" name="1.6cY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.6cN" name="1.6cN" value="no"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>d &nbsp;&nbsp;&nbsp;Diabetes, thyroid disease, kidney disease, epilipsy (fits)?</td>
                                    <td>
                                        <input type="checkbox" id="1.6cY" name="1.6cY" value="yes"></td>
                                    <td>
                                        <input type="checkbox" id="1.6cN" name="1.6cN" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">1.7</td>
                                    <td>In the last 7 days, have you seen a doctor, dentist, or any other<br>
                                        healthcare professional or are you waiting to see one<br>
                                        (except for routine screening appointments)?</td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.7Y" name="1.7Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.7N" name="1.7N" value="no"></td>
                                </tr>
                                <tr>
                                    <td>1.8</td>
                                    <td>In the past 12 months:</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>a &nbsp;&nbsp;&nbsp;Have you been ill, received any treatment<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or taken any medication?
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.8aY" name="1.8aY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.8aN" name="1.8aN" value="no"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>b &nbsp;&nbsp;&nbsp;Have you been under a doctor's care, undergone surgery,<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or a diagnostic procedure, suffered a major illness, or been<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;involved in a serious accident?
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.8bY" name="1.8bY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.8bN" name="1.8bN" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">1.9</td>
                                    <td>Have you ever had yellow jaundice (excluding jaundice at birth),<br>
                                        hepatitis or liver disease or a positive test for hepatitis?</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>a &nbsp;&nbsp;&nbsp;In the past 12 months, have you had close contact with<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a person with yellow jaundice or viral hepatitis, or have<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;you been given hepatitis B vaccination?
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.9aY" name="1.9aY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.9aN" name="1.9aN" value="no"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>b &nbsp;&nbsp;&nbsp;Have you ever had hepatitis B or hepatitis C or think you<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;may have hepatitis now?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.9bY" name="1.9bY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.9bN" name="1.9bN" value="no"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>c &nbsp;&nbsp;&nbsp;In the past 12 months, have you been tattoed, had ear or body<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;piercing, acupuncture, circumcision or scarification, cosmetic<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;treatment?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.9cY" name="1.9cY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.9cN" name="1.9cN" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">1.10</td>
                                    <td>In the past 12 months, have you or your sexual partner<br>
                                        received blood transfusion?</td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.10Y" name="1.10Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.10N" name="1.10N" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">1.11</td>
                                    <td>Have you or your sexual partner been treated with human or<br>
                                        animal blood products or clotting factors?</td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.11Y" name="1.11Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.11N" name="1.11N" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">1.12</td>
                                    <td>Have you ever had injections of human pituitary growth hormone,<br>
                                        pituitary gonadotrophin (fertility medicine) or seen a neurosurgeon<br>
                                        or neurologist?</td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.12Y" name="1.12Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.12N" name="1.12N" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">1.13</td>
                                    <td>Have you or your close relatives had an unexplained neurological<br>
                                        condition or been diagnosed with Creutzfeldt-Jacob Disease or<br>
                                        'mad cow disease'?</td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.13Y" name="1.13Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.13N" name="1.13N" value="no"></td>
                                </tr>
                                <tr>
                                    <td>1.14</td>
                                    <td>Have you:</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>a &nbsp;&nbsp;&nbsp;Ever had malaria or an unexplained fever associated<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;with travel?
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.14aY" name="1.14aY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.14aN" name="1.14aN" value="no"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>b &nbsp;&nbsp;&nbsp;Visited any malarial area in the last 12 months?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.14bY" name="1.14bY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="1.14bN" name="1.14bN" value="no"></td>
                                </tr>
                            </table>
                            <table style="text-align: left; width: 51%; margin: auto">
                                <tr>
                                    <td style="vertical-align: top">1.15</td>
                                    <td>When did you last travel to another region or country<br>
                                        (in months/years)?</td>
                                    <td style="vertical-align: top">
                                        <input type="text" id="1.15" name="1.15"></td>
                                </tr>
                            </table>
                            <p style="font-size: 25px; font-style: bold; margin-left: -32%">
                                </br>
                2 RISK ASSESSMENT
                            </p>
                            <table style="text-align: left; width: 51%; margin: auto">
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>YES</td>
                                    <td>NO</td>
                                </tr>
                                <tr>
                                    <td>2.1</td>
                                    <td>Is your reason for donating blood to undergo an HIV test?</td>
                                    <td>
                                        <input type="checkbox" id="2.1Y" name="2.1Y" value="yes"></td>
                                    <td>
                                        <input type="checkbox" id="2.1N" name="2.1N" value="no"></td>
                                </tr>
                                <tr>
                                    <td>2.2</td>
                                    <td>Have you ever been tested for HIV?</td>
                                    <td>
                                        <input type="checkbox" id="2.2Y" name="2.2Y" value="yes"></td>
                                    <td>
                                        <input type="checkbox" id="2.2N" name="2.2N" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top;">2.3</td>
                                    <td>If "Yes" what was the reason?<br>
                                        <input type="checkbox" id="2.3VOL" name="2.3VOL" value="voluntary">Voluntary
                        <input type="checkbox" id="2.3EMP" name="2.3EMP" value="employment">Employment
                        <input type="checkbox" id="2.3INS" name="2.3INS" value="insurance">Insurance
                        <input type="checkbox" id="2.3MED" name="2.3MED" value="medadvice">Medical Advice<br>
                                        Others
                                    <input type="text" id="2.3OTH" name="2.3OTH">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">2.4</td>
                                    <td>Have you ever had casual, oral or anal sex with someone whose<br>
                                        background you do not know, with or without a condom?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.4Y" name="2.4Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.4N" name="2.4N" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">2.5</td>
                                    <td>Have you ever exchangeed money, drugs, goods or favours<br>
                                        in return for sex?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.5Y" name="2.5Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.5N" name="2.5N" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">2.6</td>
                                    <td>Have you suffered from a sexually transmitted disease (STD):<br>
                                        e.g.syphilis, gonorrhoea, genital herpes, genital ulcer, VD, or 'drop'?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.6Y" name="2.6Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.6N" name="2.6N" value="no"></td>
                                </tr>
                                <tr>
                                    <td>2.7</td>
                                    <td>In the past 12 months:</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>a &nbsp;&nbsp;&nbsp;Has there been any change in your marital status?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.7aY" name="2.7aY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.7aN" name="2.7aN" value="no"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>b &nbsp;&nbsp;&nbsp;If sexually active, do you think any of the above questions (2.1-2.6)<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;may be true for your sexual partner?</td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.7bY" name="2.7bY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.7bN" name="2.7bN" value="no"></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>c &nbsp;&nbsp;&nbsp;Have you been a victim of sexual abuse?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.7cY" name="2.7cY" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.7cN" name="2.7cN" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">2.8</td>
                                    <td>Have you or your sexual partner suffered from night sweats,<br>
                                        unintentional weight loss, diarrhea or swollen glands?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.8Y" name="2.8Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.8N" name="2.8N" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">2.9</td>
                                    <td>Have you ever injected yourself or been injected with illegal or non-prescribed<br>
                                        drugs including body-building drugs or cosmetics (even if this was<br>
                                        only once or a long time ago)?</td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.9Y" name="2.9Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.9N" name="2.9N" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">2.10</td>
                                    <td>Have you been in contact with anyone with an infectious disease or in the<br>
                                        last 12 months have you had any immunizations, vaccinations or jabs?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.10Y" name="2.10Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.10N" name="2.10N" value="no"></td>
                                </tr>
                                <tr>
                                    <td style="vertical-align: top">2.11</td>
                                    <td>Have you ever been refused as a blood donor, or told not to donate<br>
                                        blood?<br>
                                    </td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.11Y" name="2.11Y" value="yes"></td>
                                    <td style="vertical-align: top">
                                        <input type="checkbox" id="2.11N" name="2.11N" value="no"></td>
                                </tr>
                            </table>
                            <p style="font-size: 25px; font-style: bold; margin-left: -35%">
                                </br>
                3 DECLARATION
                            </p>
                            <p style="font-size: 18px; font-style: bold; margin-left: 25%; text-align: left;">
                                Please do not sign until you have answered all the questions and read the<br>
                                declaration below.
                            </p>
                            <table style="text-align: left; width: 51%; margin: auto">
                                <tr>
                                    <td>a &nbsp;&nbsp;&nbsp;I confirm that, to the best of my knowledge, I have answered all the<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;questions accurately and I consider my blood safe for<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;transfusion to a patient.</td>
                                </tr>
                                <tr>
                                    <td>b &nbsp;&nbsp;&nbsp;I understand that any wilful misrepresentation of facts could endanger<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;my health or that of patients receiving my blood and may lead to<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;litigation. I am aware that my blood will be screened for among<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;others, HIV, hepatitis B, hepatitis C and syphilis. I understand that<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;these screening tests are not diagnostic and may yield false-positive<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;results. If any tests give a reactive result, I will be contacted<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;using the information I have provided, and offered counselling.
                                    </td>
                                </tr>
                                <tr>
                                    <td>c &nbsp;&nbsp;&nbsp;I understand the blood donation process, and I have been<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;counseled regarding the importance of safe blood donation.<br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>d &nbsp;&nbsp;&nbsp;I confirm that I am over the age of 18 years.<br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>e &nbsp;&nbsp;&nbsp;I undertake that should there be any reason for my blood to be<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;deemed unsafe for use at any age, I will inform the Blood Transfusion<br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Service.
                                    </td>
                                </tr>
                            </table>
                            <asp:Button OnClick="Unnamed_Click" runat="server" ID="sample" Text="sample submit" />
                        </div>
                    </div>
                </div>
            </div>
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
