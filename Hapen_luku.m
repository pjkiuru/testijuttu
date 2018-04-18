%Happitiedoston, Hertasta saadun, p‰iv‰m‰‰rien muutto oikeaan muotoon.

%2001
[numMx,strMx]=xlsread('D:\tmp\Valkea_TIC');
[d1,d2]=size(strMx);
tallenne = ones(d1-3,5);
for ii=4:d1
AAAA = datenum(strMx(ii,5),'dd.mm.yyyy HH:MM:SS');
syvyys = numMx(ii,6);
arvo = numMx(ii,12);
[yrr,mmr,ddr,hour,min,sec]=datevec(AAAA);
tallenne(ii-3,:)=[yrr,mmr,ddr,syvyys,1000*arvo];
end
a=1

%Toimi: ainoastaan yhden p‰iv‰n p‰iv‰m‰‰r‰muodosta puuttui Hertasn
%taulukossa kellonaika, joka piti taulukkoon lis‰t‰. Muuten vanhan taidon
%pohjalta suht kivuttomasti onnistui ohjelmallisesti.