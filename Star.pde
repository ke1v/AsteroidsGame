public class Star {
	private int x, y, myColor, size;
	
	public Star() {
		x = (int) (Math.random()*700);
		y = (int) (Math.random()*700);
		myColor = color((int) (Math.random()*155), (int) (Math.random()*155), (int) (Math.random()*155));
		size = (int) (Math.random()*4+4);
	}
	
	public void show() {
		noStroke();
		fill(myColor);
		ellipse(x, y, size, size);
		fill(255);
	}
	
}

