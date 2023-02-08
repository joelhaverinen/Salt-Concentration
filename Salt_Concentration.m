
% Suolan konsentraatio 50 l vesiastiaan. Ajan mukaan.

V    =   50  % (l) säiliön tilavuus litroina
in   =   3   % l/min sisään
out  =   3   % l/min ulos
Pin  =   3   % g/l suolan lisäys
Salus=  V*2  % S(0)=V(0)*Pin(0) = 50l*2g/l= 100g säiliön veden alkutila

tk   =  40 % taulukon koko = aika minuuteissa

n = 1 

  
% Luodaan X ja Y akseleita kuvaavat taulukot 
tulosY = [1:tk] 
tulosX = [1:tk]

tulosZ = [1:tk] 

% Milloin veden suolan konsentraatio on 120 g?

while n <= tk                       % pienempää tai yhtä suurta

    
S  = Salus + (in*Pin*n) - (out*S/V*n)   % Suolan määrä ajan hetkellä t   
%S2 = Salus + (in*Pin*n) 

tulosY(1,n) = S                     % esim. y(1,6)=8; jos haluaa muuttaa matriisin ekan rivin kuudetta solua.
tulosZ(1,n) = S2   
                                                                
                           
                 

%laskurit
n = n + 1


end

plot (tulosX, tulosY)
%hold on
%plot (tulosX, tulosZ)

