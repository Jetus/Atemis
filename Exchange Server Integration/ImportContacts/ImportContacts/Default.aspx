<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView runat="server" ID="gridData" AutoGenerateColumns="false" OnBeforePerformDataSelect="gridData_BeforePerformDataSelect">
            <Columns>
                <dx:GridViewDataTextColumn Caption="From" FieldName="From">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="To" FieldName="Recipients">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Subject" FieldName="Subject">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
    </div>
    </form>
</body>
</html>
