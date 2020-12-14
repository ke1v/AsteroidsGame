public class Asteroid extends Floater {
	private double rotationSpeed;
	
	public Asteroid() {
		corners = (int) (Math.random() * 4) + 4;
		xCorners = new int[corners];
		yCorners = new int[corners];
		for (int i = 0; i < corners; i++) {
			xCorners[i] = (int) (Math.cos(2*Math.PI*i/corners+Math.random()) * (Math.random() * 5 + 15));
			yCorners[i] = (int) (Math.sin(2*Math.PI*i/corners+Math.random()) * (Math.random() * 5 + 15));
		}
		myColor = color(169,169,169);
		myCenterX = Math.random() * 700;
		myCenterY = Math.random() * 700;
		myXspeed = myYspeed = 0;
		myPointDirection = Math.random() * 360;
		rotationSpeed = Math.random() * 5;
		super.accelerate(Math.random() + .5);
	}
	
	public double getX() {
		return myCenterX;
	}
	
	public double getY() {
		return myCenterY;
	}
	
	public void move() {
		super.move();
		super.turn(rotationSpeed);
	}
}

