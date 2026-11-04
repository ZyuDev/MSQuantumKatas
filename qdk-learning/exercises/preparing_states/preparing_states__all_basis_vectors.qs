namespace Kata {
    operation AllBasisVectorsSuperposition (qs : Qubit[]) : Unit is Adj + Ctl {
        for i in 0..(Length(qs)-1) {
            H(qs[i]);

        }

    }
}

