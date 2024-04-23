﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserDetails.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="As_Your_Need_services.User.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card aon-card" id="aon-passUpdate-panel">
                	<div class="card-header aon-card-header"><h4><i class="fa fa-lock"></i> Password Update</h4></div>
                    <div class="card-body aon-card-body">
                        <form runat="server">
                    	<div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <div class="aon-inputicon-box">
                                        <asp:Label ID="lblmail" runat="server" ></asp:Label>
                                      
                                    </div>
                                </div>
                            </div>

                        	<div class="col-md-12">
                                <div class="form-group">
                                    <label>Old Password</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Old Password" ControlToValidate="txtopass" Text="*"></asp:RequiredFieldValidator>
                                    <div class="aon-inputicon-box">
                                        <asp:TextBox ID="txtopass" runat="server" class="form-control sf-form-control" placeholder="Enter Old Password" TextMode="Password"></asp:TextBox>
                                       <%-- <input class="form-control sf-form-control" name="company_name" type="text">--%>
                                        <i class="aon-input-icon fa fa-lock"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>New Password</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpass" ErrorMessage="Please Enter New Password" Text="*"></asp:RequiredFieldValidator>
                                    <div class="aon-inputicon-box">
                                        <asp:TextBox ID="txtnewpass" runat="server" class="form-control sf-form-control" placeholder="Enter New Password" TextMode="Password"></asp:TextBox>
                                       <%-- <input class="form-control sf-form-control" name="company_name" type="text">--%>
                                        <i class="aon-input-icon fa fa-lock"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Conform Password</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Conform Password" ControlToValidate="txtcpass" Text="*"></asp:RequiredFieldValidator> <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpass" ControlToValidate="txtcpass" ErrorMessage="Please Enter New Password And Conform Password Same" Text="*"></asp:CompareValidator>
                                    <div class="aon-inputicon-box">
                                        <asp:TextBox ID="txtcpass" runat="server" class="form-control sf-form-control" placeholder="Enter Confirm  Password" TextMode="Password"></asp:TextBox>
                                      <%--  <input class="form-control sf-form-control" name="company_name" type="text">--%>
                                        <i class="aon-input-icon fa fa-lock"></i>
                                    </div>
                                </div>
                            </div>
                              <div class="sf-contact-submit-btn">
                                <asp:Button ID="btn_submit" runat="server" Text="Submit"  class="site-button" OnClick="btn_submit_Click" />
                                  <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                             <%--   <button class="site-button" type="submit">Submit</button>--%>

                            </div><br />

                            <asp:Label ID="Label1" runat="server" ></asp:Label>
                        </div>
                            </form>
                       <%-- <p>Enter same password in both fields. Use an uppercase letter and a number for stronger password.</p>--%>
                    </div>
                </div>
</asp:Content>