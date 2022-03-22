report 50100 "Test Report"
{
    ApplicationArea = All;
    Caption = 'Test Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'TestReport.rdl';

    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            column(SelltoCustomerNo; "Sell-to Customer No.")
            {
            }
            column(No; "No.")
            {
            }
            column(ShiptoCode; "Ship-to Code")
            {
            }
            column(ShiptoName; "Ship-to Name")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
