unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNombre: TEdit;
    Label2: TLabel;
    edtArea: TEdit;
    cbTipo: TComboBox;
    Label4: TLabel;
    Label3: TLabel;
    edtAgua: TEdit;
    btnCalcular: TButton;
    btnLimpiar: TButton;
    lblResultado: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    Image2: TImage;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  area: Double;
  aguaPorM2: Double;
  totalAgua: Double;
begin
  area := StrToFloatDef(edtArea.Text, 0);
  aguaPorM2 := StrToFloatDef(edtAgua.Text, 0);
  totalAgua := area * aguaPorM2;
  lblResultado.Caption := 'Consumo total: ' + FloatToStr(totalAgua) + ' litros';
end;

procedure TForm1.btnLimpiarClick(Sender: TObject);
begin
  edtNombre.Clear;
  cbTipo.ItemIndex := -1;
  edtArea.Clear;
  edtAgua.Clear;
  lblResultado.Caption := 'Consumo total: 0 litros';
end;

end.

