unit UAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvTFManager, JvTFGlance, JvTFMonths;

type
  TfrmAgenda = class(TForm)
    JvTFMonths1: TJvTFMonths;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgenda: TfrmAgenda;

implementation

{$R *.dfm}

end.
