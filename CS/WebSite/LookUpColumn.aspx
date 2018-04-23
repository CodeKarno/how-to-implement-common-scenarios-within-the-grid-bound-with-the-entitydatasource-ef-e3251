﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LookUpColumn.aspx.cs" Inherits="LookUpColumn" %>
<%@ Register Assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
    Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>
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
        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="eds"
            KeyFieldName="ProductID">
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0">
                    <EditButton Visible="True">
                    </EditButton>
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="ProductID" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="4">
                </dx:GridViewDataCheckColumn>
                <dx:GridViewDataComboBoxColumn Caption="Category" FieldName="Categories.CategoryID"
                    VisibleIndex="5">
                    <PropertiesComboBox DataSourceID="lookupDS" TextField="CategoryName" ValueField="CategoryID"
                        ValueType="System.Int32">
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
            </Columns>
        </dx:ASPxGridView>
    </div>
    <!--Grid DataSource-->
    <asp:EntityDataSource ID="eds" runat="server" ConnectionString="name=NorthwindEntities"
        DefaultContainerName="NorthwindEntities" EntitySetName="Products" EnableUpdate="True">
    </asp:EntityDataSource>
    <!---->
    <!--ComboBoxColumn DataSource-->
    <asp:EntityDataSource ID="lookupDS" runat="server" ConnectionString="name=NorthwindEntities"
        DefaultContainerName="NorthwindEntities" EntitySetName="Categories" Select="it.[CategoryID], it.[CategoryName]">
    </asp:EntityDataSource>
    <!---->
    </form>
</body>
</html>