%Zaokraglam do 4 miejsc po przecinku
Out = round(Out,4);
%Dodaje wiersz na pola nieuzupelnione
Out2 = zeros(53,20);
Out2(1:52,:) = Out;

%Wykrywam nieuzupelnione pola wniosku tabelarycznego
for j=1:20
    if Out2(1,j) == 0.0099
        Out2(1:52,j) = 0;
        Out2(53,j) = 100;
    end
end

[M3,I3] = max(Out2);
Text = I3;

for i=1:20
    if Text(i)== 53
        continue
    elseif Text(i)==1
        disp('A')
    elseif Text(i)==2
        disp('B')
    elseif Text(i)==3
        disp('C')
    elseif Text(i)==4
        disp('D')
    elseif Text(i)==5
        disp('E')
    elseif Text(i)==6
        disp('F')
    elseif Text(i)==7
        disp('G')
    elseif Text(i)==8
        disp('H')
    elseif Text(i)==9
        disp('I')
    elseif Text(i)==10
        disp('J')
    elseif Text(i)==11
        disp('K')
    elseif Text(i)==12
        disp('L')
    elseif Text(i)==13
        disp('M')
    elseif Text(i)==14
        disp('N')
    elseif Text(i)==15
        disp('O')
    elseif Text(i)==16
        disp('P')
    elseif Text(i)==17
        disp('Q')
    elseif Text(i)==18
        disp('R')
    elseif Text(i)==19
        disp('S')
    elseif Text(i)==20
        disp('T')
    elseif Text(i)==21
        disp('U')
    elseif Text(i)==22
        disp('V')
    elseif Text(i)==23
        disp('W')
    elseif Text(i)==24
        disp('X')
    elseif Text(i)==25
        disp('Y')
    elseif Text(i)==26
        disp('Z')
    elseif Text(i)==27
        disp('A')
    elseif Text(i)==28
        disp('B')
    elseif Text(i)==29
        disp('C')
    elseif Text(i)==30
        disp('D')
    elseif Text(i)==31
        disp('E')
    elseif Text(i)==32
        disp('F')
    elseif Text(i)==33
        disp('G')
    elseif Text(i)==34
        disp('H')
    elseif Text(i)==35
        disp('I')
    elseif Text(i)==36
        disp('J')
    elseif Text(i)==37
        disp('K')
    elseif Text(i)==38
        disp('L')
    elseif Text(i)==39
        disp('M')
    elseif Text(i)==40
        disp('N')
    elseif Text(i)==41
        disp('O')
    elseif Text(i)==42
        disp('P')
    elseif Text(i)==43
        disp('Q')
    elseif Text(i)==44
        disp('R')
    elseif Text(i)==45
        disp('S')
    elseif Text(i)==46
        disp('T')
    elseif Text(i)==47
        disp('U')
    elseif Text(i)==48
        disp('V')
    elseif Text(i)==49
        disp('W')
    elseif Text(i)==50
        disp('X')
    elseif Text(i)==51
        disp('Y')
    elseif Text(i)==52
        disp('Z')
    else
    end
       
end