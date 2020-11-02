using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login2
{
    public partial class electricty_pay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "")
            {
                Label1.Text = "Please select your city";
            }
            else
            { 
                Response.Redirect("after elect.aspx?state=" + DropDownList1.SelectedValue);
            }
        }
    }
}