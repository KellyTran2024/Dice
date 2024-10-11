void setup() {
    size(500, 510); 
    noLoop();       
}

void draw() {
    background    (253,219,255); 
    int total = 0;   

    //for the 7x7 dices nested loop
    for (int i = 0; i < 7; i++) {
        for (int j = 0; j < 7; j++) {
          
            Die bob = new Die(50 + i * 60, 50 + j * 60);
            bob.show();       
            total += bob.dots; 
 }
    }
  //  fill(0); 
    textSize(25);
    text("Total: " + total, 200, 490); 
}

void mousePressed() {
    redraw(); 
}

class Die { //models one single dice cube
 //member variable declarations here
    int MyX, MyY;   
    int dots;  
    Die(int x, int y) { // constructor 
//variable initializations here
        MyX = x;
        MyY = y;
        roll(); 
 }
    void roll() {
        dots = (int)(Math.random() * 6) + 1;
    }
    void show() {
       
     if (dots == 1) {
            fill(54,59,116); 
        } else if (dots == 2) {
            fill(103,56,136); 
        } else if (dots == 3) {
            fill(199,157,215); 
        } else if (dots == 4) {
            fill(77,27,123);   
        } else if (dots == 5) {
            fill(103,56,136); 
        } else if (dots == 6) {
            fill(199,157,215);   
        }
        rect(MyX, MyY, 50, 50, 5);  
        
        fill(239,79,145);
        noStroke();
    
        
 // yes i hard coded it SPARE ME plz  !! :'C

        if (dots == 1){
            ellipse(MyX + 25, MyY + 25, 8, 8); 
        } 
        //top left - bottom right
        else if (dots == 2){
            ellipse(MyX + 15, MyY + 15, 8, 8); 
            ellipse(MyX + 35, MyY + 35, 8, 8); 
        } 
        //top left-center-bottom right 
        else if (dots == 3){
            ellipse(MyX + 15, MyY + 15, 8, 8); 
            ellipse(MyX + 25, MyY + 25, 8, 8); 
            ellipse(MyX + 35, MyY + 35, 8, 8); 
        } 
        //top left-topright-bottom left- bottom right
        else if (dots == 4){
            ellipse(MyX + 15, MyY + 15, 8, 8); 
            ellipse(MyX + 35, MyY + 15, 8, 8); 
            ellipse(MyX + 15, MyY + 35, 8, 8); 
            ellipse(MyX + 35, MyY + 35, 8, 8); 
        } 
        // top left- top right- middle- bottom left- bottom right
        else if (dots == 5){
            ellipse(MyX + 15, MyY + 15, 8, 8); 
            ellipse(MyX + 35, MyY + 15, 8, 8); 
            ellipse(MyX + 25, MyY + 25, 8, 8); 
            ellipse(MyX + 15, MyY + 35, 8, 8); 
            ellipse(MyX + 35, MyY + 35, 8, 8); 
        } 
        //top left-topright-middle left- mid right- bottom left- bottom right
        else if (dots == 6){
            ellipse(MyX + 15, MyY + 15, 8, 8); 
            ellipse(MyX + 35, MyY + 15, 8, 8); 
            ellipse(MyX + 15, MyY + 25, 8, 8);
            ellipse(MyX + 35, MyY + 25, 8, 8); 
            ellipse(MyX + 15, MyY + 35, 8, 8); 
            ellipse(MyX + 35, MyY + 35, 8, 8); 
}
  }
}





