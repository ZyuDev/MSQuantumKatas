namespace Kata {
    import Std.Math.*;

    function ComplexExpReal(r : Double, x : Complex) : Complex {
        // Implement your solution here...
        let a = x.Real;
        let b = x.Imag;
       
        mutable resultReal = 0.0;
        mutable resultImg = 0.0;
        if (r > 0.0) {
          let rToA = Cosh(a*Log(r))+Sinh(a*Log(r));
          resultReal = rToA * Cos(b*Log(r));
          resultImg = rToA*Sin(b*Log(r));
        }
       
        return Complex(resultReal, resultImg);
    }
}
