package rna.mlp.data;

import static java.lang.Math.PI;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class PointsGenerator {

	static final int    QPOINTS		= 5;
	static final double MAXLEVEL	= 2*PI;
	static final double MINLEVEL	= PI/16;
	static final double STEP		= PI/4;
	
	static final NumberFormat FORMAT = new DecimalFormat("0.00000", DecimalFormatSymbols.getInstance(new Locale("en", "US")));
	static final SimpleDateFormat DATEFORMAT = new SimpleDateFormat("m'min' ss.SSS'seg'");

	static double [][] x = new double[2][Math.round((float)((MAXLEVEL-MINLEVEL+1)*QPOINTS/STEP))];
	static double [][] y = new double[Math.round((float)((MAXLEVEL-MINLEVEL+1)*QPOINTS/STEP))][3];

	private static void generateData(MPSKPoint mpsk) {
	
		int Q, n = 0;
		double level = MINLEVEL;
		double [] point = new double[2];
		double [] expect = new double[3];
		double [] ref = new double[2];
		
		Date now;

		while (level < MAXLEVEL) {
			
			ref[0] = mpsk.getRadius()*Math.cos(level);
			ref[1] = mpsk.getRadius()*Math.sin(level);
			expect = mpsk.response(level);
			
			System.out.print("Camada em LEVEL = ");
			System.out.print(FORMAT.format(level));
			System.out.print("... ");
			now = new Date();
			
			Q = 0;
			while (Q < QPOINTS) {
				point = mpsk.nearby(ref);
				x[0][n] = point[0];
				x[1][n] = point[1];
				y[n]  = expect;

				n++;
				Q++;
			}

			System.out.print("(");
			System.out.print(DATEFORMAT.format(new Date((new Date()).getTime() - now.getTime())));
			System.out.println(")");
			level = level+STEP;
		}
		
		StringBuilder X1 = new StringBuilder();
		StringBuilder X2 = new StringBuilder();
		StringBuilder Y0 = new StringBuilder();
		StringBuilder Y1 = new StringBuilder();
		StringBuilder Y2 = new StringBuilder();
		StringBuilder Y = new StringBuilder();
		
		for (int i = 0; i < n; i++) {
			X1.append(FORMAT.format(x[0][i])).append(" ");
			X2.append(FORMAT.format(x[1][i])).append(" ");
			Y0.append(FORMAT.format(y[i][2])).append(" ");
			Y1.append(FORMAT.format(y[i][1])).append(" ");
			Y2.append(FORMAT.format(y[i][0])).append(" ");

			Y.append(y[i][2] > 0.5 ? 1 : 0)
			 .append(y[i][1] > 0.5 ? 1 : 0)
			 .append(y[i][0] > 0.5 ? 1 : 0)
			 .append(" ");
		}
		
		String folder = "/home/fernando/Dropbox/UFRN/2015.2/DCA0454 - Redes Neurais/simulacoes";
		
		BufferedWriter fileX1, fileX2, fileY;
		try {
			fileX1 = new BufferedWriter(new FileWriter(folder+"/DATA/X1.txt"));
			fileX1.append(X1);
			fileX1.flush();
			fileX1.close();

			fileX2 = new BufferedWriter(new FileWriter(folder+"/DATA/X2.txt"));
			fileX2.append(X2);
			fileX2.flush();
			fileX2.close();
			
			fileY = new BufferedWriter(new FileWriter(folder+"/DATA/D0.txt"));
			fileY.append(Y0);
			fileY.flush();
			fileY.close();
			
			fileY = new BufferedWriter(new FileWriter(folder+"/DATA/D1.txt"));
			fileY.append(Y1);
			fileY.flush();
			fileY.close();

			fileY = new BufferedWriter(new FileWriter(folder+"/DATA/D2.txt"));
			fileY.append(Y2);
			fileY.flush();
			fileY.close();

			fileY = new BufferedWriter(new FileWriter(folder+"/DATA/D.txt"));
			fileY.append(Y);
			fileY.flush();
			fileY.close();
			
		} catch (IOException e) { 
			System.out.println(e.getMessage());
		}
		
		System.out.println(X1.toString());
		System.out.println(X2.toString());
		System.out.println(Y0.toString());
		System.out.println(Y1.toString());
		System.out.println(Y2.toString());
	}

	public static void main(String[] args) {

		generateData(new MPSKPoint(5));
	}
}
