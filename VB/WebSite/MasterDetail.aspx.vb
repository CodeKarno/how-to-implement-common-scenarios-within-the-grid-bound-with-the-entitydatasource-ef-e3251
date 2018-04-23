Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxGridView

Partial Public Class MasterDetail
	Inherits System.Web.UI.Page
	Protected Sub gridDetail_BeforePerformDataSelect(ByVal sender As Object, ByVal e As EventArgs)
		Dim gridViewProducts As ASPxGridView = CType(sender, ASPxGridView)
		Session("SessionCategoryID") = gridViewProducts.GetMasterRowKeyValue()
	End Sub
End Class