<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExerciseOne.aspx.cs" Inherits="ExerciseOne" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 197px;
        }
        .auto-style2 {
            width: 190px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 110px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" Width="632px"
                onfinishbuttonclick="Wizard1_FinishButtonClick"
                onnextbuttonclick="Wizard1_NextButton_Click" ActiveStepIndex="0">
                <SideBarStyle BackColor="White" ForeColor="White" HorizontalAlign="Left" VerticalAlign="Top" />
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" StepType="Start" Title="About You">
                        <table style="background-color: #003366; color: #FFFFFF; text-align:center">
                            <tr>
                                <td colspan="2">
                                    <h2>About You</h2>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    First Name
                                </td>
                                <td>
                                    <asp:TextBox ID="FirstName" runat="server" CssClass="auto-style4"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="FNameValidator" runat="server" ErrorMessage="Please Enter a First Name" ControlToValidate="FirstName" Text="Please enter a first name" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    Last Name
                                </td>
                                <td>
                                    <asp:TextBox ID="LastName" runat="server" CssClass="auto-style4"></asp:TextBox>
                                </td>
                                <td class="auto-style1">
                                    <asp:RequiredFieldValidator ID="LNameValidator" runat="server" ErrorMessage="Please Enter a Last Name" ControlToValidate="LastName" Text="Please enter a last name" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" StepType="Step" Title="Favourite Language">
                        <table style="background-color: #003366; color: #FFFFFF; text-align:center;">
                            <tr>
                                <td colspan="2">
                                    Favourite Language
                                </td>
                            </tr>
                            <tr>
                                <td>
                                     <asp:DropDownList ID="Language" runat="server"></asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="LanguageValidator" runat="server" ErrorMessage="Please Choose a Language" InitialValue="Language" Text="Please select a language" ControlToValidate="Language" ForeColor="red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>  
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep3" runat="server" StepType="Finish" Title="Ready">
                        <h2>Summary</h2>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>     
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
