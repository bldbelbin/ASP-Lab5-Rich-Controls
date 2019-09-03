<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MultiViewEx.aspx.cs" Inherits="MultiViewEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="StudentView" runat="server">
                    <table align="Center">
                        <tr>
                            <td colspan="2">
                                <h2>Step 1: Student Details</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                First Name<span style="color:red">*</span>
                            </td>
                            <td>
                                <asp:TextBox ID="FirstName" runat="server" Width="200px" TextMode="SingleLine" MaxLength="15"></asp:TextBox>
                            </td>
                            <td> 
                                <asp:RequiredFieldValidator ID="FNameValidator" runat="server" ErrorMessage="Please Enter a First Name" ControlToValidate="FirstName" Text="Please enter a first name" ForeColor="red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Last Name<span style="color:red">*</span>
                            </td>
                            <td>
                                <asp:TextBox ID="LastName" runat="server" Width="200px" TextMode="SingleLine"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="LNameValidator" runat="server" ErrorMessage="Please Enter a Last Name" ControlToValidate="LastName" Text="Please enter a last name" ForeColor="red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Email<span style="color:red">*</span>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server" width="300px" TextMode="SingleLine"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ErrorMessage="Please Enter a Valid Email" ControlToValidate="Email" Text="Please enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="red"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
            
                        <tr>
                            <td>
                                Address<span style="color:red">*</span>
                            </td>
                            <td>
                                <asp:TextBox ID="Address" runat="server" Width="300px" TextMode="SingleLine"></asp:TextBox>
                            </td>
                             <td class="auto-style1">
                                 <asp:RequiredFieldValidator ID="AddressValidator" runat="server" ErrorMessage="Please Enter an Address" ControlToValidate="Address" Text="Please enter an address" ForeColor="red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>              
          
                        <tr>
                            <td>
                                City<span style="color:red">*</span>
                            </td>
                            <td>
                                <asp:TextBox ID="City" runat="server" width="200px" TextMode="SingleLine"></asp:TextBox>
                            </td>
                             <td>
                                 <asp:RequiredFieldValidator ID="CityValidator" runat="server" ErrorMessage="Please Enter a City" ControlToValidate="City" Text="Please enter a city" ForeColor="red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
          
                        <tr>
                            <td>
                                Province<span style="color:red">*</span>
                            </td>
                            <td>
                                <asp:DropDownList ID="Province" runat="server" Width="200px"></asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="ProvinceValidator" runat="server" ErrorMessage="Please Choose a Province" InitialValue="Province" Text="Please select a province" ControlToValidate="Province" ForeColor="red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
             
                        <tr>
                            <td>
                                Postal Code<span style="color:red">*</span>
                            </td>
                            <td>
                                <asp:TextBox ID="PostalCode" runat="server" width="100px" TextMode="SingleLine"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RegularExpressionValidator ID="PostalValidator" runat="server" ErrorMessage="Please Enter a Valid Postal Code" ControlToValidate="PostalCode" Text="Please enter a valid postal code" ValidationExpression="^([ABCEGHJKLMNPRSTVXY]\d[ABCEGHJKLMNPRSTVX])[ \-]{0,1}(\d[ABCEGHJKLMNPRSTVX]\d)$" ForeColor="red"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
             
                        <tr>
                            <td>
                                Phone<span style="color:red">*</span>
                            </td>
                            <td>
                                <asp:TextBox ID="Phone" runat="server" width="200px" TextMode="SingleLine"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RegularExpressionValidator ID="PhoneValidator" runat="server" ErrorMessage="Please Enter a valid phone number" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" Text="Please enter a valid phone number" ControlToValidate="Phone" ForeColor="red"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:right">
                                <asp:Button ID="Step2Btn" runat="server" Text="Next >>" OnClick="GoToStep2_Click" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="CourseView" runat="server">
                    <table>
                        <tr>
                            <td colspan="2">
                                <h2>Course Information</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Course Name
                            </td>
                            <td>
                                <asp:TextBox ID="CourseName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="CourseValidator" runat="server" ErrorMessage="Please Enter a Course Title" ControlToValidate="CourseName" Text="Please enter a Course Name" ForeColor="red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Course Code
                            </td>
                            <td>
                                <asp:TextBox ID="CourseCode" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="CourseCodeValidator" runat="server" ErrorMessage="Please Enter a Course Code" ControlToValidate="CourseCode" Text="Please enter a Course Code" ForeColor="red"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="BackBtn" runat="server" Text="<< Back" OnClick="BackBtn_Click"/>
                            </td>
                            <td style="text-align:right">
                                <asp:Button ID="Step3Btn" runat="server" Text="Next >>" OnClick="Step3Btn_Click"/>
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="SumView" runat="server">
                    <table>
                        <tr>
                            <td colspan="2">
                                <h2>Summary</h2>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <h3>Student Details</h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                First Name
                            </td>
                            <td>
                                <asp:Label ID="FirstNameLabel" runat="server" Text=" "></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Last Name
                            </td>
                            <td>
                                <asp:Label ID="LastNameLabel" runat="server" Text=" "></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Email
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text=" "></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Address
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text=" "></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                City
                            </td>
                            <td>
                                <asp:Label ID="CityLabel" runat="server" Text=" "></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Province
                            </td>
                            <td>
                                <asp:Label ID="ProvinceLabel" runat="server" Text=" "></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Postal Code
                            </td>
                            <td>
                                <asp:Label ID="PostalCodeLabel" runat="server" Text=" "></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Phone
                            </td>
                            <td>
                                <asp:Label ID="PhoneLabel" runat="server" Text=" "></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <h3>Course Information</h3>
                            </td>
                        <tr>
                            <td>
                                 Course Name
                            </td>
                            <td>
                                <asp:Label ID="CourseNameLable" runat="server" Text=" "></asp:Label>
                            </td>
                        </tr>
                        <tr>
                             <td>
                                 Course Code
                            </td>
                            <td>
                                <asp:Label ID="CourseCodeLabel" runat="server" Text=" "></asp:Label>
                            </td>
                        </tr>
                        <tr>
                             <td colspan="2">
                                <asp:Button ID="BackStep2" runat="server" Text="<< Back" OnClick="Back2Btn_Click"/>
                            </td>
                        </tr>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
