 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="MySQL_CRUD.student" MasterPageFile="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Information System</title>
    <script src="Uservalidation.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity=
        "sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
</head>

<body>
      <div class="jumbotron">
    <h1>Student Information System</h1>    
</div>
    <div class="container">
    <form id="form1" runat="server">
    <table> 
        <tr>
             <td>  
                <asp:Label ID="SID" runat="server" Visible="false"></asp:Label> </td>  
        </tr>     
        <tr>  
            <td class="td">Name:</td>  
            <td>  
                <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Enter Name"></asp:TextBox></td>             
        </tr>  
        <tr>  
            <td class="td">Address:</td>  
            <td>  
                <asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Address"></asp:TextBox></td>               
        </tr>  
        <tr>  
            <td class="td">Mobile:</td>  
            <td>  
                <asp:TextBox ID="txtMobile" runat="server" class="form-control" placeholder="Enter Mobile Number"></asp:TextBox></td>              
        </tr>  
        <tr>  
            <td class="td">Email ID:</td>  
            <td>  
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox></td>              
        </tr> 
         
        <tr>              
            <td> 
                <asp:Button ID="btnSubmit" runat="server" class="btn btn-success" Text="Submit"  OnClientClick="return uservalid()" OnClick="btnSubmit_Click" />  
                &nbsp;  
                <asp:Button ID="btnUpdate" runat="server" class="btn btn-success" Text="Update" Visible="false" OnClick="btnUpdate_Click" />  
                &nbsp;  
                <asp:Button ID="btnCancel" runat="server" class="btn btn-success" Text="Cancel" OnClick="btnCancel_Click" />
                <br />
                <br />
            </td>                
        </tr>  
    </table>  
    

        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped" DataKeyNames="SID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:CommandField HeaderText="Update" ShowSelectButton="True" />  
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />                
            </Columns>
        </asp:GridView>
     <table>
            <tr>                
            <td>  
                <asp:Button ID="Btnfaculty" runat="server" class="btn btn-success" Text="Faculty" OnClick="Btnfaculty_Click" />                  
            </tr>  
        </table>
    </form>
    </div>

</body>
</html>
