function [ Result ] = Conversion( Dataset, IterationNr )
%Dataset to macierz 1024xN zdjec z tlem bialym
%IterationNr to "N", czyli ilosc zdjec w macierzy

%Odwrocenie kolorow
for i=1:IterationNr
    I=vec2mat(Dataset(:,i),32);
    I=imcomplement(I);
    I=I';
    J(1:1024,i) = reshape(I,[],1);
end

Dataset = J;

%konwersja na double do 4 miejsc po przecinku
Dataset=double(Dataset)/255;
Result = round(Dataset,4);

end

