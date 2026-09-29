namespace Kata {
    operation PrepareSuperposition(qs : Qubit[]) : Unit is Adj + Ctl {
        H(qs[1]);
        Z(qs[1]);

    }
}