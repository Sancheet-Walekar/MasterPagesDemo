<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="MasterPagesDemo.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>This is Profile Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Upload Profile Picture"></asp:Label>
&nbsp;&nbsp;&nbsp;<br />
    <br />
&nbsp;<asp:FileUpload ID="picupload" runat="server" Font-Size="X-Large" />
    &nbsp;
    <br />
    <br />
    <asp:Button ID="btnupload" runat="server" Font-Size="X-Large" Height="64px" style="margin-left: 204px" Text="Upload" Width="211px" OnClick="btnupload_Click" />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="imgprofile" runat="server" Height="200px" Width="300px" BorderStyle="Ridge" />
&nbsp;&nbsp;
<br />
<asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
</asp:Content>
