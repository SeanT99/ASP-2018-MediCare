using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Nurse_PatientManagement_List_DeleteAuth : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //TODO: bind the id display tb
        IDDisplay.Attributes.Add("readonly", "readonly");//to redonly the txt box
        IDDisplay.Text = "testing123";//set text box value
    }
}