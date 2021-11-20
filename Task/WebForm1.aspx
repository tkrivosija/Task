<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Task.WebForm1" %>
<!DOCTYPE html>
<html>
    <head runat="server">
        <title></title>
        <link rel="stylesheet" href="css/style.css">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="js/script.js" defer></script>
        <style>
            body{
                font-size:1.5em;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <form runat="server">
                <div class="row">
                    <div class="col-25">
                        <label>Username</label>
                    </div>
                    <div class="col-75">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>ID</label>
                     </div>
                     <div class="col-75">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Url</label>
                     </div>
                     <div class="col-75">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Name</label>
                     </div>
                     <div class="col-75">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Location</label>
                     </div>
                     <div class="col-75">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label>Email</label>
                     </div>
                     <div class="col-75">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row mt-3">
                    <asp:Button CssClass="btn-success w-25" Text="Save to Json" 
                        ID="Button1" runat="server" OnClick="Button1_Click"/>
                </div>
            </form>
        </div>
        <div class="text-center mt-3">
            <button class="btn-primary w-25" id="btnPrivate">Load Private Repositories</button>
            <div id="divResult"></div>
        </div>
    </body>
</html>
