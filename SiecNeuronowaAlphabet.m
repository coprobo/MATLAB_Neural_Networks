
%Skrypt rozwiazuje problem rozpoznawania pisma
%   x - input data, czyli dane treningowe nasz dataset 45000
%   t - target data, czyli labele danych treningowych

x = double(Train45000Rev);
t = Train45000L;

% Funkcja uzyta do treningu
trainFcn = 'trainscg';  % Scaled conjugate gradient backpropagation.

% SSN
%"To calculate the number of hidden nodes we use a general rule of: 
%(Number of inputs + outputs) * (2/3)"
%1024+52*2/3=717
hiddenLayerSize = 717;
net = patternnet(hiddenLayerSize);

%Podzial danych na Treningowe, Walidacyjne i Testowe
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

% Trening
[net,tr] = train(net,x,t);

% Test
y = net(x);
e = gsubtract(t,y);
performance = perform(net,t,y)
tind = vec2ind(t);
yind = vec2ind(y);
percentErrors = sum(tind ~= yind)/numel(tind);

% SSN
view(net)

% Wykresy
%figure, plotperform(tr)
%figure, plottrainstate(tr)
%figure, ploterrhist(e)

%Confusion Matrix
%figure, plotconfusion(t,y)

%figure, plotroc(t,y)

