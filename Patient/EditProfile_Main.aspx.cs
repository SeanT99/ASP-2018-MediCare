using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text.RegularExpressions;//for regex

public partial class Patient_EditProfile_Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    Boolean valid = true;
    //---------------------------------------------------VALIDATORS---------------------------------------------------------

    //Validate the dob make sure dob is before todays date
    protected void dobValid_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string enteredDob = dobTB.Text;

        DateTime dob = DateTime.Parse(enteredDob);
        DateTime now = DateTime.Now;

        int result = DateTime.Compare(dob, now);

        //result<0 t1 earlier than t2
        //result=0 t1 same as t2
        //result>0 t1 later than t2

        if (result > 0)
        {
            args.IsValid = false;
            valid = false;

        }
        else args.IsValid = true;

    }


    //for NRIC validation
    protected void cusCustom_ServerValidateNRIC(object sender, ServerValidateEventArgs e)
    {
        if (idDDL.SelectedItem.Text == "NRIC")
        {
            if (e.Value == null || e.Value == "")
            {
                e.IsValid = false;
                valid = false;
            }

            else if (isValidSgFin(e.Value))
                e.IsValid = true;
        }

        else if (e.Value == null || e.Value == "")
        {
            e.IsValid = false;
            valid = false;
        }

        else
            e.IsValid = true;
    }

    public static bool isValidSgFin(string strValueToCheck)
    {
        strValueToCheck = strValueToCheck.Trim();

        Regex objRegex = new Regex("^(s|t)[0-9]{7}[a-jz]{1}$", RegexOptions.IgnoreCase);

        if (!objRegex.IsMatch(strValueToCheck))
        {
            return false;
        }

        string strNums = strValueToCheck.Substring(1, 7);

        int intSum = 0;
        int checkDigit = 0;
        string checkChar = "";
        intSum = Convert.ToUInt16(strNums.Substring(0, 1)) * 2;
        intSum = intSum + (Convert.ToUInt16(strNums.Substring(1, 1)) * 7);
        intSum = intSum + (Convert.ToUInt16(strNums.Substring(2, 1)) * 6);
        intSum = intSum + (Convert.ToUInt16(strNums.Substring(3, 1)) * 5);
        intSum = intSum + (Convert.ToUInt16(strNums.Substring(4, 1)) * 4);
        intSum = intSum + (Convert.ToUInt16(strNums.Substring(5, 1)) * 3);
        intSum = intSum + (Convert.ToUInt16(strNums.Substring(6, 1)) * 2);

        if (strValueToCheck.Substring(0, 1).ToLower() == "t")
        {
            //prefix T
            intSum = intSum + 4;
        }

        checkDigit = 11 - (intSum % 11);

        checkChar = strValueToCheck.Substring(8, 1).ToLower();

        if (checkDigit == 1 && checkChar == "a")
        {
            return true;
        }
        else if (checkDigit == 2 && checkChar == "b")
        {
            return true;
        }
        else if (checkDigit == 3 && checkChar == "c")
        {
            return true;
        }
        else if (checkDigit == 4 && checkChar == "d")
        {
            return true;
        }
        else if (checkDigit == 5 && checkChar == "e")
        {
            return true;
        }
        else if (checkDigit == 6 && checkChar == "f")
        {
            return true;
        }
        else if (checkDigit == 7 && checkChar == "g")
        {
            return true;
        }
        else if (checkDigit == 8 && checkChar == "h")
        {
            return true;
        }
        else if (checkDigit == 9 && checkChar == "i")
        {
            return true;
        }
        else if (checkDigit == 10 && checkChar == "z")
        {
            return true;
        }
        else if (checkDigit == 11 && checkChar == "j")
        {
            return true;
        }
        else
        {
            return false;
        }
    }

}