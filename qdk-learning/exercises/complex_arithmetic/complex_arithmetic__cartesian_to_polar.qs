namespace Kata {
    import Std.Math.*;

    function ComplexToComplexPolar(x : Complex) : ComplexPolar {
        // Implement your solution here...
        let a = x.Real;
        let b = x.Imag;
        let r = Sqrt(a*a + b*b);
        let phi = Std.Math.ArcTan2(b, a);
        return ComplexPolar(r, phi);
    }
}
