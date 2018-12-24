using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Nurse_PatientInfoListing : System.Web.UI.Page
{   
    PatientInfo a = new PatientInfo();
    MailUtilities mail = new MailUtilities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }




    protected void bind()
    {
        List<PatientInfo> patients = new List<PatientInfo>();
        patients = a.PatientListGet();
        gvPatient.DataSource = patients;
        gvPatient.DataBind();
    }

    protected void gvPatient_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Get the currently selected row.
        GridViewRow row = gvPatient.SelectedRow;
        // Get patient ID from the selected row, which is the
        // first row, i.e. index 0.
        string id = row.Cells[0].Text;
        // Redirect to next page, with the patient Id added to the URL,
        // e.g. ProductDetails.aspx?ProdID=1
        Response.Redirect("PatientManagement_Details.aspx?ID=" + id);
    }




    protected void gvPatient_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        // Get the currently selected row.
        string deleteid = gvPatient.DataKeys[e.RowIndex].Value.ToString();

        //TODO: add verification step for delete command

        //get the patient's email and name
        PatientInfo x = a.PatientInfoGet(deleteid);
        string email = x.Email;
        string name = x.Given_Name;

        //send delete command
        int result = a.PatientDelete(deleteid);
        
        if (result > 0)
        {
            Response.Write("<script>alert('Patient Removed successfully');</script>");

            //send email
            mail.sendDeletedMail(email,name);
        }
        else {
            Response.Write("<script>alert('Product Removal NOT successful');</script>");
        }
        Response.Redirect("PatientManagement_List.aspx");
    }
}