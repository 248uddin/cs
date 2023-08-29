class Bar{
  String name;
  Boolean available;
  int serviceOffered;
  Client c;
  //Constructor
  Bar(String n, Boolean a, int sO, Client ci){
    this.name = n;
    this.available = a;
    this.serviceOffered = sO;
    this.c = ci;
  }

  //Methods
  void describeBar(){
    println("Barbers name is: ",this.name);
    if(this.serviceOffered == 1){
      service1();
    }
    
    else if(this.serviceOffered == 2)
      service2();
      
    if(this.available == true)
    println("--No clients right now--");
    
    
  }
  
  void currentlyServing(){
  if(this.available == false)
      println(this.name," is currently serving customer...",(this.c.name));
      
   else
    println("--No clients right now--");
    }
    
  
    
  void serviceUpdate(Client ci){
    this.c = ci;
    this.available = false;
  }
    
  void serviceClear(){ //Clears the barbers client once they are finished
    this.c = null;
    this.available = true;
  }
  
  
  
  
  void service1(){
    println(this.name," Offers Service 1: Haircut, Fade and Beard" );
  
    
  }
  
  void service2(){
    println(this.name," Offers Service 2: Highlights and hot towel" );
    
  }
  
  
  
  
    
}
