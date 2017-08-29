package rna.mlp.data;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class FunctionCalculator {

	static final double STEP = 0.2;
	static final int QPOINTS = 20;
	static final int MAXLEVEL = +20;
	static final int MINLEVEL = -20;
	static final NumberFormat FORMAT = new DecimalFormat("0.00000", DecimalFormatSymbols.getInstance(new Locale("en", "US")));
	static final SimpleDateFormat DATEFORMAT = new SimpleDateFormat("m'min' ss.SSS'seg'");

	static double [][] x = new double[2][Math.round((float)((MAXLEVEL-MINLEVEL+1)*QPOINTS/STEP))];
	static double [] y   = new double[Math.round((float)((MAXLEVEL-MINLEVEL+1)*QPOINTS/STEP))];

//	private static void normalize(final double [] data, int elms) {
//		
//		int i;
//		double value, great = Double.NEGATIVE_INFINITY;
//		for (i = 0; i <= elms; i++) {
//			value = Math.abs(data[i]);
//			if (great < value) {
//				great = value;
//			}
//		}
//
//		for (i = 0; i <= elms; i++) {
//			data[i] = data[i]/great;
//		}
//	}
	
	private static void generateData(Fn function) {
	
		int Q, n = 0;
		double var = STEP/8, level = MINLEVEL;
		Date now;

		while (level < MAXLEVEL) {

			System.out.print("Camada em Z = ");
			System.out.print(FORMAT.format(level));
			System.out.print("... ");
			now = new Date();
			
			Q = 0;
			while (Q < QPOINTS) {
				x[0][n] = function.genX1();
				x[1][n] = function.genX2();
				y[n]  = function.fn(x[0][n], x[1][n]);

				if (y[n] > (level-var) && y[n] < (level+var)) {
					n++;
					Q++;
				}
			}

			System.out.print("(");
			System.out.print(DATEFORMAT.format(new Date((new Date()).getTime() - now.getTime())));
			System.out.println(")");
			level = level+STEP;
		}
		
		StringBuilder X1 = new StringBuilder();
		StringBuilder X2 = new StringBuilder();
		StringBuilder Y = new StringBuilder();
		
		for (int i = 0; i < n; i++) {
			X1.append(FORMAT.format(x[0][i])).append(" ");
			X2.append(FORMAT.format(x[1][i])).append(" ");
			Y.append(FORMAT.format(y[i])).append(" ");
		}
		
		BufferedWriter fileX1, fileX2, fileY;
		try {
			fileX1 = new BufferedWriter(new FileWriter("/home/fernando/DATA/X1.txt"));
			fileX1.append(X1);
			fileX1.flush();
			fileX1.close();

			fileX2 = new BufferedWriter(new FileWriter("/home/fernando/DATA/X2.txt"));
			fileX2.append(X2);
			fileX2.flush();
			fileX2.close();
			
			fileY = new BufferedWriter(new FileWriter("/home/fernando/DATA/D.txt"));
			fileY.append(Y);
			fileY.flush();
			fileY.close();
			
		} catch (IOException e) { 
			System.out.println(e.getMessage());
		}
		
		System.out.println(X1.toString());
		System.out.println(X2.toString());
		System.out.println(Y.toString());
	}

	public static void main(String[] args) {

		generateData(new FnB());
	}
}
