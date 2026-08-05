namespace Kata {
    import Std.Math.*;

    function ComplexMult(x : Complex, y : Complex) : Complex {
        // Implement your solution here...
        let (a, b) = (x.Real, x.Imag);
        let (c, d) = (y.Real, y.Imag);

        let rReal = a*c-b*d;
        let rImag = a*d + b*c;
        return Complex(rReal, rImag);
    }
}
