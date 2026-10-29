namespace Kata {
    operation AntiControlledGate (qs : Qubit[]) : Unit is Adj + Ctl {
        X(qs[0]);
        Controlled X([qs[0]], (qs[1]));
        X(qs[0]);
        
    }
}