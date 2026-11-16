namespace Kata {
    operation ZeroAndBitstringSuperposition (qs : Qubit[], bits : Bool[]) : Unit is Adj + Ctl {
        H(qs[0]);
        let n = Length(bits);
        for i in 1..n-1 {
            if (bits[i]){
                CNOT(qs[0], qs[i])
            }
        }
        
    }
}

