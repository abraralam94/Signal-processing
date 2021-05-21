A(:);
%the one below is sequential selection (first finish column 1, then 2...
A([2 4 7]);

%The one below basically is a boolean array (o for false, 1 for true)
[A >= 0.2];

%works like numpy masking, but a bit different (just generates a column
%vec.)
A([A >= 0.2]);

% which elements of mat. A are >= 0.2, we set those to zero (modifying A)
A([A >= 0.2]) = 0;
