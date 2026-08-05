namespace Kata {
    import Std.Math.*;

    function ComplexDiv(x : Complex, y : Complex) : Complex {
        // Implement your solution here...
        let (a, b) = (x.Real, x.Imag);
        let (c, d) = (y.Real, y.Imag);

        let denominator = c*c + d*d;
        let realNum = a*c+b*d;
        let imNum = b*c - a*d;


        return Complex(realNum / denominator, imNum / denominator);
    }
}
