namespace Kata {
    import Std.Arrays.*;

    operation GHZ_State(qs : Qubit[]) : Unit is Adj + Ctl {
        H(qs[0]);
        let n = Length(qs);
        if (n > 1){
            for i in 0..(n-2){
                CNOT(qs[i], qs[i+1]);
            }
        }

    }
}
