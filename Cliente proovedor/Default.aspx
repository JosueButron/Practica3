<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cliente_proovedor._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="stilos.css"/>
    <style>
        body{
            background: #808080;
            font-family: Arial, sans-serif;
        }
    </style>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
        
        <asp:ListItem Value="0">Producto</asp:ListItem>
        <asp:ListItem Value="1">Cliente</asp:ListItem>
        <asp:ListItem Value="2">Proveedor</asp:ListItem>
    </asp:RadioButtonList>
    <style>
        body{
            border: 2px solid #00ff21;
        }
    </style>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            Ingrese informacion Producto<br /> 
            <form action="../../form-result.php" method="post" target="_blank">

  <p>Codigo: <input type="text" name="usuario" id="code"></p>

  <p>
      <asp:Button ID="Button4" runat="server" Text="Enviar datos" OnClick="Button4_Click" />
                </p>

                <p>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </p>

</form>
            <style>
                body{
                    margin: auto;
                    font-family: 'Times New Roman';
                }
            </style>
            <asp:FileUpload ID="FileUpload1" runat="server" Height="45px" Width="279px" />
            <br />
            <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" Text="Button" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
        </asp:View>
        <asp:View ID="View2" runat="server">
            Ingrese informacion Cliente<br /> 
            <p>
                Nombre:
                <input name="usuario0" type="text"></input></p>
            <p>
                DNI:
                <input name="pass0" type="password"></input></p>
            <p>
                <asp:Button ID="Button5" runat="server" OnClick="Button4_Click" Text="Enviar datos" />
            </p>
            <asp:FileUpload ID="FileUpload2" runat="server" Height="45px" Width="279px" />
            <br />
            <asp:Button ID="Button2" runat="server" Height="26px" OnClick="Button1_Click" Text="Button" />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
        </asp:View>
        <asp:View ID="View3" runat="server">
            Seleccione Proveedor<br /> 
            <asp:CheckBoxList ID="chklst" runat="server">
            </asp:CheckBoxList>
            <br />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Button" />
            <br />
            <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
            <br />
        </asp:View>
    </asp:MultiView>

</asp:Content>
