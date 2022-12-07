Imports Microsoft.VisualBasic
Imports DevExpress.Web
Imports System
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class [Default]
	Inherits System.Web.UI.Page
	Protected Sub ASPxFormLayout1_DataBinding(ByVal sender As Object, ByVal e As EventArgs)
		Dim fl As ASPxFormLayout = TryCast(sender, ASPxFormLayout)
		Dim container As DataViewItemTemplateContainer = TryCast(fl.NamingContainer, DataViewItemTemplateContainer)

		fl.DataSource = container.DataItem
	End Sub

	Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
		Dim b As ASPxButton = TryCast(sender, ASPxButton)
		Dim container As DataViewItemTemplateContainer = TryCast(b.NamingContainer, DataViewItemTemplateContainer)

		Dim fl As ASPxFormLayout = TryCast(container.FindControl("ASPxFormLayout1"), ASPxFormLayout)

		For Each par As Parameter In SqlDataSource1.UpdateParameters
			Dim item As LayoutItem = TryCast(fl.FindItemByFieldName(par.Name), LayoutItem)

			For Each control As Control In item.Controls
				Dim editor As ASPxEdit = TryCast(control, ASPxEdit)
				If editor IsNot Nothing AndAlso editor.Value IsNot Nothing Then
					par.DefaultValue = editor.Value.ToString()
				End If
			Next control
		Next par

		'SqlDataSource1.Update(); //editing not allowed in the examples running online. please uncomment this line in your real application
	End Sub
End Class