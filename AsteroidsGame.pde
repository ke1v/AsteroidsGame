Boolean rotLeft = false, rotRight = false, accelerate = false;

Star[] space = new Star[100];

Spaceship ship = new Spaceship();

public void setup(){
  size(700, 700);
  background(0);
  noStroke();

  //Filling Star Array
  for (int i = 0; i < space.length; i++) {
  	space[i] = new Star();
  }

}

public void draw() {
  background(0);

  //Drawing the Stars
  for (int i = 0; i < space.length; i++) {
  	space[i].show();
  }

  ship.move();
	ship.show();

	//Rotation
	if (rotLeft && !rotRight) {
		ship.turn(-3);
	} else if (rotRight && !rotLeft) {
		ship.turn(3);
	}

	//Aceleration
	if (accelerate) {
		ship.accelerate(0.1);
	}
}

public void keyPressed() {

	//Hyperspace
	if (key == '2') {
		ship.hyperSpace();
	}

	//Rotate left
	if (key == '4') {
		rotLeft = true;
	} else if (key == '5') { //Accelerate
		accelerate = true;
	} else if (key == '6') { //Rotate right
		rotRight = true;
	}
}

public void keyReleased() {
	//Rotate left
	if (key == '4') {
		rotLeft = false;
	} else if (key == '5') { //Accelerate
		accelerate = false;
	} else if (key == '6') { //Rotate right
		rotRight = false;
	}
}
