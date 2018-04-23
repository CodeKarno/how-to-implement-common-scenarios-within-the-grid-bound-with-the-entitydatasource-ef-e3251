using System;
using DevExpress.Web.ASPxGridView;

public partial class MasterDetail : System.Web.UI.Page {
    protected void gridDetail_BeforePerformDataSelect(object sender, EventArgs e) {
        ASPxGridView gridViewProducts = (ASPxGridView)sender;
        Session["SessionCategoryID"] = gridViewProducts.GetMasterRowKeyValue();
    }
}