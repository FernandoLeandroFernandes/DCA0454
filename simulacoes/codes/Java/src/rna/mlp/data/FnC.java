package rna.mlp.data;

import static java.lang.Math.PI;
import static java.lang.Math.pow;
import static java.lang.Math.sin;

public class FnC extends Fn {

	@Override
	public double fn(double x1, double x2) {
		return (5*pow(x1,2))+(4*pow(x2,2))+(2*x1*x2*sin(PI*x1*x2))+(2*x1)+(3*x2)-0.5;
	}

	@Override
	public double genX1() {
		return (10*Math.random()-5);
	}

	@Override
	public double genX2() {
		return (5*Math.random());
	}

}
