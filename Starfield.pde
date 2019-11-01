Particle[] starlings = new Particle[1000];
void setup(){
	size(500, 500);
	for(int i = 0; i < starlings.length; i++){
		starlings[i] = new Particle();
	}
}
void draw(){
	frameRate(100);
	noStroke();
	background(0);
	fill(0, 0, 0, 40);
	stroke(255, 255, 255, 50);
	rect(0, 0, 1000, 1000);
	for(int i = 0; i < starlings.length; i++){
		starlings[i].move();
		starlings[i].show();
	}
}
class Particle{
	public double x, y, speed, angle, size;
	public int colorsR, colorsG, colorsB;
	Particle(){
		x = 250;
		y = 250;
		angle = Math.random() * 2 * Math.PI;
		speed = Math.random() * 5;
		size = 10;
		colorsR = (int)(Math.random() * 255);
		colorsG = (int)(Math.random() * 75);
		colorsB = (int)(Math.random() * 100);
	}
	void move(){
		x += Math.sin(angle) * speed;
		y += Math.cos(angle) * speed;
		size += 0.005;
	}
	void show(){
		fill(colorsR, colorsG, colorsB, 100);
		ellipse((float)x, (float)y, (float)size, (float)size);
	}
}

// class OddballParticle //inherits from Particle {
// 	your code here
// }


// int startx = 0;
// int starty = 150;
// int endx = 0;
// int endy = 150;
// int r = 0;
// int b = 0;
// int g = 0;

// int changex = 20;
// int changey = 20;

// void setup()
// {
//   frameRate(40);
//   size(500,500);
//   strokeWeight(5);
//   background(255,255,255);

// }
// void draw()
// {	fill(255,255,255,5);
// 	stroke(0);
// 	rect(125, 125, 250, 250, 0);
// 	stroke(r,g,b);
// 	endx = startx +  (int)(Math.random()* changex);
// 	endy = starty + (int)(Math.random()* changey);
// 	line(startx, starty, endx, endy);
// 	fill(255);
// 	noStroke();
// 	fill(200,200,200);
// 	rect(0,376,500,500);
// 	rect(0,0,500,124);
// 	rect(0,0,124,500);
// 	rect(376,0,500,500);

// 	startx = endx;
// 	starty = endy;

// 	// fill(255,255,255, 100);
	
// 	if(endx <= 125)
// 		changex = changex * -1;
// 		endx = endx + 100;
// 	if(endx >= 375)
// 		changex = changex * -1;
// 		endx = endx - 100;
// 	if(endy <= 125)
// 		changey = changey * -1;
// 		endy = endy + 100;
// 	if(endy >= 375)
// 		changey = changey * -1;
// 		endy = endy - 100;	
	
	
// }
// void mousePressed()
// {	
// 	background(255, 10000);
// 	starty = 250;
// 	startx = (int)(Math.random()*250 + 125);
// 	endy = 250;
// 	endx = (int)(Math.random()*250-125);

// 	r = (int)(Math.random() * 255);
// 	g = (int)(Math.random() * 255);
// 	b = (int)(Math.random() * 255);
// }
