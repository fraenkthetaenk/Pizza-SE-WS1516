using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class Unregister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUnregister_Click(object sender, EventArgs e)
        {
            int i = 0;
            bool found = false;
            bll.clsUserFacade Users = new bll.clsUserFacade();
            List<bll.clsUser> List;
            List = Users.UsersGetAll();

            while (i < List.Count && found == false)
            {
                if (inUsername.Text == List.ElementAt(i).Name)
                {
                    found = true;
                }
                else
                {
                    i = i + 1;
                }

            }
            if (found)
            {
                if (inPassword.Text == List.ElementAt(i).Password)
                {
                    List.ElementAt(i).Delete();
                    Response.Redirect("Default.apsx");
                }
                else
                {
                    lblError.Visible = true;
                    lblError.Text = "Das Passwort ist Falsch";
                }
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Das User ist Falsch";
            }
        }
    }
}