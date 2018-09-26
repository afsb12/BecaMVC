using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web1
{
    public partial class Index : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            string dia = "ontem";
            text1.Text = "Esse é mais legal";
            text2.Value = "foi?";
            if (dia == "hoje")
            {
                StartDiv.Style.Add("display","");
                TextDiv.Style.Add("display", "block");
            }
            else
            {
                StartDiv.Style.Add("display", "block");
                TextDiv.Style.Add("display", "none");
            }
            
        }
    }
}