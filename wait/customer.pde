class Client{
  String name;
  int serviceWanted;
  int age;
  Bar b;
  
  
  
  
Client(String n, int sW, int a, Bar bb){
  this.name = n;
  this.serviceWanted = sW;
  this.age = a;
  this.b = bb;
  

}

 void describeCli(){
    println("----------------------------");
    println("Clients name is: ",this.name);
    println(this.name," would like Service ",this.serviceWanted);
    println("");
    
  }
  
  void clearBarber(){
    this.b = null;
  }
  
  
  
  void cost4Cut(){
    if (this.age < 5 && (this.serviceWanted == 1 || this.serviceWanted == 2))
      println(this.name," is too young.. Fine your fee is free!");  
      
    else if( (this.age >= 5 ) && (this.age < 15) && this.serviceWanted == 1)
       println(this.name," Is in luck what a BUB! You get a $12 deal");
       
    else if( (this.age >= 5 ) && (this.age < 60) && this.serviceWanted == 1)
       println(this.name," Hahaha life sucks for you pay up 25 big ones");
       
    else if( (this.age >= 60 ) && this.serviceWanted == 1)
       println(this.name," recieves a senior discount makeing it $18 for you!");
       
   else if( (this.age >= 5 ) && (this.age < 15) && this.serviceWanted == 2)
       println(this.name," Is in luck what a BUB! You get a $22 deal");
       
     else if( (this.age >= 5 ) && (this.age < 60) && this.serviceWanted == 2)
       println("Hahaha life sucks",this.name," time for you pay up 35 big ones");
       
     else if( (this.age >= 60 ) && this.serviceWanted == 2)
       println(this.name," recieves a senior discount makeing it $28 for you!");
  }
  
  
  
  
  
  
}
