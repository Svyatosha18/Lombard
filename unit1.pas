unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql57conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, StdCtrls, DbCtrls, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    MySQL57Connection1: TMySQL57Connection;
    Table: TPageControl;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TabSheet1: TTabSheet;
    Zapros: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
   MySQL57Connection1.Connected:=true;
 except
   ShowMessage('Подключение к БД: ОШИБКА!');
   exit;
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  try
   SQLTransaction1.Active:=true;
 except
   ShowMessage('Транзакция: ОШИБКА!');
   exit;
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
    str_sql : string;
begin
  try
   SQLQuery1.Active := false;
   SQLQuery1.SQL.Clear;
   str_sql := 'SET character_set_client='+#39+'utf8'+#39+',character_set_connection='+#39+'cp1251'+#39+',character_set_results='+#39+'utf8'+#39+';';
   SQLQuery1.sql.add(str_sql);
   SQLQuery1.ExecSQL;
   SQLQuery1.SQL.Clear;
   SQLQuery1.sql.add('SELECT * FROM base_sheet;');
   SQLQuery1.Open;
  except
   ShowMessage('SQL-запрос: ОШИБКА!');
   exit;
 end;
   DBGrid1.Columns[0].Width:=20;
   DBGrid1.Columns[1].Width:=220;
   DBGrid1.Columns[2].Width:=180;
   DBGrid1.Columns[3].Width:=80;
   DBGrid1.Columns[4].Width:=150;
   DBGrid1.Columns[5].Width:=100;
   DBGrid1.Columns[6].Width:=80;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  SQLQuery1.Active:=false;
  SQLTransaction1.Commit;
  MySQL57Connection1.Connected:=false;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
    str_sql : string;
begin
  try
    SQLQuery1.Active := false;
    SQLQuery1.SQL.Clear;
    str_sql := Memo1.Lines.Text;
    SQLQuery1.sql.add(str_sql);
    SQLQuery1.Open;
  except
   ShowMessage('SQL-запрос: ОШИБКА!');
  end;
end;



end.

