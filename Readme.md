<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to use ASPxDataView with ASPxFormLayout to show records one by one
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4918/)**
<!-- run online end -->


<p>To implement such a functionality, you first need to set up the ASPxDataView so that it shows only one record at a time. To do so, set the Rows and Columns count to 1. Then place ASPxFormLayout into ItemTemplate and handle its DataBinding event to bind it to the ASPxDataView's DataItem. To update edited records, place the ASPxButton under the ASPxFormLayout. On its click, iterate through UpdateParameters of the SqlDataSource and set its values to those from the ASPxFormLayout.</p>

<br/>


