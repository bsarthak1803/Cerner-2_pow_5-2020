{cerner_2^5_2020}
{Program to validate Pangram}

program Pangram;
var
  i: integer;
  BoolArray: array [1..26] of boolean;
  IsPangram: boolean;
  Input:string;
begin
  writeln('Enter a string');
  readln(Input);
  Input:=lowercase(Input);
  for i:=1 to 26 do
    BoolArray[i]:=false;
  for i:=0 to length(Input) do
    if (((ord(Input[i])-96)<27) and ((ord(Input[i])-96)>0)) then
      BoolArray[ord(Input[i])-96] := true;
  IsPangram:=true;
  for i:=1 to 26 do
    if BoolArray[i]=false then
      IsPangram:=false;
  if IsPangram then
    writeln('Pangram')
  else
    writeln('Not Pangram');
  readln;
end.
