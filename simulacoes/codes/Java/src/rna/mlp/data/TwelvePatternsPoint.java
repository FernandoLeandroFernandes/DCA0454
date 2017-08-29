package rna.mlp.data;

import static java.lang.Math.pow;

class Point {
	
	public double x;
	
	public double y;

	public static Point create(double x, double y) {
		Point point = new Point();
		point.x = x;
		point.y = y;
		return point;
	}
	
	@Override
	public String toString() {
		return "("+x+", "+y+")";
	}
}

class Circle {
	
	public Point center;
	
	public double radius;

	public Region clip;
	
	public static Circle create(Point center, double radius, Region clip) {
		Circle circle = new Circle();
		circle.center = center;
		circle.radius = radius;
		circle.clip = clip;
		return circle;
	}
	
	public boolean isContained(Point point) {
		boolean inRadius = (pow(center.x-point.x, 2)+pow(center.y-point.y, 2) < pow(radius, 2));
		return isBounded(point) && inRadius;
	}
	
	public boolean isBounded(Point point) {
		return (clip.topleft.x <= point.x && clip.bottomright.x >= point.x) && 
			   (clip.topleft.y >= point.y && clip.bottomright.y <= point.y);
	}
}

class Region {
	
	public Point topleft;
	
	public Point bottomright;
	
	public Circle right;
	
	public Circle top;
	
	public static Region create(Point topleft, Point bottomright, Circle right, Circle top) {
		Region region = new Region();
		region.topleft = topleft;
		region.bottomright = bottomright;
		region.right = right;
		region.top = top;		
		return region;
	}

	public static Region create(Point topleft, Point bottomright) {
		Region region = new Region();
		region.topleft = topleft;
		region.bottomright = bottomright;
		return region;
	}
}

public class TwelvePatternsPoint {

	public static Circle topCircle = Circle.create(Point.create(0, 1), 1, Region.create(Point.create(-1, 1), Point.create(1, 0)));
	public static Circle bottomCircle = Circle.create(Point.create(0, -1), 1, Region.create(Point.create(-1, 0), Point.create(1, -1)));
	public static Circle leftCircle = Circle.create(Point.create(-1, 0), 1, Region.create(Point.create(-1, 1), Point.create(0, -1)));
	public static Circle rightCircle = Circle.create(Point.create(1, 0), 1, Region.create(Point.create(0, 1), Point.create(1, -1)));
	
	public static Region quadrant1 = Region.create(Point.create(0, 1), Point.create(1, 0), rightCircle, topCircle);
	public static Region quadrant2 = Region.create(Point.create(-1, 1), Point.create(0, 0), topCircle, leftCircle);
	public static Region quadrant3 = Region.create(Point.create(-1, 0), Point.create(0, -1), leftCircle, bottomCircle);
	public static Region quadrant4 = Region.create(Point.create(0, 0), Point.create(1, -1), bottomCircle, rightCircle);
	public static Region[] quadrants = {quadrant1, quadrant2, quadrant3, quadrant4};

	public TwelvePatternsPoint() { }
	
	public static int classification(Point point) {

		int pointClass = -1;
		
		if ((point.x >= -1 && point.x <= 1) && 
			(point.y >= -1 && point.y <= 1)) {
		
			int quad = (point.y > 0 ? (point.x > 0 ? 0 : 1) : (point.x < 0 ? 2 : 3));
			Region quadrant = quadrants[quad];
			pointClass = (quadrant.right.isContained(point) ? quadrant.top.isContained(point) ? 1 : 0 : 2)+(quad*3);
		}
		
		return pointClass;
	}
	
	public static void main(String[] args) {
		
	}
}
