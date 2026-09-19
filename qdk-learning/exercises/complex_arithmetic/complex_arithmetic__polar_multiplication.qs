namespace Kata {
    import Std.Math.*;

    function ComplexPolarMult(x : ComplexPolar, y : ComplexPolar) : ComplexPolar {
        let rResult = x.Magnitude * y.Magnitude;
        mutable phiResult = x.Argument + y.Argument;
        if (phiResult > PI()){
            phiResult = phiResult - 2.0*PI();
        } elif (phiResult <= -PI()){
            phiResult = phiResult + 2.0*PI();

        }

        return ComplexPolar(rResult, phiResult);
    }
}
