<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient_FirstLogin.aspx.cs" Inherits="Patient_Patient_FirstLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
        .auto-style2 {
            height: 25px;
            width: 158px;
        }
        .auto-style3 {
            width: 158px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
            <td style="width: 318px; font-weight: bold; height: 23px;">Question 1</td>
            <td style="height: 23px">
                <asp:DropDownList ID="sq1DDL" runat="server" >
                    <asp:ListItem Selected="True">-Select Question-</asp:ListItem>
                    <asp:ListItem>What was your childhood nickname?</asp:ListItem>
                    <asp:ListItem>Where did you attend primary school?</asp:ListItem>
                    <asp:ListItem>Where were you when you had your first kiss?</asp:ListItem>
                    <asp:ListItem>What is your favourite teacher&#39;s name?</asp:ListItem>
                    <asp:ListItem>Where were you during 9/11?</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="sq1DDL" InitialValue="-Select Question-" ErrorMessage="Please select a question" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; font-weight: bold; height: 26px;">Answer </td>
            <td style="height: 26px">
                <asp:TextBox ID="sqAns1TB" runat="server" Width="883px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="sqAns1TB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; font-weight: bold; height: 26px;">Question 2</td>
            <td style="height: 26px">
                <asp:DropDownList ID="sq2DDL" runat="server">
                    <asp:ListItem Selected="True">-Select Question-</asp:ListItem>
                    <asp:ListItem>What was your childhood nickname?</asp:ListItem>
                    <asp:ListItem>Where did you attend primary school?</asp:ListItem>
                    <asp:ListItem>Where were you when you had your first kiss?</asp:ListItem>
                    <asp:ListItem>What is your favourite teacher&#39;s name?</asp:ListItem>
                    <asp:ListItem>Where were you during 9/11?</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="sq2DDL" InitialValue="-Select Question-" ErrorMessage="Please select a question" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; font-weight: bold; height: 26px;">Answer</td>
            <td style="height: 26px">
                <asp:TextBox ID="sqAns2TB" runat="server" Width="883px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="sqAns2TB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold; "d>Question 3</td>
            <td class="auto-style5">
                <asp:DropDownList ID="sq3DDL" runat="server">
                    <asp:ListItem Selected="True">-Select Question-</asp:ListItem>
                    <asp:ListItem>What was your childhood nickname?</asp:ListItem>
                    <asp:ListItem>Where did you attend primary school?</asp:ListItem>
                    <asp:ListItem>Where were you when you had your first kiss?</asp:ListItem>
                    <asp:ListItem>What is your favourite teacher&#39;s name?</asp:ListItem>
                    <asp:ListItem>Where were you during 9/11?</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="sq3DDL" InitialValue="-Select Question-" ErrorMessage="Please select a question" Font-Bold="True" ForeColor="Red"/>

            </td>
        </tr>
        <tr>
            <td style="width: 318px; font-weight: bold; height: 26px;">Answer</td>
            <td style="height: 26px">
                <asp:TextBox ID="sqAns3TB" runat="server" Width="883px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="sqAns3TB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red" />
            </td>
        </tr>
                <tr>
                    <td class="auto-style2" style="font-weight: bold;">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="font-weight: bold;">Existing Password</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" Width="280px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-weight: bold;">New Password</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="280px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-weight: bold;">Confirm Password</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="280px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
