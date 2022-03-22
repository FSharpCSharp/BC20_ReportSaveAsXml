
pageextension 50100 "CustomerListExt" extends "Customer List"
{
    actions
    {
        addlast(General)
        {
            action(ReportXmlTest)
            {
                ApplicationArea = All;
                Caption = 'Report Xml Test';
                Image = Report2;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                var
                    FileName: Text;
                    RequestXml: Text;
                    TempBlob: Codeunit "Temp Blob";
                    IStream: InStream;
                    OStream: OutStream;
                begin
                    RequestXml := Report.RunRequestPage(Report::"Test Report");
                    TempBlob.CreateOutStream(OStream);
                    Report.SaveAs(Report::"Test Report", RequestXml, ReportFormat::Xml, OStream);
                    TempBlob.CreateInStream(IStream);
                    FileName := 'Report.xml';
                    DownloadFromStream(IStream, '', '', '', FileName);
                end;
            }
        }
    }
}