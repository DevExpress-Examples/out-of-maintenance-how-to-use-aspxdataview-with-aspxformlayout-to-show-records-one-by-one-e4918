using DevExpress.Web.ASPxDataView;
using DevExpress.Web.ASPxEditors;
using DevExpress.Web.ASPxFormLayout;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : System.Web.UI.Page
{
    protected void ASPxFormLayout1_DataBinding(object sender, EventArgs e) {
        ASPxFormLayout fl = sender as ASPxFormLayout;
        DataViewItemTemplateContainer container = fl.NamingContainer as DataViewItemTemplateContainer;

        fl.DataSource = container.DataItem;
    }

    protected void ASPxButton1_Click(object sender, EventArgs e) {
        ASPxButton b = sender as ASPxButton;
        DataViewItemTemplateContainer container = b.NamingContainer as DataViewItemTemplateContainer;

        ASPxFormLayout fl = container.FindControl("ASPxFormLayout1") as ASPxFormLayout;

        foreach (Parameter par in SqlDataSource1.UpdateParameters) {
            LayoutItem item = fl.FindItemByFieldName(par.Name) as LayoutItem;

            foreach (Control control in item.Controls) {
                ASPxEdit editor = control as ASPxEdit;
                if (editor != null && editor.Value != null)
                    par.DefaultValue = editor.Value.ToString();
            }
        }

        //SqlDataSource1.Update(); //editing not allowed in the examples running online. please uncomment this line in your real application
    }
}