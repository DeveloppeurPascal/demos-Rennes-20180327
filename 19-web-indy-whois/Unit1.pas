(* C2PP
  ***************************************************************************

  Présentation RAD Studio 10.2 Tokyo à Rennes le 27 mars 2018

  Copyright 2018 Patrick PREMARTIN under MIT license.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
  DEALINGS IN THE SOFTWARE.

  ***************************************************************************

  Author(s) :
  Patrick PREMARTIN

  Site :
  https://github.com/DeveloppeurPascal/demos-Paris-20191119-CongresDelphi2019

  Project site :
  https://github.com/DeveloppeurPascal/demos-Rennes-20180327

  ***************************************************************************
  File last update : 2025-10-05T15:59:42.520+02:00
  Signature : d2b7275ea0cf90179fb91176ffaef5760c6f49c0
  ***************************************************************************
*)

unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, FMX.Edit, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdWhois;

type
  TForm1 = class(TForm)
    IdWhois1: TIdWhois;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(IdWhois1.WhoIs(Edit1.Text.trim));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Edit1.SetFocus;
end;

end.
