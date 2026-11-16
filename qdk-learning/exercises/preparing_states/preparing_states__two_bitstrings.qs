namespace Kata {
    function GetFirstDifferentIndex(bits1: Bool[], bits2: Bool[]): Int {
        let n = Length(bits1);
        mutable jDiff = 0;

        for i in 1..n {
                 // We need to find first index where bits are different.
            if (jDiff == 0){
                if (bits1[i] != bits2[i]){
                   jDiff = i;

                }

            }
        }

        return jDiff;
    }

    operation TwoBitstringSuperposition (qs : Qubit[], bits1 : Bool[], bits2 : Bool[]) : Unit is Adj + Ctl {
        let n = Length(qs);      
        H(qs[0]);

        // Adjust second and other bits.
        for i in 1.. (n-1){

            let b1 = bits1[i];
            let b2 = bits2[i];

            if (b1 == true and b2 == true){
                X(qs[i]);
            }
            elif (b1 == false and b2 == true){
                CNOT(qs[0], qs[i]);
            }
            elif (b1 == true and b2 == false){
                X(qs[0]);
                CNOT(qs[0], qs[i]);
                X(qs[0]);
            }
            else {
                // Do nothing.
            }
        }

        // Adjust first qubit.
        let b10 = bits1[0];
        let b20 = bits2[0];
        if (b10 == false and b20 == true){
            // Do nothing. H gate already prepered such state.
        }
        elif (b10 == true and b20 == false){
            X(qs[0]);
        }
        else {
            // We need to find controll bit, which different in b1 and b2 arrays.
            let jDiff = GetFirstDifferentIndex(bits1, bits2);

            // Push all first qubits to |1> state.
            if (bits1[jDiff] == false){
                X(qs[jDiff]);
            }
            CNOT(qs[jDiff], qs[0]);
             if (bits1[jDiff] == false){
                X(qs[jDiff]);
            }
            if (b10 == false and b20 == false){
               X(qs[0]);
            }
                   

        }

        

    }   

}

