using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cliente_proovedor
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                chklst.Items.Add("CocaCola");
                chklst.Items.Add("Backus");
                chklst.Items.Add("Pepsi");
                chklst.Items.Add("ISM");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(@"D:\Repos Desarrollo de Aplicaciones\Cliente proovedor\archivos\" + FileUpload1.FileName);
                HyperLink1.Text = FileUpload1.FileName;
                HyperLink1.NavigateUrl = @"archivos/" + FileUpload1.FileName;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(@"D:\Repos Desarrollo de Aplicaciones\Cliente proovedor\archivos\" + FileUpload2.FileName);
                HyperLink2.Text = FileUpload2.FileName;
                HyperLink2.NavigateUrl = @"archivos/" + FileUpload2.FileName;
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            lblResult.Text = "El proovedor es: <base>";
            foreach (ListItem lstItem in chklst.Items)
            {
                if (lstItem.Selected == true)
                    lblResult.Text += "<br/>" + lstItem.Text;
            }
            lblResult.Text += "<br/>";
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = Int32.Parse(RadioButtonList1.SelectedValue);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label1.Text = "Los datos del cliente son";
            
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            lblResult.Text = "Tu escogiste: <base>";
            foreach (ListItem lstItem in chklst.Items)
            {
                if (lstItem.Selected == true)
                    lblResult.Text += "<br/>" + lstItem.Text;
            }
            lblResult.Text += "<br/>";
        }
    }
}