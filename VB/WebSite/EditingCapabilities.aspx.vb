Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxGridView

Partial Public Class EditingCapabilities
	Inherits System.Web.UI.Page
	Protected Sub grid_DataBinding(ByVal sender As Object, ByVal e As EventArgs)
        TryCast(sender, ASPxGridView).ForceDataRowType(GetType(NorthwindModel.Categories))
	End Sub
End Class