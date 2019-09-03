using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MultiViewEx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;

            //set Province options
            Province.Items.Add("Province");
            Province.Items.Add("British Columbia");
            Province.Items.Add("Alberta");
            Province.Items.Add("Saskatchewan");
            Province.Items.Add("Manitoba");
            Province.Items.Add("Ontario");
            Province.Items.Add("Quebec");
            Province.Items.Add("New Brunswick");
            Province.Items.Add("Price Edward Island");
            Province.Items.Add("Nova Scotia");
            Province.Items.Add("Newfoundland & Labrador");
        }
    }

    protected void GoToStep2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void BackBtn_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Step3Btn_Click(object sender, EventArgs e)
    {
        FirstNameLabel.Text = FirstName.Text;
        LastNameLabel.Text = LastName.Text;
        EmailLabel.Text = Email.Text;
        AddressLabel.Text = Address.Text;
        CityLabel.Text = City.Text;
        ProvinceLabel.Text = Province.Text;
        PostalCodeLabel.Text = PostalCode.Text;
        PhoneLabel.Text = Phone.Text;
        CourseNameLable.Text = CourseName.Text;
        CourseCodeLabel.Text = CourseCode.Text;

        MultiView1.ActiveViewIndex = 2;
    }

    protected void Back2Btn_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    
}