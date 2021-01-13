/* Reflection

Name : John Cagney

Student Number: 20091384

5 & 10 & 10 & 12 & 14 & 20 & 15 = 86%

Part A - Mark (5 /5)
-----------------------------

I have a mixture of single and multi-line comments within the code.
I believe I used correct indentation and naming conventions for variables and methods 


Part B - Mark (10 /10)
-----------------------------
line 03 - setup() 
line 31 - draw()


Part C - Mark (10 /10)
-----------------------------
Use of if statements:

line 57 - A simple if statement which returns the sun to the start of the screen once it reaches the end 

line 64 - A simple if statement which prints a text instruction for the user to turn on water when the plant is at its smallest 

line 71 - An if statement to make the waterOn boolean positive when the mouse is left-clicked on the water tap 

line 78 - An if and else statement to draw the water tap handle at an angle according to whether it is turned on or not 

line 85 - An if statement with a nested while loop, to draw the water spraying onto the soil when the water is turned on. 
          The purpose of thw while loop is to draw multiple lines of water spray without having to repeat the code.  

line 101 - An if statement to increase / grow the size of the plant (by decreasing the plantY variable) when the water is on and if the plant is 
           below a certain size 

line 106-115 - Multiple if statements calling the bespoke drawLeaf() method according to the size the plant has grown. The drawLeaf method draws two leaves
               on the stem of the plant at the specific Y coordinate which is passed into the method. 

line 120 - Simple if statement to print a text message when the plant is fully grown instructing the user to "harvest" it 

line 130 - An if statement with another nested if statement drawing a "shears" when the cursor hovers over the base of the plant and then "cutting" 
           the plant once the mouse is pressed 

line 156 - If, else if and else statements within the definition of the bespoke method quiz(). This bespoke method uses JOption to ask the user a question and 
           then uses the if statement to give another reply based on the user's answer. I made this method to be recursive in that if the "if" and "else if" conditions 
           are not matched then the final "else" replays the method until the user satisfies the first two conditions. Basically this forces the user to respond to the
           question with either a y or n before the program will continue. 
           
I have used multiple if statements with branches and nexted if statements so I am giving myself full marks for this. 


Part D - Mark (12 /20)
-----------------------------
Use of loops:

for loops used on:
line 19 - for loop used to draw random clumps of grass, by repeatedly creating random x and y coords and passing them into the bespoke drawGrass method. 

use of while loop on:
line 89 - while loop used to draw multiple lines of water spraying from the tap onto the soil 

I give myself 12 (good) here as I have used both types of loops but I do not have a nested loop 


Part E - Mark (14/20)
-----------------------------
Use of at least one bespoke method:

quiz() - This method is called at line 10 and defined at line 153
          This bespoke method uses the already defined vaiable "name" to ask a personalised question (do you like gardening?) and then returns a message based on the reply. 
          I created a method for this becuase I wanted to use a recursive loop (using if statement instead of while or for) 
          which would replay the question again and again until the user replies to the question with either yes or no.
          Actually any word begining with either a capital or lowercase y or n will suffice as a reply and return the respective answer. 
          This is to allow for all types of replies such as y / n, Y / N, yes / no, Yes / No, yeah / na, etc.  

drawGrass() - This method is called at line 22 and defined at line 169
               This bespoke method draws a tuft of grass at the specific x&y xcoordinates which are passed into it. It defines a green stroke and draws three lines 
               which represents the tuft of grass. I created a method for this to avoid repeating the code for drawing the clumps of grass. 
               
               
drawLeaf() This method is called at line 107, 110, 113, 116 and defined at line 181. 
            This bespoke method draws two leaves on the plant at the specific y varable which is passed into the method. It does this by drawing two green ellipses with 
            black outlines. I created a method for this to avoid repeating the code for drawing the leaves. 

I have 3 bespoke methods but none return a value so I will give myself 14 (very good). 


Part F - Mark (20 /20)
-----------------------------
Use of Processing methods 

line 15  - nostroke(). This is used to stop an outline being drawn on the following shapes. 
line 16 - fill(). This is used to define the colour or shade to fill the following shapes with. 
line 17 - quad(). This is used to draw a quadrilateral accoridng to the coordinates passed into the method. 
line 48 - rect(). This is used to draw a rectangle according to the variables passed into the method. 
line 55 - ellipse(). This is used to draw a circle or ellipse according to the variables passed into the method. 

I have called 5+ processing methods so am giving myself full marks for this. 

Part G - Mark (15 /15)
-----------------------------
Use of String methods 

line 8 - JOptionPane.showInputDialog(). This method is used to present a message and allow the user input a new string 
line 9 - trim(). This method is used to trim any blank spaces from the start and end of a string 
line 63 - textSize(). This method is used to set the size of text to be drawn to the screen. 
line 65 - text(). This method is used to draw text to the screen. String variables and coordinates can be passed into the method. 
line 155 - charAt(). This method is used to specify a character within a string at the given index

I have called 5+ string methods so am giving myself full marks on for this. 

*/
