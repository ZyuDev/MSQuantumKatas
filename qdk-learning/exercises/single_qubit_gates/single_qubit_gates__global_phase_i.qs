namespace Kata {
    operation GlobalPhaseI(q : Qubit) : Unit is Adj + Ctl {
        Y(q);
        X(q);
        Z(q);

    }
}