void setup(){

//Clients
Client jim = new Client("jim",1,4,null);
Client john = new Client("john",2,12,null);
Client joe = new Client("joe",1,12,null);
Client bob = new Client("bob",1,25,null);
Client heidi = new Client("heidi",2,25,null);
Client tony = new Client("tony",1,67,null);
Client aj = new Client("aj",2,67,null);

//Waitlist
waitList waitTime = new waitList();
waitTime.addCustomer(jim);
waitTime.addCustomer(john);
waitTime.addCustomer(joe);
waitTime.addCustomer(bob);
waitTime.addCustomer(heidi);
waitTime.addCustomer(tony);
waitTime.addCustomer(aj);


//Barbers
Bar barber1 = new Bar("ibby",true,1,null);
barber1.describeBar();
Bar barber2 = new Bar("Mk",true,2,null);
barber2.describeBar(); 

//TimeToParty
Client personinLine = waitTime.removeCustomer();
waitTime.lineofPeople();
personinLine.describeCli();
personinLine.cost4Cut();

barber1.serviceUpdate(personinLine); //updates the person the barber is serving 
personinLine.b = barber1; //updates the client that is seeing the barber
barber1.currentlyServing();
barber1.serviceClear();
personinLine.clearBarber();

personinLine = waitTime.removeCustomer();
waitTime.lineofPeople();
personinLine.describeCli();
personinLine.cost4Cut();

barber2.serviceUpdate(personinLine); //updates the person the barber is serving 
personinLine.b = barber2; //updates the client that is seeing the barber
barber2.currentlyServing();
barber2.serviceClear();
personinLine.clearBarber();

personinLine = waitTime.removeCustomer();
waitTime.lineofPeople();
personinLine.describeCli();
personinLine.cost4Cut();

barber1.serviceUpdate(personinLine); //updates the person the barber is serving 
personinLine.b = barber1; //updates the client that is seeing the barber
barber1.currentlyServing();
barber1.serviceClear();
personinLine.clearBarber();

personinLine = waitTime.removeCustomer();
waitTime.lineofPeople();
personinLine.describeCli();
personinLine.cost4Cut();

barber1.serviceUpdate(personinLine); //updates the person the barber is serving 
personinLine.b = barber1; //updates the client that is seeing the barber
barber1.currentlyServing();
barber1.serviceClear();
personinLine.clearBarber();

personinLine = waitTime.removeCustomer();
waitTime.lineofPeople();
personinLine.describeCli();
personinLine.cost4Cut();

barber2.serviceUpdate(personinLine); //updates the person the barber is serving 
personinLine.b = barber2; //updates the client that is seeing the barber
barber2.currentlyServing();
barber2.serviceClear();
personinLine.clearBarber();

personinLine = waitTime.removeCustomer();
waitTime.lineofPeople();
personinLine.describeCli();
personinLine.cost4Cut();

barber1.serviceUpdate(personinLine); //updates the person the barber is serving 
personinLine.b = barber1; //updates the client that is seeing the barber
barber1.currentlyServing();
barber1.serviceClear();
personinLine.clearBarber();

personinLine = waitTime.removeCustomer();
waitTime.lineofPeople();
personinLine.describeCli();
personinLine.cost4Cut();

barber2.serviceUpdate(personinLine); //updates the person the barber is serving 
personinLine.b = barber2; //updates the client that is seeing the barber
barber2.currentlyServing();
barber2.serviceClear();
personinLine.clearBarber();

waitTime.isEmpty();

}
