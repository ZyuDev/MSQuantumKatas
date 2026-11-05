namespace Kata {
    operation EvenOddNumbersSuperposition(qs : Qubit[], isEven : Bool) : Unit is Adj + Ctl {
        let n = Length(qs);
        
        // Prepare even state
        for i in 0..(n-2){
            H(qs[i]);
        }

        if (isEven == false){
            // Flip last bit gives an odd state.
            X(qs[n-1])
        }

    }
}

