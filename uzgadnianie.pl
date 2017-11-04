%ponizsze są takie same
rectangle(point(X1, Y1), point(X2, Y2), point(X3, Y3), point(X4, Y4)) :- Y1 = Y2, Y4 = Y3, X1 = X4, X2 = X3.
regular(rect(point(X1, Y1), point(X2, Y1), point(X2, Y2), point(X1, Y2))).

%brzytwa Okhama
%nie mnożymy bytów, bo trzeba o nie dbać
