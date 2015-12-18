unit qq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    MakeM: TButton;
    Label6: TLabel;
    dim: TEdit;
    btn1: TButton;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    Chart1: TChart;
    Series1: TBarSeries;
    procedure MakeMClick(Sender: TObject);
    procedure NullsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;
  M: Array[1..10,1..10] of TEdit;
  vals: Array[1..10] of Integer;


implementation

{$R *.dfm}


procedure TForm1.MakeMClick(Sender: TObject);
var n, i, j: Integer;
var B: TEdit;
begin
     n:=StrToInt(dim.text);
     for i:=1 to n do
     begin
         for j:=1 to n do
         begin
            B := TEdit.Create(ts1);
            B.Name := Format('Button%d%d', [i, j]);
            B.Parent := ts1;
            B.Height := 45;
            B.Width := 100;
            B.Left := 80 + j * 110;
            B.Top := 110 + i * 50;
            B.Text := Format('%d%d', [i, j]);
            B.Visible := True;
            M[i][j] := B;
         end;

     end;
end;

procedure TForm1.NullsClick(Sender: TObject);
var n, i, x: Integer;
begin
    n:=StrToInt(dim.text);
    for i:=1 to n do
    begin
         x := StrToInt(M[i,i].Text);
         if x < 0 then
         begin
            vals[i] := x*-1;
            M[i,i].Text := '0';
         end;
    end;
    FormCreate(Chart1);
end;

procedure TForm1.FormCreate(Sender: TObject);
  var i, n: Integer;
 begin
    n:=StrToInt(dim.text);
    for i := 1 to n do Chart1.Series[0].Add(vals[i],Format('col = %d, row = %d', [i, i])) ;
 end;

end.
