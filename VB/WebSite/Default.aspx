<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxDataView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxFormLayout" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<dx:ASPxDataView ID="ASPxDataView1" runat="server" ColumnCount="1" DataSourceID="SqlDataSource1" RowPerPage="1">
			<SettingsFlowLayout ItemsPerPage="1" />
			<SettingsTableLayout ColumnCount="1" RowsPerPage="1" />
			<PagerSettings ShowNumericButtons="False"></PagerSettings>
			<ItemTemplate>
				<dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" OnDataBinding="ASPxFormLayout1_DataBinding">
				</dx:ASPxFormLayout>
				<dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="Update">
				</dx:ASPxButton>
			</ItemTemplate>
		</dx:ASPxDataView>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.;Initial Catalog=Northwind;Integrated Security=True" DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeID] = @EmployeeID" InsertCommand="INSERT INTO [Employees] ([LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone]) VALUES (@LastName, @FirstName, @Title, @TitleOfCourtesy, @BirthDate, @HireDate, @Address, @City, @Region, @PostalCode, @Country, @HomePhone)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone] FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [LastName] = @LastName, [FirstName] = @FirstName, [Title] = @Title, [TitleOfCourtesy] = @TitleOfCourtesy, [BirthDate] = @BirthDate, [HireDate] = @HireDate, [Address] = @Address, [City] = @City, [Region] = @Region, [PostalCode] = @PostalCode, [Country] = @Country, [HomePhone] = @HomePhone WHERE [EmployeeID] = @EmployeeID">
			<DeleteParameters>
				<asp:Parameter Name="EmployeeID" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="LastName" Type="String" />
				<asp:Parameter Name="FirstName" Type="String" />
				<asp:Parameter Name="Title" Type="String" />
				<asp:Parameter Name="TitleOfCourtesy" Type="String" />
				<asp:Parameter Name="BirthDate" Type="DateTime" />
				<asp:Parameter Name="HireDate" Type="DateTime" />
				<asp:Parameter Name="Address" Type="String" />
				<asp:Parameter Name="City" Type="String" />
				<asp:Parameter Name="Region" Type="String" />
				<asp:Parameter Name="PostalCode" Type="String" />
				<asp:Parameter Name="Country" Type="String" />
				<asp:Parameter Name="HomePhone" Type="String" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="LastName" Type="String" />
				<asp:Parameter Name="FirstName" Type="String" />
				<asp:Parameter Name="Title" Type="String" />
				<asp:Parameter Name="TitleOfCourtesy" Type="String" />
				<asp:Parameter Name="BirthDate" Type="DateTime" />
				<asp:Parameter Name="HireDate" Type="DateTime" />
				<asp:Parameter Name="Address" Type="String" />
				<asp:Parameter Name="City" Type="String" />
				<asp:Parameter Name="Region" Type="String" />
				<asp:Parameter Name="PostalCode" Type="String" />
				<asp:Parameter Name="Country" Type="String" />
				<asp:Parameter Name="HomePhone" Type="String" />
				<asp:Parameter Name="EmployeeID" Type="Int32" />
			</UpdateParameters>
		</asp:SqlDataSource>
	</form>
</body>
</html>