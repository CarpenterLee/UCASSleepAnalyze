function g=localthresh(f, nhood, a, b)
%f=tofloat(f);
f=double(f);
SIG=stdfilt(f, nhood);
MEAN=localmean(f, nhood);
g=(f>a*SIG)&(f>b*MEAN);