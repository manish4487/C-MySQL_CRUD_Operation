<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="MySQL_CRUD.student" MasterPageFile="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Information System</title>
    <script src="Uservalidation.js" type="text/javascript"></script>
</head>

<body>
    <form id="form1" runat="server">
    <table> 
        <tr>
             <td>  
                <asp:Label ID="SID" runat="server" Visible="false"></asp:Label> </td>  
        </tr>     
        <tr>  
            <td class="td">Name:</td>  
            <td>  
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>             
        </tr>  
        <tr>  
            <td class="td">Address:</td>  
            <td>  
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>               
        </tr>  
        <tr>  
            <td class="td">Mobile:</td>  
            <td>  
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox></td>              
        </tr>  
        <tr>  
            <td class="td">Email ID:</td>  
            <td>  
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>              
        </tr> 
         
        <tr>              
            <td> 
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"  OnClientClick="return uservalid()" OnClick="btnSubmit_Click" />  
                &nbsp;  
                <asp:Button ID="btnUpdate" runat="server" Text="Update" Visible="false" OnClick="btnUpdate_Click" />  
                &nbsp;  
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
                <br />
                <br />
            </td>                
        </tr>  
    </table>  
    

        <asp:GridView ID="GridView1" runat="server" DataKeyNames="SID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:CommandField HeaderText="Update" ShowSelectButton="True" />  
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />                
            </Columns>
        </asp:GridView>
    </form>
    

</body>
</html>
