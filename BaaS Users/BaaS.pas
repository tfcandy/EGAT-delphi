unit BaaS;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, IPPeerClient,
  REST.Backend.ServiceTypes, REST.Backend.MetaTypes, System.JSON,
  REST.Backend.KinveyServices, REST.Backend.Providers,
  REST.Backend.ServiceComponents, REST.Backend.KinveyProvider, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm4 = class(TForm)
    username: TEdit;
    password: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lastAction: TLabel;
    CreateUserButton: TButton;
    KinveyProvider1: TKinveyProvider;
    BackendUsers1: TBackendUsers;
    procedure CreateUserButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TForm4.CreateUserButtonClick(Sender: TObject);
var
LEntity: TBackendEntityValue;
begin
  BackendUsers1.Users.SignupUser(username.Text, password.Text, nil, LEntity);
  ShowMessage('New user created, with username: '+username.Text);
  lastAction.Text:=('Last user created: '+username.Text);

end;

end.
