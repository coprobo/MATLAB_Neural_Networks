function [ imgSSN ] = PrepareImage( ImageName )
%Funkcja pobiera nazwe i rozszerzenie pliku tj. "Nazwa.png"
%Nastepnie zwraca macierz 1024x20, czyli 20 zdjec o rozmiarze 32x32
%Które mog¹ byc nastepnie podane do SSN w celu rozpoznania

rgbImage = imread(ImageName);
%przeskalowanie RGB na kolory czarno-biale
grayImage = rgb2gray(rgbImage);

pixel1=2;
pixel2=2;

for iteration1=1:20

    %wczytanie pierwszego wiersza tabeli
    if iteration1<11
        
        %iteracje po kolejnych polach dokumentu tabelarycznego            
        data = grayImage(2:129,pixel1:pixel1+127);
        img(1:16384,iteration1)=reshape(data,[],1);
        image = vec2mat(img(:,iteration1),128);
        %zmiana rozmiaru ze 128x128 na 32x32
        img32x32 = imresize(image,0.25);
        imgSSN(1:1024,iteration1) = reshape(img32x32,[],1);
        pixel1=pixel1+130;
    end
    
    %wczytanie drugiego wiersza tabeli
    if (iteration1>10) && (iteration1<21)
        
        %iteracje po kolejnych polach dokumentu tabelarycznego 
        data = grayImage(132:259,pixel2:pixel2+127);
        img(1:16384,iteration1) = reshape(data,[],1);
        image = vec2mat(img(:,iteration1),128);
        %zmiana rozmiaru ze 128x128 na 32x3
        img32x32 = imresize(image,0.25);
        imgSSN(1:1024,iteration1) = reshape(img32x32,[],1);
        pixel2=pixel2+130;
    end
end

%Funkcja zwraca macierz imgSSN
end

