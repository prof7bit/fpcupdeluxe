{ Implements Common.Utils

  MIT License

  Copyright (c) 2021 Gustavo Carreno <guscarreno@gmail.com>

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to
  deal in the Software without restriction, including without limitation the
  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
  sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
  IN THE SOFTWARE.
}
unit DPB.Common.Utils;

{$mode objfpc}{$H+}

interface

uses
  SysUtils
;

function FormatBytes(ABytes: Int64): String;

implementation

function FormatBytes(ABytes: Int64): String;
var
  dSize: Double;
begin
  Result := '';
  dSize := 0.0;
  if ABytes < 1024 then
  begin
    Result := IntToStr(ABytes) + ' B';
    exit;
  end;
  if ABytes < (1024*1024) then
  begin
    dSize := ABytes / 1024;
    Result := FormatFloat('0.00', dSize) + ' KB';
    exit;
  end;
  if ABytes < (1024*1024*1024) then
  begin
    dSize := ABytes / 1024 / 1024;
    Result := FormatFloat('0.00', dSize) + ' MB';
    exit;
  end;
  if ABytes < (1024*1024*1024*1024) then
  begin
    dSize := ABytes / 1024 / 1024 / 1024;
    Result := FormatFloat('0.00', dSize) + 'GB';
    exit;
  end;
  if ABytes < (1024*1024*1024*1024*1024) then
  begin
    dSize := ABytes / 1024 / 1024 / 1024 / 1024;
    Result := FormatFloat('0.00', dSize) + ' TB';
  end;
end;

end.

