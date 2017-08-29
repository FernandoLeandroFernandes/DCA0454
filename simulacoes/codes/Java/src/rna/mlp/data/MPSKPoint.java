package rna.mlp.data;


public class MPSKPoint {

	private static final double[][] REFBITS = {
		{1, 1, 1}, 
		{1, 1, 0}, 
		{0, 1, 1}, 
		{0, 1, 0}, 
		{0, 0, 0}, 
		{0, 0, 1}, 
		{1, 0, 0}, 
		{1, 0, 1}};
	
	private final double radius;
	
	public MPSKPoint(double radius) {
		this.radius = radius;
	}
	
	public double getRadius() {
		return radius;
	}

	public double[] nearby(double ... data) {
		double [] point = new double[2];
		point[0] = (data[0]+(radius/5*Math.random()));
		point[1] = (data[1]+(radius/5*Math.random()));
		return point;
	}

	public double[] response(double angle) {
		return REFBITS[(int)Math.round((angle-Math.PI/16)/(Math.PI/4))];
	}
}
