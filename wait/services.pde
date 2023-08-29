class waitList{
  ArrayList<Client> waiting;
  
  waitList(){
  waiting = new ArrayList<Client>();
}

void addCustomer(Client c){
  waiting.add(c);
  }

Client removeCustomer(){
  return(waiting.remove(0));
}

void lineofPeople(){
  println("The line up is now..",waiting.size(),"people");
  
}

void isEmpty(){
  if(waiting.size() == 0){
    println("Looks like no more customers");
  }}


}
  
