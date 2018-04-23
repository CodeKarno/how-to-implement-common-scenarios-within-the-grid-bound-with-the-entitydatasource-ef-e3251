﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ServerMode.aspx.cs" Inherits="ServerMode" %>
<%@ Register Assembly="DevExpress.Web.v10.2.Linq, Version=10.2.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Data.Linq" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.2, Version=10.2.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="mainForm" runat="server">
    <div>
        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="serverModeDataSource"
            KeyFieldName="ProductID">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="ProductID" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="3">
                </dx:GridViewDataCheckColumn>
            </Columns>
        </dx:ASPxGridView>
    </div>
    <dx:LinqServerModeDataSource ID="serverModeDataSource" runat="server" OnSelecting="serverModeDataSource_Selecting" />
    </form>
</body>
</html>
