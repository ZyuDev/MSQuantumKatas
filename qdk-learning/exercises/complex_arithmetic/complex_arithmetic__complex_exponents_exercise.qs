namespace Kata {
    import Std.Math.*;

    function ComplexExponent(x : Complex) : Complex {
        // Implement your solution here...
        let a = x.Real;
        let b = x.Imag;
        let eToA = Cosh(a)+Sinh(a);
        let resultReal = eToA*Cos(b);
        let resultImg = eToA*Sin(b);
       
        return Complex(resultReal, resultImg);
    }
}
