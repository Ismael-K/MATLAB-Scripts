function [Y] =FIR_filter(X,bk)
%FIR_filter computes output.  Does "synthetic multiplication".
%Syntax FIR_filter(X,bk)
rowX=isvector(X);
rowbk=isvector(bk);
realbk=isreal(bk);
if rowX==0
    error('X must be a row vector');
elseif (rowbk==0)||(realbk==0)
    error('bk must be a row vector of real coefficients');
end
%use else if
 
Y=zeros(1, 2*length(X));
for k=1:length(bk)
    Y=Y + bk(k)*delay(X,k-1);
  
   %delay nd is k. 1st time it must not be shifted
  
end
 
 
 
%disp(num2str(Y));
end

