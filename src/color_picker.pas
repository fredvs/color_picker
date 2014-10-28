program color_picker;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  fpg_style_chrome_silver,
  fpg_cmdlineparams,
  fpg_stylemanager,
  Classes, fpg_base, fpg_main, frm_colorwheel;

procedure MainProc;
var
  frm: TWheelColorForm;

begin
  fpgApplication.Initialize;
  if not gCommandLineParams.IsParam('style') then
      begin
            if fpgStyleManager.SetStyle('Chrome silver') then
          fpgStyle := fpgStyleManager.Style;
      end;
  frm := TWheelColorForm.Create(nil);
   fpgApplication.MainForm:=frm ;
   try
    frm.Show;
    fpgApplication.Run;
  finally
    frm.Free;

  end;
end;

begin
  MainProc;
end.


