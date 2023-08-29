  //define font
  PFont f1;
  
  void drawCirc(int p){
    stroke(255);
    circle(75,p+40,55);
    float col1 = map(1,50,5,50,50);
    fill(col1);
  
}
  void drawStuff(int p, float stuff){
    drawCirc(p);
    arc(75,p + 40,55,55,0,radians(stuff));
    fill(255);
    
    
    
  }
  void setup() {
    //setup Java Screen
    size(600,600);
    background(0);
    int counter = 0;
    int x = 0;
    String[] radAngles = {"2pi/3", "11pi/135", "2pi", "pi/2", "pi"};
     f1 = createFont("Cambria",15);
    for(String radian : radAngles){
        int place = 80*4;
        int con = radian.indexOf("/"); 
        int wip = radian.indexOf("pi");
        int ll = radian.length();
        if(con == -1){
          float newn = float(radian.substring(0,wip));
          if((radian.substring(0,wip)).length() == 0){
            newn = PI;
            newn = newn*(180/PI);
            println(radian ,newn);
            
            //font stuff requirment to show on screen
            String ms1 = "\u03C0" +" radians = "+ newn + "\u00B0" ;
            fill(255,255,255);
            textFont(f1);
            text(ms1,50,place);
            drawStuff(place,newn);
            
          }
          
          else{
             place = 80 * 5;
             newn = (newn * PI);
             newn = newn*(180/PI);
             String ms1 = radian.substring(0,wip) + "\u03C0" +" radians = "+ newn + "\u00B0" ;
            fill(255,255,255);
            textFont(f1);
            text(ms1,50,place);
            drawStuff(place,newn);
            
             }
        }
        
        else{
          float newp1 = 0;
          float newp2 = 0;
          float full = 0;
          place = 80 * 3;
          newp1 = float(radian.substring(0,wip));
          
          newp2 = float(radian.substring(con+1,ll));
          if ((radian.substring(0,wip)).length() == 0){
            full = PI/newp2;
            full = full*(180/PI);
            println(radian ,full);
            String ms1 =  "\u03C0" + radian.substring(wip+2,ll) +" radians = "+ full + "\u00B0" ;
            fill(255,255,255);
            textFont(f1);
            text(ms1,50,place);
            drawStuff(place,full);
          }
          
          else{
            if(counter == 0){
              x = 80;
            }
            else{
            x = x+80;}
            full = ((newp1 * PI)/newp2);
            full = full*(180/PI);
            String ms1 =  radian.substring(0,wip)+"\u03C0" + radian.substring(wip+2,ll) +" radians = "+ full + "\u00B0" ;
            fill(255,255,255);
            textFont(f1);
            text(ms1,50,x);
            println(radian, full);
            drawStuff(x,full);
            counter++;
            
           
          }
        }
        
        }

      
  }
  

  
