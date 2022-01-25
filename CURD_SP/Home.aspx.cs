using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CURD_SP
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=VISHWAS-LAPTOP\SQLEXPRESS;Initial Catalog=MyTest_DB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProductList(); 
            }
        }

        // Insert btn 
        protected void Button1_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            string iname = TextBox2.Text, specification = TextBox3.Text, unit = DropDownList1.SelectedValue, status = RadioButtonList1.SelectedValue;
            DateTime cdate = DateTime.Parse(TextBox4.Text);
            con.Open();
            SqlCommand co = new SqlCommand("EXEC ProductSetup_sp '"+productid+ "','" + iname + "','" + specification + "','" + unit + "','" + status + "','" + cdate + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Insert Successfull');", true);
            GetProductList();
        }

        void GetProductList()
        {
            SqlCommand co = new SqlCommand("EXEC ProductList_sp", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            string iname = TextBox2.Text, specification = TextBox3.Text, unit = DropDownList1.SelectedValue, status = RadioButtonList1.SelectedValue;
            DateTime cdate = DateTime.Parse(TextBox4.Text);
            con.Open();
            SqlCommand co = new SqlCommand("EXEC ProductUpdate_sp '" + productid + "','" + iname + "','" + specification + "','" + unit + "','" + status + "','" + cdate + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Update Successfull');", true);
            GetProductList();
        }
    }
}