namespace Kata {
    import Std.Math.*;

    operation PrepareRotatedState(alpha : Double, beta : Double, q : Qubit) : Unit is Adj + Ctl {
        let teta = 2.0*ArcTan2(beta,  alpha);
        Rx(teta, q);

    }
}
