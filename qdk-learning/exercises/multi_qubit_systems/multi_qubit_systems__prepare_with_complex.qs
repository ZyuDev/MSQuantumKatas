namespace Kata {
    operation PrepareWithComplex(qs : Qubit[]) : Unit is Adj + Ctl {
        H(qs[0]);
        H(qs[1]);
        T(qs[0]);
        T(qs[0]);
        T(qs[1]);


    }
}