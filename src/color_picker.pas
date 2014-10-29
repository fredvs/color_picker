program color_picker;

uses
  fpg_style_chrome_silver,
  fpg_stylemanager,
   fpg_main, frm_main_colorpicker;

procedure MainProc;
var
  frm: TColorPickerForm;

begin
  fpgApplication.Initialize;
  if fpgStyleManager.SetStyle('Chrome silver') then
   fpgStyle := fpgStyleManager.Style;
   frm := TColorPickerForm.Create(nil);
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


