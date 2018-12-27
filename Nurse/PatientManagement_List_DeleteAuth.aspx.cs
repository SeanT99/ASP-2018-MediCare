﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Nurse_PatientManagement_List_DeleteAuth : System.Web.UI.Page
{
    PatientInfo a = new PatientInfo();
    MailUtilities mail = new MailUtilities();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        //bind the id display tb
        id = Request.QueryString["id"].ToString();
        IDDisplay.Text = id;
        IDDisplay.Attributes.Add("readonly", "readonly");//to redonly the txt box

    }

    protected void executeDelete(String deleteid)
    {
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
            mail.sendDeletedMail(email, name);
        }
        else
        {
            Response.Write("<script>alert('Patient Removal NOT successful');</script>");
        }
    }

    protected void DelConfirmBtn_Click(object sender, EventArgs e)
    {
        //TOOD check if the verification text matches 
        if(VerificationTB.Text == "Delete this patient")
        {
            //TODO check password
            //bool pass = authDelete(id, PasswordTB.Text);
            bool pass = authDelete("S1840779E", PasswordTB.Text);

            if (pass == true)
            {
                executeDelete(id);
                Response.Redirect("PatientManagement_List.aspx");
            }
            else
            {
                //TODO add alert if fail coz password
               // Response.Write("<script>alert('New patient added successfully');</script>");
            }


        }
    }

    protected bool authDelete(string id, string Password)
    {
        bool pass = false;

        string hashStr = "";
        //add the username to the password then hash the summed string
        string ToHashUserLoginInput = id + Password;

        
        PatientInfo LoginInfo = new PatientInfo();
        PatientInfo UserLoginDetails = LoginInfo.GetLoginDetails(id);

        string originalSaltValue = UserLoginDetails.Salt;
        byte[] array = Convert.FromBase64String(originalSaltValue);


        //2. concatenate the plaintext to the salt and hash it (using PBKDF2)
        var pbkdf2 = new Rfc2898DeriveBytes(ToHashUserLoginInput, array, 10000);

        //3. store the hash 
        //place the string in the byte array
        byte[] hash = pbkdf2.GetBytes(20);

        //make new byte array to store the hashed plaintext+salt
        //why 36? cause 20 for hash 16 for salt 
        byte[] hashBytes = new byte[36];
        ////place the salt and hash in their respective places
        Array.Copy(array, 0, hashBytes, 0, 16);
        Array.Copy(hash, 0, hashBytes, 16, 20);

        ////4. convert the byte array to a string
        hashStr = Convert.ToBase64String(hashBytes);
        

        if (hashStr == UserLoginDetails.Login_password && UserLoginDetails.Acctype != "PATIENT   ")
        {
            pass = true;
        }

        return pass;
    }

}