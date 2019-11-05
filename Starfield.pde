Particle[] starlings = new Particle[2500];
void setup(){
	background(0);
	size(500, 500);
	for(int i = 0; i < starlings.length; i++){
		starlings[i] = new Particle();
	}
}
void draw(){
	frameRate(100);
	noStroke();
	fill(0, 0, 0, 10);
	rect(0, 0, 1000, 1000);
	for(int i = 0; i < starlings.length; i++){
		starlings[i].move();
		starlings[i].show();
		starlings[0] = new OddballParticle();

	}
}
class Particle{
	public double x, y, speed, angle, size;
	public int colorsR, colorsG, colorsB;
	Particle(){
		x = 250;
		y = 250;
		angle = Math.random() * 2 * Math.PI;
		speed = Math.random() * 1.5;
		size = 7;
		colorsR = (int)(Math.random() * 255);
		colorsG = (int)(Math.random() * 75);
		colorsB = (int)(Math.random() * 100);
	}
	void move(){
		x += Math.sin(angle) * speed;
		y += Math.cos(angle) * speed;
		size += 0.001;
	}
	void show(){
		fill(colorsR, colorsG, colorsB, 100);
		ellipse((float)x, (float)y, (float)size, (float)size);
	}
}

class OddballParticle extends Particle{
	void show(){
		fill(0,200,200);
		ellipse((float)Math.random()*500,(float)Math.random()*500,(float)size,(float)size);
	}
	void move(){
		x += Math.sin(angle) * speed;
		y += Math.cos(angle) * speed;
		size += 0.005;
	}
}
