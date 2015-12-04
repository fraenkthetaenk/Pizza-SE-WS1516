using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            int i = 0;
            bool found = false;
            bll.clsUserFacade Users = new bll.clsUserFacade();
            List<bll.clsUser> List;
            List = Users.UsersGetAll();

            while (i < List.Count && found == false)
            {
                if (inUser.Text == List.ElementAt(i).Name)
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
                    Session.RemoveAll();

                    Session.Add("Current User", List.ElementAt(i));
                    Response.Redirect("default.aspx");
                }
                else
                {
                    lblError.Visible = true;
                    lblError.Text = "Das Passwort ist nicht korrekt.";
                }
            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Dieser User existiert nicht.";
            }





        }
    }
}