public class Spaceship extends Floater{
	
	public Spaceship() {
		corners = 4;
		xCorners = new int[]{-16, -8, -16, 16};
		yCorners = new int[]{-12, 0, 12, 0};
		myColor = color(255, 255, 255);
		myCenterX = myCenterY = 350;
		myXspeed = myYspeed = 0;
		myPointDirection = 0;
	}
	
	public void hyperSpace() {
		myCenterX = Math.random()*680  + 10;
		myCenterY = Math.random()*680  + 10;
		myXspeed = myYspeed = 0;
		myPointDirection = Math.random()*360;
	}
	
	public double getX() {
		return myCenterX;
	}
	
	public double getY() {
		return myCenterY;
	}

}
