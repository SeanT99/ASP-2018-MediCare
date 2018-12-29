using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_EditProfile_Auth : System.Web.UI.Page
{
    SecurityQuestion q = new SecurityQuestion();
    String question1, question2;
    protected void Page_Load(object sender, EventArgs e)
    {
        //retrieve the security qns and answer
        q.SecurityQuestionGet("ADMIN"); //TODO change to the current user
        //TODO generate 2 random numbers
        string[] ran = ranNum();

        //set the security questions to the labels
        if (ran[0] == "1")
        {
            question1 = q.Sec_qn1;
        }
        else if (ran[0] == "2")
        {
            question1 = q.Sec_qn2;
        }
        else if (ran[0] == "3")
        {
            question1 = q.Sec_qn3;
        }

        if (ran[1] == "1")
        {
            question2 = q.Sec_qn1;
        }
        else if (ran[1] == "2")
        {
            question2 = q.Sec_qn2;
        }
        else if (ran[1] == "3")
        {
            question2 = q.Sec_qn3;
        }

        Q1Lbl.Text = question1;
        Q2Lbl.Text = question2;

    }

    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        //TODO check ans
    }

    /*
    public int[] ranNum()
    {
        int length = 1;
        const string valid = "123";
        StringBuilder res = new StringBuilder();
        Random rnd = new Random();

        int a = valid[rnd.Next(valid.Length)];
        res.Append(a);

        int pos = a-1;
        valid.Remove(pos, 1);

        int b = valid[rnd.Next(valid.Length)];

        int[] num = new int[] { a, b };
        return num;
    }
    */


    public string[] ranNum()
    {
        //get a value
        string valid = "123";
        string a = ran(valid);
        //remove a from valid
        if (a == "1")
            valid = "23";
        else if (a == "2")
            valid = "13";
        else if (a == "3")
            valid = "12";
        //get b value
        string b = ran(valid);

        Debug.Write(a + b);
        
        string[] result = new string[] { a, b };
        return result;
    }

    public string ran(string valid)
    {
        StringBuilder res = new StringBuilder();
        Random rnd = new Random();
        
        res.Append(valid[rnd.Next(valid.Length)]);
        
        return res.ToString();
    }
}