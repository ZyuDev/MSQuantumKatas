namespace Kata {
    import Std.Math.*;

    function ComplexPolarToComplex(x : ComplexPolar) : Complex {
        // Implement your solution here...
        let r = x.Magnitude;
        let phi = x.Argument;
        let a = r*Cos(phi);
        let b = r*Sin(phi);
        return Complex(a, b);
    }
}
