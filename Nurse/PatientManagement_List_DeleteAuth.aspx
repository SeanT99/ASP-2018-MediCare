<%@ Page Title="" Language="C#" MasterPageFile="~/Nurse.master" AutoEventWireup="true" CodeFile="PatientManagement_List_DeleteAuth.aspx.cs" Inherits="Nurse_PatientManagement_List_DeleteAuth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    the warnings - TO ENTER WARNINGS HERE

    <table style="width:100%;">
        <tr>
            <td style="width: 201px">Your Login Password:
            </td>
            <td><asp:TextBox ID="PasswordTB" runat="server" Width="225px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 201px; height: 26px;">Patient&#39;s ID:</td>
            <td><asp:TextBox ID="IDDisplay" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 201px">Enter verification text (&quot;Delete this patient&quot;):</td>
            <td><asp:TextBox ID="VerificationTB" runat="server" Width="225px"></asp:TextBox></td>
        </tr>
    </table>
    <asp:Button ID="DelConfirmBtn" runat="server" Text="Confirm Delete" Width="135px" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
</asp:Content>