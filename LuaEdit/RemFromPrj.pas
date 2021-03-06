unit RemFromPrj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Misc;

type
  TfrmRemoveFile = class(TForm)
    btnCancel: TButton;
    btnOk: TButton;
    Label1: TLabel;
    cboUnit: TComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FillCombo(pPrj: TLuaEditProject);
  end;

var
  frmRemoveFile: TfrmRemoveFile;

implementation

{$R *.dfm}

procedure TfrmRemoveFile.FillCombo(pPrj: TLuaEditProject);
var
  x: Integer;
begin
  cboUnit.Clear;
  
  for x := 0 to pPrj.lstUnits.Count - 1 do
  begin
    cboUnit.AddItem(TLuaEditUnit(pPrj.lstUnits.Items[x]).Name, pPrj.lstUnits.Items[x]);
  end;
end;

procedure TfrmRemoveFile.FormShow(Sender: TObject);
begin
  cboUnit.ItemIndex := 0;
end;

end.
