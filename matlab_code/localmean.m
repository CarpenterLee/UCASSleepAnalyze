function mean=localmean(f, nhood)
nhood = nhood / sum(nhood(:));
%mean = imfilter(tofloat(f), nhood, 'replicate');
mean = imfilter(double(f), nhood, 'replicate');