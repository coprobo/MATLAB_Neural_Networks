%% Czyszczenie
clear ; close all; clc
%SKRYPT WYKONUJE SIE DLUGO OK.10MIN
%SPOWODOWANE WIELKOSCIA I ILOSCIA OBRAZOW --> 52832 PLIKI W FORMACIE .PNG
%O ROZMIARZE 128X128 PIKSELI
%POWSTA£Y DATASET ZAPISANY W POSTACI PLIKU MATLAB, DO DALSZYCH OBLICZEN
%WYKORZYSTUJE UTWORZONY I ZAPISANY DATASET

%%
%laduje dane (obrazy) i labele

%%OPIS PETLI FOR

%Podaje sciezke do folderu ze zdjeciami i laduje je wsystkie po kolei
%uzywam FUNKCJI LoadImages zeby zaczytac obraz z danego folderu
%Iteruje po folderach "Sample 11-62" i funkcja LoadImages po zdjeciach w kazdym folderze

for j=11:62
    fullFileName = sprintf('C:\\Users\\Piotrek\\Desktop\\Praca inzynierska\\DataSet\\Sample0%d', j);
    if j==11
        A=LoadImages(fullFileName,j);
    elseif j==12
        B=LoadImages(fullFileName,j);
    elseif j==13
        C=LoadImages(fullFileName,j);
    elseif j==14
        D=LoadImages(fullFileName,j);
    elseif j==15
        E=LoadImages(fullFileName,j);
    elseif j==16
        F=LoadImages(fullFileName,j);
    elseif j==17
        G=LoadImages(fullFileName,j);
    elseif j==18
        H=LoadImages(fullFileName,j);
    elseif j==19
        I=LoadImages(fullFileName,j);
    elseif j==20
        J=LoadImages(fullFileName,j);
    elseif j==21
        K=LoadImages(fullFileName,j);
    elseif j==22
        L=LoadImages(fullFileName,j);
    elseif j==23
        M=LoadImages(fullFileName,j);
    elseif j==24
        N=LoadImages(fullFileName,j);
    elseif j==25
        O=LoadImages(fullFileName,j);
    elseif j==26
        P=LoadImages(fullFileName,j);
    elseif j==27
        Q=LoadImages(fullFileName,j);
    elseif j==28
        R=LoadImages(fullFileName,j);
    elseif j==29
        S=LoadImages(fullFileName,j);
    elseif j==30
        T=LoadImages(fullFileName,j);
    elseif j==31
        U=LoadImages(fullFileName,j);
    elseif j==32
        V=LoadImages(fullFileName,j);
    elseif j==33
        W=LoadImages(fullFileName,j);
    elseif j==34
        X=LoadImages(fullFileName,j);
    elseif j==35
        Y=LoadImages(fullFileName,j);
    elseif j==36
        Z=LoadImages(fullFileName,j);
    elseif j==37
        a=LoadImages(fullFileName,j);
    elseif j==38
        b=LoadImages(fullFileName,j);
    elseif j==39
        c=LoadImages(fullFileName,j);
    elseif j==40
        d=LoadImages(fullFileName,j);
    elseif j==41
        e=LoadImages(fullFileName,j);
    elseif j==42
        f=LoadImages(fullFileName,j);
    elseif j==43
        g=LoadImages(fullFileName,j);
    elseif j==44
        h=LoadImages(fullFileName,j);
    elseif j==45
        ii=LoadImages(fullFileName,j);
    elseif j==46
        jj=LoadImages(fullFileName,j);
    elseif j==47
        k=LoadImages(fullFileName,j);
    elseif j==48
        l=LoadImages(fullFileName,j);
    elseif j==49
        m=LoadImages(fullFileName,j);
    elseif j==50
        n=LoadImages(fullFileName,j);
    elseif j==51
        o=LoadImages(fullFileName,j);
    elseif j==52
        p=LoadImages(fullFileName,j);
    elseif j==53
        q=LoadImages(fullFileName,j);
    elseif j==54
        r=LoadImages(fullFileName,j);
    elseif j==55
        s=LoadImages(fullFileName,j);
    elseif j==56
        t=LoadImages(fullFileName,j);
    elseif j==57
        u=LoadImages(fullFileName,j);
    elseif j==58
        v=LoadImages(fullFileName,j);
    elseif j==59
        w=LoadImages(fullFileName,j);
    elseif j==60
        x=LoadImages(fullFileName,j);
    elseif j==61
        y=LoadImages(fullFileName,j);
    elseif j==62
        z=LoadImages(fullFileName,j);
    end
end
%%

%ALPHABET

%Tworze dataset Alphabet
Alphabet=cat(2,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,ii,jj,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z);

%%

%LABELE

%Tworze labele do datasetu Alphabet
%1-26 to duze litery 27-52 to male litery
k=1;
for i=1:52
    for j=k:k+1015
        Alphabet_labels(j,1)=i;
    end
    k=j+1;
end
%%

%Lacze Alfabet i Labele
Alphabet_labels=Alphabet_labels';
Alphabet_Joined=cat(1,Alphabet,Alphabet_labels);

%Tworze randomowy dataset
%ostatni element w kolumnie to label danego zdjecia 1-26 A-Z 27-52 a-z
rnd_variable=randperm(52832,52832);
Alphabet_Training=Alphabet_Joined(:,rnd_variable(1:52832));

%odczytuje labele i tworze oddzielne wektory
Training_labels=Alphabet_Training(1025,:);

%Usuwam labele z datasetu
Alphabet_Training=Alphabet_Training(1:1024,:);


%%

%Tworze macierz dummy labels
dTraining=DummyLabels(Training_labels);

%%
%KONIEC