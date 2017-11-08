function [ targetsd ] = DummyLabels( labels )
%funkcja zwraca macierz utworzona z labeli, przyjmuje wektor labeli np:
%Training_labels albo Test_labels

%Funkcja Tworzy macierz dummyvariable gdzie vector z labelami zamienia na
%zerojedynkowa macierz z labelami
labels=double(labels);
targets=labels;
targetsd=dummyvar(targets);
targetsd=targetsd';

end

