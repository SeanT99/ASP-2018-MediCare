﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.master" AutoEventWireup="true" CodeFile="EditProfile_Main.aspx.cs" Inherits="Patient_EditProfile_Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" style="font-weight: bold; height: 26px;">Patient Basic Info</td>
        </tr>
        <tr>
            <td style="width: 318px; height: 33px;">Given Name</td>
            <td style="height: 33px">
                <asp:TextBox ID="GNameTB" runat="server" Width="515px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="GNameTB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td style="width: 318px">Family Name</td>
            <td>
                <asp:TextBox ID="FNameTB" runat="server" Width="515px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FNameTB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td style="width: 318px">Date of Birth (dd/mm/YYYY)</td>
            <td>
                <asp:TextBox ID="dobTB" runat="server" Width="265px" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="dobTB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
                <asp:CustomValidator ControlToValidate="dobTB" ID="dobValid" runat="server" ErrorMessage=" Date should be before today" Font-Bold="True" ForeColor="Red" OnServerValidate="dobValid_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; height: 26px">Gender</td>
            <td style="height: 26px">
                <asp:RadioButtonList ID="genderRB" runat="server" Width="131px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="genderRB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        
        <tr>
            <td style="width: 318px">ID Type</td>
            <td>
                <asp:DropDownList ID="idDDL" runat="server" Width="217px">
                    <asp:ListItem Selected="True">Please select ID Type</asp:ListItem>
                    <asp:ListItem Value="NRIC" Text="NRIC"/>
                    <asp:ListItem Value="Passport No." Text="Passport No."/>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="idDDL" InitialValue="Please select ID Type" ErrorMessage="Please select ID Type" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 318px">ID No</td>
            <td style="height: 26px">
                <asp:TextBox ID="IDTB" runat="server" Width="265px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="IDTB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
                <asp:CustomValidator runat="server" id="cusCustom" controltovalidate="IDTB" onservervalidate="cusCustom_ServerValidateNRIC" errormessage="The NRIC Number is Invalid!" Font-Bold="True" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 318px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bold; height: 26px;">Contact Details</td>
        </tr>
        <tr>
            <td style="width: 318px">Email</td>
            <td>
                <asp:TextBox ID="emailTB" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailTB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailTB" ErrorMessage="This is an invalid email" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 318px">Mobile Phone</td>
            <td>
                <asp:TextBox ID="mobileTB" runat="server" Width="265px" TextMode="Phone" MaxLength="8"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="mobileTB" ErrorMessage="Only numbers allowed" Font-Bold="True" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 318px">House Phone</td>
            <td>
                <asp:TextBox ID="homeTB" runat="server" Width="265px" TextMode="Phone" MaxLength="8"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="homeTB" ErrorMessage="Only numbers allowed" Font-Bold="True" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 318px">Blk/House Number</td>
            <td>
                <asp:TextBox ID="blkTB" runat="server" Width="147px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; height: 26px;">Street Name</td>
            <td style="height: 26px">
                <asp:TextBox ID="streetTB" runat="server" Width="515px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="streetTB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>

            </td>
        </tr>
        <tr>
            <td style="width: 318px">Unit Number</td>
            <td>
                <asp:TextBox ID="unitTB" runat="server" Width="147px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 318px">Building Name</td>
            <td>
                <asp:TextBox ID="buildingTB" runat="server" Width="515px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 318px">Postal Code</td>
            <td>
                <asp:TextBox ID="postalTB" runat="server" Width="147px" MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="postalTB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="postalTB" ErrorMessage="Only numbers allowed" Font-Bold="True" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 318px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bold">Emergency Contact</td>
        </tr>
        <tr>
            <td style="width: 318px; height: 33px;">Name</td>
            <td style="height: 33px">
                <asp:TextBox ID="ecNameTB" runat="server" Width="515px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ecNameTB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td style="width: 318px">Contact number</td>
            <td>
                <asp:TextBox ID="ecNumberTB" runat="server" Width="265px" TextMode="Phone" MaxLength="8"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ecNumberTB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="ecNumberTB" ErrorMessage="Only numbers allowed" Font-Bold="True" ForeColor="Red" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; height: 26px;">Relationship</td>
            <td style="height: 26px">
                <asp:TextBox ID="ecRelationshipTB" runat="server" Width="265px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ecRelationshipTB" ErrorMessage="This is a required field" Font-Bold="True" ForeColor="Red"/>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; height: 26px;"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td colspan="2" style="font-weight: bold">Medical Info</td>
        </tr>
        <tr>
            <td style="width: 318px; height: 101px;">Food/Drug Allergies</td>
            <td style="height: 101px">
                <asp:TextBox ID="allergyTB" runat="server" Height="93px" TextMode="MultiLine" Width="481px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 318px; height: 101px;">Pre-existing medical conditions and history</td>
            <td style="height: 101px">
                <asp:TextBox ID="medHistTB" runat="server" Height="93px" TextMode="MultiLine" Width="481px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 318px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: bold; height: 26px;" colspan="2">Security Questions</td>
        </tr>
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
            <td style="width: 318px; font-weight: bold; height: 26px;">Question 3</td>
            <td style="height: 26px">
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
    </table>
    <asp:Button ID="SubmitBtn" runat="server" Text="Submit Records" Width="160px"  />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

