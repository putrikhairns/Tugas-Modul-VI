program Soal5;
uses crt;

var
    n, i: integer;

// fungsi a: menghasilkan suku ke 'k' deret fibonacci 
function fibonacci(k: integer): longint;
var
    a, b, temp: longint;
    j: integer;
begin
    a := 1;  // suku ke 1
    b := 1;  // suku ke 2
    
    for j := 1 to k - 1 do
    begin
        temp := a + b;
        a := b;
        b := temp;
    end;
            fibonacci := a;
end;

// fungsi b: menghasilkan suku ke 'k' deret 1,2,4,8,... (2 pangkat k-1)
function pangkat2(k: integer): longint;
var
    hasil: longint;
    j: integer;
begin
    hasil := 1;
    for j := 1 to k - 1 do
        hasil := hasil * 2;  // kalikan 2 sebanyak k-1 kali
    pangkat2 := hasil;
end;

// fungsi c: menghasilkan suku ke 'k' deret kuadrat (k * k)
function kuadrat(k: integer): longint;
begin
    kuadrat := k * k;
end;

// fungsi d: menghasilkan suku ke 'k' deret 2,6,12,... (k * (k+1))
function kaliberikutnya(k: integer): longint;
begin
    kaliberikutnya := k * (k + 1);
end;


begin
clrscr;
    write('masukkan banyak suku: ');
    readln(n);
writeln;

        if n <= 0 then
    begin
        writeln('suku harus lebih dari 0');
    end

        else
    begin
    // deret a: fibonacci 
        for i := 1 to n do
        begin
            write(fibonacci(i));
            if i < n then write(', ');
        end;
    writeln;

    // deret b: 1,2,4,8,...
        for i := 1 to n do
        begin
            write(pangkat2(i));
            if i < n then write(', ');
        end;
    writeln;

    // deret c: 1,4,9,16,...
        for i := 1 to n do
        begin
            write(kuadrat(i));
            if i < n then write(', ');
        end;
    writeln;

        // deret d: 2,6,12,20,30,...
        for i := 1 to n do
        begin
            write(kaliberikutnya(i));
            if i < n then write(', ');
        end;
    writeln;
    end;

readln;
end.

{
metode pengerjaan:
        a. deret fibonacci : 1,1,2,3,5,8,...
    suku ke-i = suku ke (i-1) + suku ke (i-2)
        b. deret 1,2,4,8,16,...
    suku ke-i = 2 pangkat (i-1)
        c. deret 1,4,9,16,25,...
    suku ke-i = i * i (bilangan kuadrat)
        d. deret 2,6,12,20,30,...
    suku ke-i = i * (i+1)
}