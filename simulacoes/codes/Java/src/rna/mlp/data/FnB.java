package rna.mlp.data;

import static java.lang.Math.PI;
import static java.lang.Math.cos;
import static java.lang.Math.sin;
import static java.lang.Math.pow;
import rna.mlp.data.Fn;


public class FnB extends Fn {

	@Override
	public double fn(double x1, double x2) {
		return ((Math.cos(2*PI*x1)/(1-pow(2*x2,2)))*(sin(PI*x1)/(PI*x1)) * 
				(cos(2*PI*x2)/(1-pow(2*x2,2)))*(sin(PI*x2)/(PI*x2)));
	}

	@Override
	public double genX1() {
		return (4*PI*Math.random());
	}

	@Override
	public double genX2() {
		return (Math.random() > 0.5? -0.5 : 0.5)+((8*Math.random()-4)*PI);
	}

}
