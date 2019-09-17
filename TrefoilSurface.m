function X = TrefoilSurface( n, p )
% Uniformly sample n points from the trefoil tube.
%   INPUT
%       n  : Number of points.

switch nargin
    case 1
        p = 3;
    case 0
        error('Select a number of points to sample.')
end

% radius
c = .4;

% sample points from rectangle
s = 0; a = pi;
% maximum of fx (guess)
m = sqrt(9765625000+20306250000*c^2+395824185999360000*(cos(s)^8-2*cos(s)^6+325*cos(s)^4*(1/256)-51*cos(s)^2*(1/256)+25/1024)^2*(cos(s)^12+3*cos(s)^10*(1/5)-48543*cos(s)^8*(1/6400)+31549*cos(s)^6*(1/3200)-47589*cos(s)^4*(1/12800)+9573*cos(s)^2*(1/12800)+25/4096)^2*cos(2*s)+54975581388800000*(cos(s)^8-2*cos(s)^6+325*cos(s)^4*(1/256)-51*cos(s)^2*(1/256)+25/1024)^2*(cos(s)^12+3*cos(s)^10*(1/5)-48543*cos(s)^8*(1/6400)+31549*cos(s)^6*(1/3200)-47589*cos(s)^4*(1/12800)+9573*cos(s)^2*(1/12800)+25/4096)^2*cos(2*s)^2+175921860444160000*(cos(s)^8-2*cos(s)^6+325*cos(s)^4*(1/256)-51*cos(s)^2*(1/256)+25/1024)^2*(cos(s)^12+3*cos(s)^10*(1/5)-48543*cos(s)^8*(1/6400)+31549*cos(s)^6*(1/3200)-47589*cos(s)^4*(1/12800)+9573*cos(s)^2*(1/12800)+25/4096)^2*cos(4*s)^2+244140625*cos(a)^2*c^2+(89746875000*cos(a)^2*c^2-1767627000000*c^2+2233875000000)*cos(s)^2+(341019920164704*cos(a)^2*c^2-1162661776358400*c^2-3226708278048000)*cos(s)^6+(10550932605000*cos(a)^2*c^2+60986014920000*c^2+97338511400000)*cos(s)^4+(49399992958701312*cos(a)^2*c^2-141185977830365184*c^2-513956773402634240)*cos(s)^10+(-6137958993593616*cos(a)^2*c^2+15047579058670080*c^2+51342112335507840)*cos(s)^8+(-242421925587845376*cos(a)^2*c^2+1002579939980089344*c^2+3653747919957063680)*cos(s)^12+(807109932941319168*cos(a)^2*c^2-5461942862628864000*c^2-19136607467903918080)*cos(s)^14+(2996230659387004928*cos(a)^2*c^2-73714145889173815296*c^2-224715757295776317440)*cos(s)^18+(-1869854695788462336*cos(a)^2*c^2+22943468903325290496*c^2+75389382568367708160)*cos(s)^16+(1852114807421853696*cos(a)^2*c^2-322465053554435948544*c^2-848828535064826019840)*cos(s)^22+(-3135729972984330240*cos(a)^2*c^2+178674100810081910784*c^2+505773213228553748480)*cos(s)^20+(-264209768644472832*cos(a)^2*c^2+427040370691608674304*c^2+1036611146143261163520)*cos(s)^24+(-371102246759301120*cos(a)^2*c^2-405180283892838432768*c^2-881391899848055193600)*cos(s)^26+(202654688241254400*cos(a)^2*c^2+262242273315567697920*c^2+472518445430588047360)*cos(s)^28+(2671201222656000*cos(a)^2*c^2-102186070620367749120*c^2-108786585659464744960)*cos(s)^30+(-23272850718720000*cos(a)^2*c^2+13105135541022621696*c^2-35842423634777866240)*cos(s)^32+(1932735283200000*cos(a)^2*c^2+6822521533555015680*c^2+31765055853192806400)*cos(s)^34+(98956046499840000*c^2+439804651110400000)*cos(s)^40+(39582418599936000*c^2-1231453023109120000)*cos(s)^38+(1073741824000000*cos(a)^2*c^2-2834240328695808000*c^2-5748521667919872000)*cos(s)^36+2147483648000*c*(cos(a)*((-36*cos(s)*(cos(s)^32-73*cos(s)^30*(1/20)-180353*cos(s)^28*(1/19200)+34455173*cos(s)^26*(1/384000)-6617339911*cos(s)^24*(1/24576000)+45976168859*cos(s)^22*(1/98304000)-3367217826523*cos(s)^20*(1/6291456000)+10691895461699*cos(s)^18*(1/25165824000)-4032971680711*cos(s)^16*(1/16777216000)+830365478073*cos(s)^14*(1/8388608000)-253902624053*cos(s)^12*(1/8388608000)+1406230154797*cos(s)^10*(1/201326592000)-497403121879*cos(s)^8*(1/402653184000)+66348979343*cos(s)^6*(1/402653184000)-970531477*cos(s)^4*(1/64424509440)+32375191*cos(s)^2*(1/51539607552)-1315225/103079215104)*cos(3*s)-36*sin(3*s)*(cos(s)^32-63*cos(s)^30*(1/20)-208193*cos(s)^28*(1/19200)+10744681*cos(s)^26*(1/128000)-375005001*cos(s)^24*(1/1638400)+7147137961*cos(s)^22*(1/19660800)-791401746953*cos(s)^20*(1/2097152000)+2240158868207*cos(s)^18*(1/8388608000)-2196090839873*cos(s)^16*(1/16777216000)+375637979663*cos(s)^14*(1/8388608000)-9058101593*cos(s)^12*(1/838860800)+384610438003*cos(s)^10*(1/201326592000)-35487507491*cos(s)^8*(1/134217728000)+3768228947*cos(s)^6*(1/134217728000)-2944600921*cos(s)^4*(1/1610612736000)-842125*cos(s)^2*(1/17179869184)+34875/34359738368)*sin(s))*cos(2*s)+(-(24*(cos(s)^32-63*cos(s)^30*(1/20)-208193*cos(s)^28*(1/19200)+10744681*cos(s)^26*(1/128000)-375005001*cos(s)^24*(1/1638400)+7147137961*cos(s)^22*(1/19660800)-791401746953*cos(s)^20*(1/2097152000)+2240158868207*cos(s)^18*(1/8388608000)-2196090839873*cos(s)^16*(1/16777216000)+375637979663*cos(s)^14*(1/8388608000)-9058101593*cos(s)^12*(1/838860800)+384610438003*cos(s)^10*(1/201326592000)-35487507491*cos(s)^8*(1/134217728000)+3768228947*cos(s)^6*(1/134217728000)-2944600921*cos(s)^4*(1/1610612736000)-842125*cos(s)^2*(1/17179869184)+34875/34359738368))*sin(s)*sin(2*s)-72*cos(s)*(cos(s)^32-73*cos(s)^30*(1/20)-180353*cos(s)^28*(1/19200)+34455173*cos(s)^26*(1/384000)-6617339911*cos(s)^24*(1/24576000)+45976168859*cos(s)^22*(1/98304000)-3367217826523*cos(s)^20*(1/6291456000)+10691895461699*cos(s)^18*(1/25165824000)-4032971680711*cos(s)^16*(1/16777216000)+830365478073*cos(s)^14*(1/8388608000)-253902624053*cos(s)^12*(1/8388608000)+1406230154797*cos(s)^10*(1/201326592000)-497403121879*cos(s)^8*(1/402653184000)+66348979343*cos(s)^6*(1/402653184000)-970531477*cos(s)^4*(1/64424509440)+32375191*cos(s)^2*(1/51539607552)-1315225/103079215104))*cos(3*s)+(24*cos(s)*(cos(s)^32-73*cos(s)^30*(1/20)-180353*cos(s)^28*(1/19200)+34455173*cos(s)^26*(1/384000)-6617339911*cos(s)^24*(1/24576000)+45976168859*cos(s)^22*(1/98304000)-3367217826523*cos(s)^20*(1/6291456000)+10691895461699*cos(s)^18*(1/25165824000)-4032971680711*cos(s)^16*(1/16777216000)+830365478073*cos(s)^14*(1/8388608000)-253902624053*cos(s)^12*(1/8388608000)+1406230154797*cos(s)^10*(1/201326592000)-497403121879*cos(s)^8*(1/402653184000)+66348979343*cos(s)^6*(1/402653184000)-970531477*cos(s)^4*(1/64424509440)+32375191*cos(s)^2*(1/51539607552)-1315225/103079215104)*sin(2*s)-(72*(cos(s)^32-63*cos(s)^30*(1/20)-208193*cos(s)^28*(1/19200)+10744681*cos(s)^26*(1/128000)-375005001*cos(s)^24*(1/1638400)+7147137961*cos(s)^22*(1/19660800)-791401746953*cos(s)^20*(1/2097152000)+2240158868207*cos(s)^18*(1/8388608000)-2196090839873*cos(s)^16*(1/16777216000)+375637979663*cos(s)^14*(1/8388608000)-9058101593*cos(s)^12*(1/838860800)+384610438003*cos(s)^10*(1/201326592000)-35487507491*cos(s)^8*(1/134217728000)+3768228947*cos(s)^6*(1/134217728000)-2944600921*cos(s)^4*(1/1610612736000)-842125*cos(s)^2*(1/17179869184)+34875/34359738368))*sin(s))*sin(3*s)+cos(4*s)*(cos(s)^28+28*cos(s)^26*(1/5)-3623*cos(s)^24*(1/200)-419243*cos(s)^22*(1/16000)+226871579*cos(s)^20*(1/1638400)-346853861*cos(s)^18*(1/2048000)+3227549451*cos(s)^16*(1/65536000)+4650577257*cos(s)^14*(1/65536000)-5407951533*cos(s)^12*(1/65536000)+10304493871*cos(s)^10*(1/262144000)-1034114881*cos(s)^8*(1/104857600)+1448297951*cos(s)^6*(1/1048576000)-153455233*cos(s)^4*(1/2097152000)-875*cos(s)^2*(1/33554432)-6125/134217728))*sqrt(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25)+48*(cos(s)^8-2*cos(s)^6+325*cos(s)^4*(1/256)-51*cos(s)^2*(1/256)+25/1024)^2*(cos(s)^8+16*cos(s)^6*(1/5)-1629*cos(s)^4*(1/200)+743*cos(s)^2*(1/200)-19/160)*((24*sin(s)*(cos(s)^12-67*cos(s)^10*(1/20)+1071*cos(s)^8*(1/256)-2173*cos(s)^6*(1/1024)+5527*cos(s)^4*(1/10240)-195*cos(s)^2*(1/4096)-25/8192)*cos(3*s)-24*sin(3*s)*(cos(s)^12-77*cos(s)^10*(1/20)+7339*cos(s)^8*(1/1280)-19591*cos(s)^6*(1/5120)+2713*cos(s)^4*(1/2048)-6737*cos(s)^2*(1/20480)+837/40960)*cos(s))*cos(2*s)+((-16*cos(s)^13+308*cos(s)^11*(1/5)-7339*cos(s)^9*(1/80)+19591*cos(s)^7*(1/320)-2713*cos(s)^5*(1/128)+6737*cos(s)^3*(1/1280)-837*cos(s)*(1/2560))*sin(2*s)+48*sin(s)*(cos(s)^12-67*cos(s)^10*(1/20)+1071*cos(s)^8*(1/256)-2173*cos(s)^6*(1/1024)+5527*cos(s)^4*(1/10240)-195*cos(s)^2*(1/4096)-25/8192))*cos(3*s)+(-16*sin(s)*(cos(s)^12-67*cos(s)^10*(1/20)+1071*cos(s)^8*(1/256)-2173*cos(s)^6*(1/1024)+5527*cos(s)^4*(1/10240)-195*cos(s)^2*(1/4096)-25/8192)*sin(2*s)-48*cos(s)^13+924*cos(s)^11*(1/5)-22017*cos(s)^9*(1/80)+58773*cos(s)^7*(1/320)-8139*cos(s)^5*(1/128)+20211*cos(s)^3*(1/1280)-2511*cos(s)*(1/2560))*sin(3*s)+sin(s)*cos(s)*cos(4*s)*(cos(s)^6+39*cos(s)^4*(1/10)-21*cos(s)^2*(1/40)-49/80))*sin(a))*sqrt(102400*cos(s)^12+61440*cos(s)^10-776688*cos(s)^8+1009568*cos(s)^6-380712*cos(s)^4+76584*cos(s)^2+625))/((102400*cos(s)^12+61440*cos(s)^10-776688*cos(s)^8+1009568*cos(s)^6-380712*cos(s)^4+76584*cos(s)^2+625)*(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25));   
theta = nan(n, 2);
i = 1;
while i <= n
    x = m * rand(1); 
    s = 2 * pi * rand(1);
    a = 2 * pi * rand(1);
    fx = sqrt(9765625000+20306250000*c^2+395824185999360000*(cos(s)^8-2*cos(s)^6+325*cos(s)^4*(1/256)-51*cos(s)^2*(1/256)+25/1024)^2*(cos(s)^12+3*cos(s)^10*(1/5)-48543*cos(s)^8*(1/6400)+31549*cos(s)^6*(1/3200)-47589*cos(s)^4*(1/12800)+9573*cos(s)^2*(1/12800)+25/4096)^2*cos(2*s)+54975581388800000*(cos(s)^8-2*cos(s)^6+325*cos(s)^4*(1/256)-51*cos(s)^2*(1/256)+25/1024)^2*(cos(s)^12+3*cos(s)^10*(1/5)-48543*cos(s)^8*(1/6400)+31549*cos(s)^6*(1/3200)-47589*cos(s)^4*(1/12800)+9573*cos(s)^2*(1/12800)+25/4096)^2*cos(2*s)^2+175921860444160000*(cos(s)^8-2*cos(s)^6+325*cos(s)^4*(1/256)-51*cos(s)^2*(1/256)+25/1024)^2*(cos(s)^12+3*cos(s)^10*(1/5)-48543*cos(s)^8*(1/6400)+31549*cos(s)^6*(1/3200)-47589*cos(s)^4*(1/12800)+9573*cos(s)^2*(1/12800)+25/4096)^2*cos(4*s)^2+244140625*cos(a)^2*c^2+(89746875000*cos(a)^2*c^2-1767627000000*c^2+2233875000000)*cos(s)^2+(341019920164704*cos(a)^2*c^2-1162661776358400*c^2-3226708278048000)*cos(s)^6+(10550932605000*cos(a)^2*c^2+60986014920000*c^2+97338511400000)*cos(s)^4+(49399992958701312*cos(a)^2*c^2-141185977830365184*c^2-513956773402634240)*cos(s)^10+(-6137958993593616*cos(a)^2*c^2+15047579058670080*c^2+51342112335507840)*cos(s)^8+(-242421925587845376*cos(a)^2*c^2+1002579939980089344*c^2+3653747919957063680)*cos(s)^12+(807109932941319168*cos(a)^2*c^2-5461942862628864000*c^2-19136607467903918080)*cos(s)^14+(2996230659387004928*cos(a)^2*c^2-73714145889173815296*c^2-224715757295776317440)*cos(s)^18+(-1869854695788462336*cos(a)^2*c^2+22943468903325290496*c^2+75389382568367708160)*cos(s)^16+(1852114807421853696*cos(a)^2*c^2-322465053554435948544*c^2-848828535064826019840)*cos(s)^22+(-3135729972984330240*cos(a)^2*c^2+178674100810081910784*c^2+505773213228553748480)*cos(s)^20+(-264209768644472832*cos(a)^2*c^2+427040370691608674304*c^2+1036611146143261163520)*cos(s)^24+(-371102246759301120*cos(a)^2*c^2-405180283892838432768*c^2-881391899848055193600)*cos(s)^26+(202654688241254400*cos(a)^2*c^2+262242273315567697920*c^2+472518445430588047360)*cos(s)^28+(2671201222656000*cos(a)^2*c^2-102186070620367749120*c^2-108786585659464744960)*cos(s)^30+(-23272850718720000*cos(a)^2*c^2+13105135541022621696*c^2-35842423634777866240)*cos(s)^32+(1932735283200000*cos(a)^2*c^2+6822521533555015680*c^2+31765055853192806400)*cos(s)^34+(98956046499840000*c^2+439804651110400000)*cos(s)^40+(39582418599936000*c^2-1231453023109120000)*cos(s)^38+(1073741824000000*cos(a)^2*c^2-2834240328695808000*c^2-5748521667919872000)*cos(s)^36+2147483648000*c*(cos(a)*((-36*cos(s)*(cos(s)^32-73*cos(s)^30*(1/20)-180353*cos(s)^28*(1/19200)+34455173*cos(s)^26*(1/384000)-6617339911*cos(s)^24*(1/24576000)+45976168859*cos(s)^22*(1/98304000)-3367217826523*cos(s)^20*(1/6291456000)+10691895461699*cos(s)^18*(1/25165824000)-4032971680711*cos(s)^16*(1/16777216000)+830365478073*cos(s)^14*(1/8388608000)-253902624053*cos(s)^12*(1/8388608000)+1406230154797*cos(s)^10*(1/201326592000)-497403121879*cos(s)^8*(1/402653184000)+66348979343*cos(s)^6*(1/402653184000)-970531477*cos(s)^4*(1/64424509440)+32375191*cos(s)^2*(1/51539607552)-1315225/103079215104)*cos(3*s)-36*sin(3*s)*(cos(s)^32-63*cos(s)^30*(1/20)-208193*cos(s)^28*(1/19200)+10744681*cos(s)^26*(1/128000)-375005001*cos(s)^24*(1/1638400)+7147137961*cos(s)^22*(1/19660800)-791401746953*cos(s)^20*(1/2097152000)+2240158868207*cos(s)^18*(1/8388608000)-2196090839873*cos(s)^16*(1/16777216000)+375637979663*cos(s)^14*(1/8388608000)-9058101593*cos(s)^12*(1/838860800)+384610438003*cos(s)^10*(1/201326592000)-35487507491*cos(s)^8*(1/134217728000)+3768228947*cos(s)^6*(1/134217728000)-2944600921*cos(s)^4*(1/1610612736000)-842125*cos(s)^2*(1/17179869184)+34875/34359738368)*sin(s))*cos(2*s)+(-(24*(cos(s)^32-63*cos(s)^30*(1/20)-208193*cos(s)^28*(1/19200)+10744681*cos(s)^26*(1/128000)-375005001*cos(s)^24*(1/1638400)+7147137961*cos(s)^22*(1/19660800)-791401746953*cos(s)^20*(1/2097152000)+2240158868207*cos(s)^18*(1/8388608000)-2196090839873*cos(s)^16*(1/16777216000)+375637979663*cos(s)^14*(1/8388608000)-9058101593*cos(s)^12*(1/838860800)+384610438003*cos(s)^10*(1/201326592000)-35487507491*cos(s)^8*(1/134217728000)+3768228947*cos(s)^6*(1/134217728000)-2944600921*cos(s)^4*(1/1610612736000)-842125*cos(s)^2*(1/17179869184)+34875/34359738368))*sin(s)*sin(2*s)-72*cos(s)*(cos(s)^32-73*cos(s)^30*(1/20)-180353*cos(s)^28*(1/19200)+34455173*cos(s)^26*(1/384000)-6617339911*cos(s)^24*(1/24576000)+45976168859*cos(s)^22*(1/98304000)-3367217826523*cos(s)^20*(1/6291456000)+10691895461699*cos(s)^18*(1/25165824000)-4032971680711*cos(s)^16*(1/16777216000)+830365478073*cos(s)^14*(1/8388608000)-253902624053*cos(s)^12*(1/8388608000)+1406230154797*cos(s)^10*(1/201326592000)-497403121879*cos(s)^8*(1/402653184000)+66348979343*cos(s)^6*(1/402653184000)-970531477*cos(s)^4*(1/64424509440)+32375191*cos(s)^2*(1/51539607552)-1315225/103079215104))*cos(3*s)+(24*cos(s)*(cos(s)^32-73*cos(s)^30*(1/20)-180353*cos(s)^28*(1/19200)+34455173*cos(s)^26*(1/384000)-6617339911*cos(s)^24*(1/24576000)+45976168859*cos(s)^22*(1/98304000)-3367217826523*cos(s)^20*(1/6291456000)+10691895461699*cos(s)^18*(1/25165824000)-4032971680711*cos(s)^16*(1/16777216000)+830365478073*cos(s)^14*(1/8388608000)-253902624053*cos(s)^12*(1/8388608000)+1406230154797*cos(s)^10*(1/201326592000)-497403121879*cos(s)^8*(1/402653184000)+66348979343*cos(s)^6*(1/402653184000)-970531477*cos(s)^4*(1/64424509440)+32375191*cos(s)^2*(1/51539607552)-1315225/103079215104)*sin(2*s)-(72*(cos(s)^32-63*cos(s)^30*(1/20)-208193*cos(s)^28*(1/19200)+10744681*cos(s)^26*(1/128000)-375005001*cos(s)^24*(1/1638400)+7147137961*cos(s)^22*(1/19660800)-791401746953*cos(s)^20*(1/2097152000)+2240158868207*cos(s)^18*(1/8388608000)-2196090839873*cos(s)^16*(1/16777216000)+375637979663*cos(s)^14*(1/8388608000)-9058101593*cos(s)^12*(1/838860800)+384610438003*cos(s)^10*(1/201326592000)-35487507491*cos(s)^8*(1/134217728000)+3768228947*cos(s)^6*(1/134217728000)-2944600921*cos(s)^4*(1/1610612736000)-842125*cos(s)^2*(1/17179869184)+34875/34359738368))*sin(s))*sin(3*s)+cos(4*s)*(cos(s)^28+28*cos(s)^26*(1/5)-3623*cos(s)^24*(1/200)-419243*cos(s)^22*(1/16000)+226871579*cos(s)^20*(1/1638400)-346853861*cos(s)^18*(1/2048000)+3227549451*cos(s)^16*(1/65536000)+4650577257*cos(s)^14*(1/65536000)-5407951533*cos(s)^12*(1/65536000)+10304493871*cos(s)^10*(1/262144000)-1034114881*cos(s)^8*(1/104857600)+1448297951*cos(s)^6*(1/1048576000)-153455233*cos(s)^4*(1/2097152000)-875*cos(s)^2*(1/33554432)-6125/134217728))*sqrt(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25)+48*(cos(s)^8-2*cos(s)^6+325*cos(s)^4*(1/256)-51*cos(s)^2*(1/256)+25/1024)^2*(cos(s)^8+16*cos(s)^6*(1/5)-1629*cos(s)^4*(1/200)+743*cos(s)^2*(1/200)-19/160)*((24*sin(s)*(cos(s)^12-67*cos(s)^10*(1/20)+1071*cos(s)^8*(1/256)-2173*cos(s)^6*(1/1024)+5527*cos(s)^4*(1/10240)-195*cos(s)^2*(1/4096)-25/8192)*cos(3*s)-24*sin(3*s)*(cos(s)^12-77*cos(s)^10*(1/20)+7339*cos(s)^8*(1/1280)-19591*cos(s)^6*(1/5120)+2713*cos(s)^4*(1/2048)-6737*cos(s)^2*(1/20480)+837/40960)*cos(s))*cos(2*s)+((-16*cos(s)^13+308*cos(s)^11*(1/5)-7339*cos(s)^9*(1/80)+19591*cos(s)^7*(1/320)-2713*cos(s)^5*(1/128)+6737*cos(s)^3*(1/1280)-837*cos(s)*(1/2560))*sin(2*s)+48*sin(s)*(cos(s)^12-67*cos(s)^10*(1/20)+1071*cos(s)^8*(1/256)-2173*cos(s)^6*(1/1024)+5527*cos(s)^4*(1/10240)-195*cos(s)^2*(1/4096)-25/8192))*cos(3*s)+(-16*sin(s)*(cos(s)^12-67*cos(s)^10*(1/20)+1071*cos(s)^8*(1/256)-2173*cos(s)^6*(1/1024)+5527*cos(s)^4*(1/10240)-195*cos(s)^2*(1/4096)-25/8192)*sin(2*s)-48*cos(s)^13+924*cos(s)^11*(1/5)-22017*cos(s)^9*(1/80)+58773*cos(s)^7*(1/320)-8139*cos(s)^5*(1/128)+20211*cos(s)^3*(1/1280)-2511*cos(s)*(1/2560))*sin(3*s)+sin(s)*cos(s)*cos(4*s)*(cos(s)^6+39*cos(s)^4*(1/10)-21*cos(s)^2*(1/40)-49/80))*sin(a))*sqrt(102400*cos(s)^12+61440*cos(s)^10-776688*cos(s)^8+1009568*cos(s)^6-380712*cos(s)^4+76584*cos(s)^2+625))/((102400*cos(s)^12+61440*cos(s)^10-776688*cos(s)^8+1009568*cos(s)^6-380712*cos(s)^4+76584*cos(s)^2+625)*(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25));
    if x < fx
        theta(i, :) = [s, a];
        i = i + 1;
    else
        continue
    end
end
theta = sortrows(theta);

% parametrization
x = zeros(n, 1);
y = zeros(n, 1);
z = zeros(n, 1);
for i = 1:n
    s = theta(i, 1);
    a = theta(i, 2);
    x(i) = (1280*((1/1280)*cos(3*s)*sqrt(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25)*(2+cos(2*s))*sqrt(102400*cos(s)^12+61440*cos(s)^10-776688*cos(s)^8+1009568*cos(s)^6-380712*cos(s)^4+76584*cos(s)^2+625)+(sin(a)*sin(s)*(cos(s)^8-47*cos(s)^6*(1/20)+33*cos(s)^4*(1/20)-59*cos(s)^2*(1/160)-1/64)*sqrt(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25)-(32*(cos(s)^12-77*cos(s)^10*(1/20)+7339*cos(s)^8*(1/1280)-19591*cos(s)^6*(1/5120)+2713*cos(s)^4*(1/2048)-6737*cos(s)^2*(1/20480)+837/40960))*cos(s)*cos(a))*c))/(sqrt(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25)*sqrt(102400*cos(s)^12+61440*cos(s)^10-776688*cos(s)^8+1009568*cos(s)^6-380712*cos(s)^4+76584*cos(s)^2+625));
    y(i) = -(1280*(-(1/1280)*sin(3*s)*sqrt(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25)*(2+cos(2*s))*sqrt(102400*cos(s)^12+61440*cos(s)^10-776688*cos(s)^8+1009568*cos(s)^6-380712*cos(s)^4+76584*cos(s)^2+625)+c*(sin(a)*cos(s)*(cos(s)^8-57*cos(s)^6*(1/20)+27*cos(s)^4*(1/10)-149*cos(s)^2*(1/160)+57/320)*sqrt(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25)+(32*(cos(s)^12-67*cos(s)^10*(1/20)+1071*cos(s)^8*(1/256)-2173*cos(s)^6*(1/1024)+5527*cos(s)^4*(1/10240)-195*cos(s)^2*(1/4096)-25/8192))*sin(s)*cos(a))))/(sqrt(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25)*sqrt(102400*cos(s)^12+61440*cos(s)^10-776688*cos(s)^8+1009568*cos(s)^6-380712*cos(s)^4+76584*cos(s)^2+625));
    z(i) = ((sqrt(102400*cos(s)^12+61440*cos(s)^10-776688*cos(s)^8+1009568*cos(s)^6-380712*cos(s)^4+76584*cos(s)^2+625)*sin(4*s)+(60*(cos(s)^4+17*cos(s)^2*(1/5)+1/4))*c*sin(a))*sqrt(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25)-(1280*(cos(s)^6+39*cos(s)^4*(1/10)-21*cos(s)^2*(1/40)-49/80))*cos(s)*sin(s)*c*cos(a))/(sqrt(1024*cos(s)^8-2048*cos(s)^6+1300*cos(s)^4-204*cos(s)^2+25)*sqrt(102400*cos(s)^12+61440*cos(s)^10-776688*cos(s)^8+1009568*cos(s)^6-380712*cos(s)^4+76584*cos(s)^2+625));
end

X = [x, y, z];

if p > 3
    X = X * transpose(orth(randn(p, size(X, 2))));
end

end
