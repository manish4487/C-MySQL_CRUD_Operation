<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="MySQL_CRUD.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity=
        "sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
    <!--Jquery reference -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="SignIn.js" type="text/javascript"></script>
</head>
<body>
    
    <div class="jumbotron">
    <h1>Student Information System</h1>    
</div>
    <div class="container">
    <form id="form2" runat="server">
         <h2>Login Details</h2>
    <table>            
        <tr>  
            <td class="td">Username:</td>  
            <td>  
                <asp:TextBox ID="txtusername" runat="server" class="form-control" placeholder="Enter Username"></asp:TextBox></td>             
         </tr> 
        <tr>

        </tr> 
        <tr>  
            <td class="td">Password:</td>  
            <td>  
                <asp:TextBox ID="txtpassword" class="form-control" runat="server" placeholder="Password"></asp:TextBox></td>               
        </tr><tr>
             </tr>           
        <tr>              
            <td> 
                <asp:Button ID="btnSubmit" runat="server" class="btn btn-success" Text="LogIn" OnClick="btnSubmit_Click"/>                  
            </td>                
        </tr>  
    </table>  
        </form>
        </div>
</body>
</html>
