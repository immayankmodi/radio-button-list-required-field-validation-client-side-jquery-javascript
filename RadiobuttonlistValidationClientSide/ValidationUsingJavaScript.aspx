<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationUsingJavaScript.aspx.cs"
    Inherits="RadiobuttonlistValidationClientSide.ValidationUsingJavaScript" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>AspnetO.com | RadioButtonList Validation using JavaScript</title>

    <script type="text/javascript">
        function ValidateRadioButtonList() {
            var isChecked = false;
            var rblImageFormat = document.getElementById("<%=rblImageFormat.ClientID%>");
            var radioButtons = rblImageFormat.getElementsByTagName("input");

            for (var i = 0; i < radioButtons.length; i++) {
                if (radioButtons[i].checked) {
                    isChecked = true;
                    break;
                }
            }

            if (!isChecked) {
                alert("Please select image format from the list.");
            }

            return isChecked;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Select Image Format
                    </td>
                    <td>:
                    </td>
                    <td>
                        <asp:RadioButtonList ID="rblImageFormat" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1" Text=".jpg" />
                            <asp:ListItem Value="2" Text=".png" />
                            <asp:ListItem Value="2" Text=".gif" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClientClick="return ValidateRadioButtonList();" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
