
%JEST TO FUNKCJA!
%Wczytuje pojedyncza litere
%funkcja ta jest wykorzystywana w skrypcue CreateAlphabet
%fullFileName jest to sciezka do folderu z litera

function [ Letter ] = LoadImages( fullFileName, img_nr )
%powinno byc for k=1:1016
for k=1:1016
    if k<10
        jpgFilename = sprintf('img0%d-0000%d.png', img_nr, k);
    elseif (9<k) && (k<100)
        jpgFilename = sprintf('img0%d-000%d.png', img_nr, k);
    elseif (99<k) && (k<1000)
        jpgFilename = sprintf('img0%d-00%d.png', img_nr, k);
    else
        jpgFilename = sprintf('img0%d-0%d.png', img_nr, k);
    end
    
    fullFileName2 = fullfile(fullFileName, jpgFilename);
  if exist(fullFileName2, 'file')
    imageData = imread(fullFileName2 );
    %zmieniam rozmiar zdjecia z 128x128 na 32x32
    %W celu zmniejszenia zuzycia pamieci przy Tworzeniu sieci neuronowej
    imageData = imresize(imageData, 0.25);
    Vec = reshape(imageData,[],1);
  else
    warningMessage = sprintf('Warning: image file does not exist:\n%s', fullFileName2);
    uiwait(warndlg(warningMessage));
  end
  Letter(:,k)=Vec;
end
        

end

