<%@ Page Title="" Language="C#" MasterPageFile="~/Nurse.master" AutoEventWireup="true" CodeFile="PatientManagement_List_DeleteAuth.aspx.cs" Inherits="Nurse_PatientManagement_List_DeleteAuth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    the warnings - TO ENTER WARNINGS HERE
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="width: 201px">Your Login Password:
            </td>
            <td><asp:TextBox ID="TextBox1" runat="server" Width="225px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 201px">Patient&#39;s ID:</td>
           <td>-patient id-</td>
        </tr>
        <tr>
            <td style="width: 201px">Enter verification text (&quot;Delete this patient&quot;):</td>
            <td><asp:TextBox ID="TextBox2" runat="server" Width="225px"></asp:TextBox></td>
        </tr>
    </table>
</asp:Content>