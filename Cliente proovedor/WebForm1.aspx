<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Cliente_proovedor.WebForm1" %>

<!DOCTYPE html>

<head>
    <style type="text/css">

table {
  background-color: transparent;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
  }
  td,
th {
  padding: 0;
}
input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  padding: 0;
}
input,
select,
textarea {
    max-width: 280px;
}


input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}
input {
  line-height: normal;
}
button,
input,
optgroup,
select,
textarea {
  color: inherit;
  font: inherit;
  margin: 0;
}
label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: 700;
}
p {
  margin: 0 0 10px;
}
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
input[type="file"] {
  display: block;
}
a {
  color: #337ab7;
  text-decoration: none;
}
  a,
  a:visited {
    text-decoration: underline;
  }
  a {
  background-color: transparent;
}
    </style>
</head>


<form id="form1" runat="server">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
        
        <asp:ListItem Value="0">Producto</asp:ListItem>
        <asp:ListItem Value="1">Cliente</asp:ListItem>
        <asp:ListItem Value="2">Proveedor</asp:ListItem>
    </asp:RadioButtonList>
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

</form>


