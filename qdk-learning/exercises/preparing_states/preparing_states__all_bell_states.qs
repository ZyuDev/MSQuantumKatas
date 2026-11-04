namespace Kata {
    operation AllBellStates (qs : Qubit[], index : Int) : Unit is Adj + Ctl {
        H(qs[0]);
         CNOT(qs[0],qs[1]);
      
        if (index == 1){
             Z(qs[1]);
        }
        elif(index == 2){
            X(qs[1]);
        }
        elif (index ==3){
             X(qs[1]);
             Z(qs[0]);
        }
        
    }
}

