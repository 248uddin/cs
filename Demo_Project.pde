 class Team {
   // All data used is from this NBA season 
   String name;
   int rank; // regular season position based off this years standings
   float psg; // points per game
   float pag; // points allowed
   float srs; // simple rating system score
   float wlp; // win/loss percentage
   
}
 
 Team winner(Team a, Team b){
   float rando1 = 0.4;
   float rando2 = 0.4;
   
   //Basic Rankings
   if (a.rank > b.rank){rando1 += 0.1;}
   else{rando2 += 0.1;}
   
   if (a.wlp > b.wlp){rando1 += 0.1;}
   else{rando2 += 0.1;}
   
   if (a.psg > b.psg){rando1 += 0.1;}
   else{rando2 += 0.1;}
   
   if (a.pag > b.pag){rando2 += 0.1;}
   else{rando1 += 0.1;}
   
   if (a.srs > b.srs){rando1 += 0.1;}
   else{rando2 += 0.1;}
   
   //Bonus Rankings
   
   //Final simulation score
   if (rando1 > rando2)
     return a;
   else
     return b;
   
 }
 void setup(){
   
    Team atlantaHawks = new Team();
    Team bostonCeltics = new Team();
    Team brooklynNets = new Team();
    Team charlotteHornets = new Team();
    Team chicagoBulls = new Team();
    Team clevelandCavaliers = new Team();
    Team detroitPistons = new Team();
    Team indianaPacers = new Team();
    Team miamiHeat = new Team();
    Team milwaukeeBucks = new Team();
    Team newYorkKnicks = new Team();
    Team orlandoMagic = new Team();
    Team philadelphia76ers = new Team();
    Team torontoRaptors = new Team();
    Team washingtonWizards = new Team();
    
    // Team Stats
    // Miami Heats
    miamiHeat.name = "Miami Heat";
    miamiHeat.rank = 1;
    miamiHeat.wlp = 0.646;
    miamiHeat.psg = 110.0;
    miamiHeat.pag = 105.6;
    miamiHeat.srs = 4.23;
    
    //Boston Celtics
    bostonCeltics.name = "Boston Celtics";
    bostonCeltics.rank = 2;
    bostonCeltics.wlp = 2;
    bostonCeltics.psg = 111.8;
    bostonCeltics.pag = 104.5;
    bostonCeltics.srs = 7.02;
    
    //Milwaukee Bucks
    milwaukeeBucks.name = "Milwaukee Bucks";
    milwaukeeBucks.rank = 3;
    milwaukeeBucks.wlp = 0.622;
    milwaukeeBucks.psg = 115.5;
    milwaukeeBucks.pag = 112.1;
    milwaukeeBucks.srs = 3.22;
    
    //Philadelphia 76ers
    philadelphia76ers.name = "Philadelphia 76ers";
    philadelphia76ers.rank = 4;
    philadelphia76ers.wlp = 0.622;
    philadelphia76ers.psg = 109.9;
    philadelphia76ers.pag = 107.3;
    philadelphia76ers.srs = 2.57;
    
    //Toronto Raptors
    torontoRaptors.name = "Toronto Raptors";
    torontoRaptors.rank = 5;
    torontoRaptors.wlp = 0.585;
    torontoRaptors.psg = 109.4;
    torontoRaptors.pag = 107.1;
    torontoRaptors.srs = 2.38;
    
    //Chicago Bulls
    chicagoBulls.name = "Chicago Bulls";
    chicagoBulls.rank = 6;
    chicagoBulls.wlp = 0.561;
    chicagoBulls.psg = 111.6;
    chicagoBulls.pag = 112.0;
    chicagoBulls.srs = -0.38;
    
    //Brooklyn Nets
    brooklynNets.name = "Brooklyn Nets";
    brooklynNets.rank = 7;
    brooklynNets.wlp = 0.537;
    brooklynNets.psg = 112.9;
    brooklynNets.pag = 112.1;
    brooklynNets.srs = 0.82;
    
    //Cleveland Cavaliers 
    clevelandCavaliers.name = "Cleveland Cavaliers";
    clevelandCavaliers.rank = 8;
    clevelandCavaliers.wlp = 0.537;
    clevelandCavaliers.psg = 107.8;
    clevelandCavaliers.pag = 105.7;
    clevelandCavaliers.srs = 2.04;
    
    //Atlanta Hawks
    atlantaHawks.name = "Atlanta Hawks";
    atlantaHawks.rank = 9;
    atlantaHawks.wlp = 0.524;
    atlantaHawks.psg = 113.9;
    atlantaHawks.pag = 112.4;
    atlantaHawks.srs = 1.55;
    
    //Charlotte Hornets
    charlotteHornets.name = "Charlotte Hornets";
    charlotteHornets.rank = 10;
    charlotteHornets.wlp = 0.524;
    charlotteHornets.psg = 115.3;
    charlotteHornets.pag = 114.9;
    charlotteHornets.srs = 0.53;
    
    //New York Knicks
    newYorkKnicks.name = "New York Knicks";
    newYorkKnicks.rank = 11;
    newYorkKnicks.wlp = 0.451;
    newYorkKnicks.psg = 106.5;
    newYorkKnicks.pag = 106.6;
    newYorkKnicks.srs = -0.01; 
    
    //Washington Wizards
    washingtonWizards.name = "Washington Wizards";
    washingtonWizards.rank = 12;
    washingtonWizards.wlp = 0.427;
    washingtonWizards.psg = 108.6;
    washingtonWizards.pag = 112.0;
    washingtonWizards.srs = -3.23;
    
    //Indiana Pacers
    indianaPacers.name = "Indiana Pacers";
    indianaPacers.rank = 13;
    indianaPacers.wlp = 0.305;
    indianaPacers.psg = 111.5;
    indianaPacers.pag = 114.9;
    indianaPacers.srs = -3.26;
    
    //Detroit Pistons
    detroitPistons.name = "Detroit Pistons";
    detroitPistons.rank = 14;
    detroitPistons.wlp = 0.280;
    detroitPistons.psg = 104.8;
    detroitPistons.pag = 112.5;
    detroitPistons.srs = -7.36;
    
    //Orlando Magic
    orlandoMagic.name = "Orlando Magic";
    orlandoMagic.rank = 15;
    orlandoMagic.wlp = 0.268;
    orlandoMagic.psg = 104.2;
    orlandoMagic.pag = 112.2;
    orlandoMagic.srs = -7.67;
    
    Team[] teams = {orlandoMagic, detroitPistons };
    
    createSchedule( teams );
    
    Team victor = winner(orlandoMagic,miamiHeat);
    print(victor.name, "won the game!");
   
 }
 
 void createSchedule(Team[] teams){ //Takes a list of the teams and creates a schdule for 15 teams
 
 }
