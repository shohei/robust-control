function [P] = defssmodel(J1,J2,J3,Ka,Kb,D1,D2,D3,Da,Db)
ep = diag([1 1 1 J1 J2 J3]);
ap = [ 0 0 0 1 0 0;
       0 0 0 0 1 0;
       0 0 0  0 0 1;
       -Ka Ka 0 -D1-Da Da 0;
       Ka -Ka-Kb Kb Da -D2-Da-Db Db;
       0 Kb -Kb 0 Db -Db-D3];
bp = [0;
      0;
      0;
      1;
      0;
      0];
cp = [1 0 0 0 0 0];
iep = inv(ep);
Ap = iep*ap;
Bp = iep*bp;
Cp = cp;
Dp = 0;
P = ss(Ap,Bp,Cp,Dp);

end