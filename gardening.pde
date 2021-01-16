import javax.swing.*;
  
void setup(){
  size(1000,600);
  
  /*Here I ask for the user's name, create and trim a string variable for the name and pass it into the bespoke quiz method 
   (see below for definition and explanation of bespoke methods)*/ 
  String name = JOptionPane.showInputDialog("Please enter your name:");
  name = trim(name); 
  quiz(name);


  /*Draw a light green background for the grass, 
  and then draw 10 random tufts of grass by passing random variables within that area into the bespoke drawGrass method (defined underneath)*/ 
  noStroke();  
  fill(127,186,0);
  quad(0,400,450,400,350,600,0,600);
   
  for(int i = 0; i<10; i++){
    float xRan = random (350);
    float yRan = random (420, 600);
    drawGrass(xRan, yRan);
    }
}

int sunX = 0; //a variable for the x coordinate of the sun moving across sky 
int plantY = 480; //a variable for y coordinate for the height of the growing plant 



void draw(){
 
  //background - unlike the grass, these parts of the background need to be in the draw method because the animation will draw over them  

  //fill out the sky area, which changes shade gradually as sun travels across the sky 
  noStroke();
  fill((sunX/4),225,241);
  rect(0,0,1000,400);
 
  //fill out the soil area 
  fill(136,107,46);
  quad(450,400,1000,400,1000,600,350,600);

  //draw the tap (no faucet handle just yet) 
  stroke(0);
  strokeWeight(2);
  fill(100);
  rect(380, 330, 20, 150);
  rect(380, 330, 60, 20);
  noStroke();
    
  /* Draw the sun moving across sky. 
  I used an if statement to return the sun to x=0 once it reaches the end of the sky. */
  fill(241,233,27);
  ellipse(sunX, 100,100,100);
  sunX++;
  if (sunX>1000)
  sunX=0;
   
  //This draws a text message on the screen instructing the user to turn on the tap
  String water = "Use the mouse to turn on the tap";
  fill(0);
  textSize(20); 
  if (plantY == 480)
    text(water, 50, 200);
 
  //This boolean is used to determine if the water tap is on or off: 
  boolean waterOn = false; 
  
  //this if statement will turn the water tap on (waterOn)if the cursor is at the tap handle and the mouse is left-clicked:
  if (mousePressed && (mouseButton == LEFT) && (mouseX > 380) && (mouseX < 410) && (mouseY >300) && (mouseY < 330)){
    waterOn = true;
  }   
  
  //the following if statement will draw the tap handle at the on or off position
  stroke(255,0,0); 
  strokeWeight(10);
  if (waterOn)
    line(390,330,380,310);
  else 
    line(390,330,400,310);
  
  /*the following if statement will draw water spraying onto the soil if the tap is on. 
  There is a while loop nested in the if statement to draw the lines of water */  
  if (waterOn){
    stroke(0,164,239);
    strokeWeight(5);
    int w=0;
    while(w<5){
      line(440,340,550+(20*w), 480-w);
      w++;
     }
  } 
  
  //the following will draw the growing plant stem based on the variable "plantY"    
  stroke(18,158,18);
  strokeWeight(9);
  line(560, 480, 560, plantY);
  
  //the following if statement will grow the plant by decreasing the variable plantY when the water tap is on 
  if (waterOn && plantY>80){
      plantY--;
  }  
  
  //the following if statements will draw leaves on the plant as it grows with the bespoke drawLeaf method  
  if (plantY<380){ 
  drawLeafs(380);
  }
  if (plantY<280){ 
    drawLeafs(280);
  } 
  if (plantY<180){ 
    drawLeafs(180);
  }
  if (plantY<81){ 
    drawLeafs(80);
  }
  
  // this if statement will write a text when the plant is fully grown 
  if (plantY==80){
    fill(0);
    textSize(20); 
    String s ="Now use the mouse to harvest your plant!";
    text(s, 50,200);
  }
  
  /*this if statement will display a shears for harvesting the plant when the mouse is positioned at the base of the plant. 
  There is a nested if statement which will "harvest" the plant if the mouse is left -clicked */ 
  
  if (mouseX>540 && mouseX<580 && mouseY>440 && mouseY<480){
    fill(150);
    stroke(0); 
    strokeWeight(2); 
    ellipse((mouseX+20), mouseY, 40,10);
    line(mouseX, mouseY, mouseX+40, mouseY);
    strokeWeight(5);
    line(mouseX,mouseY,mouseX-40, mouseY-5);
    line(mouseX,mouseY,mouseX-40, mouseY+5);
 
     if (mousePressed && mouseButton == LEFT){
       plantY = 480;
     }
  }
  
 }
 
 //Bespoke Methods: 
 
  /* This method uses the vaiable name to ask a personalised question and then return a message based on the reply. I created a method for this becuase I wanted to use a 
    recursive loop (using if statement instead of while or for) which would replay the question again and again until the user replies to the question with either yes or no. Actually any word begining with either a 
    capital or lowercase y or n will suffice as a reply and return the respective answer. This is to allow for all types of replies such as y / n, Y / N, yes / no, Yes / No, yeah / na, etc.  */   
 
 void quiz(String name){
    String reply = JOptionPane.showInputDialog("Do you like gardening, "+name+"? (Y/N)");
    char  replyChar = reply.charAt(0);
    if (replyChar == 89 || replyChar == 121)
      JOptionPane.showMessageDialog(null, "Great, " +name+ ". You will enjoy this!");
    else if (replyChar == 110 || replyChar == 78)
      JOptionPane.showMessageDialog(null, "OK, " +name+ ". Let's try and change your mind!");
    else{ 
      JOptionPane.showMessageDialog(null, "Please enter yes or no, "+name);
      quiz(name);
    }
 } 
 
 /*Bespoke method to draw grass. 
 This bespoke method draws a tuft of grass at the specific x&y xcoordinates which are passed into it. It defines a green stroke and draws three lines 
 which represents the tuft of grass. I created a method for this to avoid repeating the code for drawing the clumps of grass.*/
 void drawGrass(float xCoord, float yCoord){ 
   stroke(72,122,8); 
   strokeWeight(4); 
   line(xCoord, yCoord, xCoord-10, yCoord-15);  
   line(xCoord, yCoord, xCoord, yCoord-20);  
   line(xCoord, yCoord, xCoord+10, yCoord-17); 
 }
 
 
 /*Bespoke method to draw leaves on the plant. 
 This bespoke method draws two leaves on the plant at the specific y varable which is passed into the method. It does this by drawing two green ellipses with 
 black outlines. I created a method for this to avoid repeating the code for drawing the leaves.*/ 
 void drawLeafs(int leafY){
   fill(18,158,18);
   stroke(0);
   strokeWeight(2);
   ellipse(520, leafY, 80, 20); 
   ellipse(600, leafY, 80, 20);
 }
