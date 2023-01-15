unit FncTvary;

interface

uses
  Types;


function PointInPolygon (P: TPoint; aPolygon: array of TPoint): boolean;
function PointInEllipse(P: TPoint;  R: TRect): boolean;

implementation

uses
  Windows;


function PointInPolygon (P: TPoint; aPolygon: array of TPoint): boolean;
var
  PolyHandle: hRgn;
begin
  PolyHandle := CreatePolygonRgn(aPolygon[0], Length(aPolygon), Winding);
  Result := PtInRegion(PolyHandle, P.X, P.Y);
  DeleteObject(PolyHandle);
end;

function PointInEllipse(P: TPoint;  R: TRect): boolean; 
var
  x0, y0, a, b: integer;
begin
  x0:=(R.Left + R.Right) div 2;
  y0:=(R.Top + R.Bottom) div 2;
  a:=(R.Right - R.Left) div 2;
  b:=(R.Bottom - R.Top) div 2;
  Result := Sqr((P.x-x0)/a)+Sqr((P.y-y0)/b)<=1
end;

end.
