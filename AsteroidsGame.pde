import java.util.ArrayList;

Boolean rotLeft = false, rotRight = false, accelerate = false;
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
Star[] space = new Star[100];

int killDist = 25;
int asteroidCount = 50;

Spaceship ship = new Spaceship();

public void setup(){
  size(700, 700);
  background(0);
  noStroke();

  //Filling Star Array
  for (int i = 0; i < space.length; i++) {
  	space[i] = new Star();
  }

    //Filling Asteroid ArrayList
    for (int i = 0; i < asteroidCount; i++) {
	    asteroids.add(new Asteroid());
    }

}

public void draw() {
  background(0);

  //Drawing the Stars
  for (int i = 0; i < space.length; i++) {
  	space[i].show();
  }

    //Drawing the Asteroids
    for (int i = 0; i < asteroids.size(); i++) {
	    
	    Asteroid asteroid = asteroids.get(i);
	    
	    if (dist((float)asteroid.getX(), (float)asteroid.getY(), (float)ship.getX(), (float)ship.getY()) > killDist) {
		    asteroid.move();
		    asteroid.show();
	    } else {
		    asteroids.remove(i);
	    }
	    
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
