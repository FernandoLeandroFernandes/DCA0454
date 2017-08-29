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

public class TwelvePointsGenerator {

	static final int CLASSES = 12;
	static final int QPOINTS = 20;
	static final String FOLDER = "/home/fernando/Dropbox/UFRN/2015.2/DCA0454 - Redes Neurais/simulacoes/DATA/";
	
	static double [] x = new double[CLASSES*QPOINTS];
	static double [] y = new double[CLASSES*QPOINTS];

	
	static final NumberFormat FORMAT = new DecimalFormat("0.00000", DecimalFormatSymbols.getInstance(new Locale("en", "US")));
	static final SimpleDateFormat DATEFORMAT = new SimpleDateFormat("m'min' ss.SSS'seg'");

	static BufferedWriter allX;
	static BufferedWriter allY;
	
	private static void generateData() {
	
		Date now;
		int Q, pointClass;
		Point point;

		try {
			
			allX = new BufferedWriter(new FileWriter(FOLDER+"CX.txt"));
			allY = new BufferedWriter(new FileWriter(FOLDER+"CY.txt"));

			for (int classIndex = 0; classIndex < CLASSES; classIndex++) {
				
				System.out.print("Camada em CLASS = "+classIndex);
				System.out.print("... ");
				now = new Date();
				
				Q = 0;
				while (Q < QPOINTS) {
					
					x[Q] = (Math.random()*((classIndex < 3 || classIndex > 8) ? 1 : -1));
					y[Q] = (Math.random()*(classIndex < 6 ? 1 : -1));
					point = Point.create(x[Q], y[Q]);
					pointClass = TwelvePatternsPoint.classification(point);
					if (pointClass == classIndex) {
						Q++;
					}
				}
	
				writeData(x, y, classIndex);
				
				System.out.print("(");
				System.out.print(DATEFORMAT.format(new Date((new Date()).getTime() - now.getTime())));
				System.out.println(")");
			}
		
			allX.flush();
			allX.close();
			
			allY.flush();
			allY.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	private static void writeData(double [] x, double [] y, int classIndex) {

		StringBuilder X = new StringBuilder();
		StringBuilder Y = new StringBuilder();
		
		for (int i = 0; i < QPOINTS; i++) {
			X.append(FORMAT.format(x[i])).append(" ");
			Y.append(FORMAT.format(y[i])).append(" ");
		}
		
		BufferedWriter fileX, fileY;
		try {
			fileX = new BufferedWriter(new FileWriter(FOLDER+String.format("C%dX.txt", classIndex)));
			fileX.append(X);
			fileX.flush();
			fileX.close();

			allX.append(X);

			fileY = new BufferedWriter(new FileWriter(FOLDER+String.format("C%dY.txt", classIndex)));
			fileY.append(Y);
			fileY.flush();
			fileY.close();

			allY.append(Y);

		} catch (IOException e) { 
			System.out.println(e.getMessage());
		}
		
//		System.out.println(X.toString());
//		System.out.println(Y.toString());
	}

	public static void main(String[] args) {

		generateData();
		
	}
}
