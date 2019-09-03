using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ExerciseOne : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            //set Language options
            Language.Items.Add("Language");
            Language.Items.Add("C#");
            Language.Items.Add("C++");
            Language.Items.Add("Javascript");
            Language.Items.Add("Java");
            Language.Items.Add("Swift");
            Language.Items.Add("HTML");
        }
    }

    protected void Wizard1_NextButton_Click(object sender, WizardNavigationEventArgs e)
    {
        if (e.NextStepIndex == 2)
        {
            Label1.Text = FirstName.Text + " " + LastName.Text + " likes " + Language.Text;

        }
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        Response.Redirect("Thankyou.aspx");
    }

}