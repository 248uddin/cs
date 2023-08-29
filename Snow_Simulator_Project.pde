int [][] cells;
int [][] cellsNext;

//Initializations which can be altered
int n = 4; //Grid size
float bprs = 2;

//Constants
float cellSize; 
float p = 50; 
int aN;

//These are the states
final int  W = -1; //Water
final int L = 0; //Land
final int S = 1; //Snow

//Setup needed for the assignment
void setup(){
  size(500,500); 
  cellSize = (width-2*p)/n;
  cells = new int[n][n];
  cellsNext = new int[n][n];
  frameRate(bprs);
}

void draw(){
  setCellBrown(); //Function that presets everything to brown 
  setSnow(); //Function that starts the snow storm
  float y = p;
  //Before Animation loop begins 
  for(int i=0; i<n; i++){
    float x = p;
    for(int j=0; j<n;j++){
      if(cells[i][j] == S)
        fill(255,255,255); //Colour white for snow
      else if(cells[i][j] == W)
        fill(0,0,255); //Colour blue for water
      else if(cells[i][j] == L)
        fill(150,75,0); //Colour brown for land
        
      square(x,y,cellSize); //Creates the box on the grid
      
      x+= cellSize;
      nextGen(); //Calls the next generation 
      cells[i][j] = cellsNext[i][j];
        
    }
    y+= cellSize;
    nextGen();
    
    
  }
   


 
 
}

//This function counts the live neighbours
int [] CountLiveNeighbours(int ii,int jj){
  int countW = 0; //Count for water neighbours
  int countS = 0; //Count for snow neighbours
  int countL = 0; //Count for land neighbours
  int [] addCounters =  new int [3]; //Array which will return counts for each state
  for(int a=-1; a < 2; a++){
     for(int b=-1; b < 2; b++){
       try{
           if ((cells[ii+a][jj+b] == W) && ((b!=0) ||(a!=0)))
                 countW++;
                 
           else if ((cells[ii+a][jj+b] == S) && ((b!=0) ||(a!=0)))
                 countS++;
                 
           else if ((cells[ii+a][jj+b] == L) && ((b!=0) ||(a!=0)))
                 countL++;
            
               
             }
       catch( Exception e){
         println("Error!");
       }
       
         }
   }
   addCounters[0] = countW;
   addCounters[1] = countS;
   addCounters[2] = countL;
   
   return addCounters; //Returns array of counts
   

}
void nextGen(){ //Function creates next generation 
  for(int i =0; i <n; i++){
    for(int j=0; j <n; j++){
      int []aN = CountLiveNeighbours(i,j);
      int cW = aN[0]; //Count for water neighbours
      int cS = aN[1]; //Count for snow neighbours
      int cL = aN[2]; //Count for land neighbours
      if (cells[i][j] == L){
        if (cS >= 1){ //If lands number of snow neighbours is greater than or equal to 1 set the current cell to water
          cells[i][j] = W; 
        }
        
        else if(cS >= 2){ //If lands number of snow neighbours is greater than or equal to 2 set the current cell to snow
          cells[i][j] = S;
        }   
    }
    
    else if (cells[i][j] == W){ //If waters number of land neighbours is greater than or equal to 2 set the current cell to land
      if(cL >= 2){
        cells[i][j] = L;
      }
      
    
  }
  
  else if (cells[i][j] == S){ //If snows number of land neighbours is greater than or equal to 3 set the current cell to water
    if(cL >= 3){
      cells[i][j] = W;
    }
  }
    }
    
  }
}
  


void setCellBrown(){ //This function is responsible for setting everything in the grid to the colour brown 
   background(255,0,0);
   float y=p;
    for(int i=0; i<n;i++){
     float x=p;
      for(int j=0;j<n;j++){
          fill(150,75,0); //Brown colour can be changed 
          square(x,y,cellSize);
          cells[i][j] = L;
         x+= cellSize;
      }
        y+=cellSize;
    }
}

void setSnow(){ //This function is responsible for randomly setting colours on the grid to white to represent snow

   float y=p;
    for(int i=0; i<n;i++){
     float x=p;
      for(int j=0;j<n;j++){
          int rand = round(random(0,1));
          if (rand == 1){
             fill(255,255,255); //White colour can be changed
             square(x,y,cellSize);
             cells[i][j] = S;
          }
               
        
         x+= cellSize;
         
      }
        y+=cellSize;
    }
}
