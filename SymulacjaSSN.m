%Laduje uzupelniony wniosek tabelaryczny
%Wczytuje zdjecie 1300x260 (skan wniosku tabelarycznego)
ImageName = sprintf('ADAM NOWAK.png');

%Rozbijam zdjecie na 20elementow 32x32piksele
imgSSN = PrepareImage(ImageName);

%Zamieniam kolory i rzutuje 0-255 na 0-1
imgSSN = Conversion(imgSSN, 20);

%Symulacja
Out = sim(net,imgSSN);

%Wypisanie tekstu rozpoznanego przez sztuczna siec neuronowa
ShowSignature