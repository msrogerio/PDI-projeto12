%% Projeto 12
% *Autor:* Marlon da Silva Rogério

%% Referências
% *GONZALEZ, R. C.*, WOODS, R. E. Processamento de Imagens Digitais. 
% Editora Edgard Blucher, ISBN São Paulo, 2000.
% *Support MathWorks*, 2021. Disponível em: <https://www.mathworks.com/help/>.
% Acesso em: 18 de julho. de 2021.

% * Utilize uma rede neural (deep) pre treinada (ou não) para detectar objetos
%   -- mostrar uma imagem (s) de sua preferencia, que contem um objeto
%   -- classificar, visualizar e comentar


close all;clear
deepnet = resnet18;

%%
img1 = imread('onibus.jpg');
sz = deepnet.Layers(1).InputSize;
img1 = imresize(img1, sz(:,1:2));
figure; imshow(img1)
pred1 = classify(deepnet,img1)
