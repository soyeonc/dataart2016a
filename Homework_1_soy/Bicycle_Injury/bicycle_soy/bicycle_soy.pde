Table table;


void setup() {
  size(850,800);
  loadData();
  smooth(4) ;
}

void draw () {
   //background(255);
   
  //translate(width/2, height/2);
  //rotate(PI);
  //fill(255,30);
  //arc(0, 0, 200, 200, 0, PI);
 //strokeWeight(0.001);
 //stroke(255,10);
//for (int x = 0; x <= width; x=x+10) {
 //    line(1,x,x+799,x);}
}

void loadData() {
  background(25);

  String url = "bicycleinjury.csv";
  table= loadTable(url, "header");
  
 println(table.getRowCount() + " total rows in table"); 
 
 for (TableRow row : table.rows()) {
    
    int date = row.getInt("trmt_date");
    String agestring = row.getString("age");
    String bodypartstring = row.getString("body_part");
    String sexstring=row.getString("sex"); 
    String trmtdatestring=row.getString("trmt_date");
    String locationstring=row.getString("location");
    
    float body = float(bodypartstring);
    int age = int(agestring);
    float sex = float(sexstring);
    int tdate = int(trmtdatestring);
     //float x = map(date,0,365, 5, width - 50);
     //float y= map(bodypart+random(-.3,.3),0,22,10,height);
     
     float td=map(tdate,1,365,2,55);
     float ag=map(age,1,90,800,0);
     
    println(tdate + " (" + age + " YO)" + sex);
    
    if(bodypartstring.equals("75")){ //head injury
      
      if(locationstring.equals("1")){
    
          if(sexstring.equals("Female")){
    
      fill(50,190,230,20);
      noStroke();
      rectMode(CENTER);
      rect(130,ag,td,td);  
    }else{
      
      fill(random(220,250),200,20,50);
      noStroke();
      ellipse(160,ag,td,td); 
    }}
      
          if(locationstring.equals("4")){
    if(sexstring.equals("Female")){
    
      fill(50,200,random(200,255),40);
      noStroke();
      pushMatrix();
      rectMode(CENTER);
      translate(240, ag);
      rotate(PI/4);
      rect(0,0,td,td);  
      popMatrix();
    }else{
      fill(random(20,255),50,random(60,150),30);
      noStroke();
      ellipse(270,ag,td,td); 
    }}
    
    
         if(locationstring.equals("5")){
    
    if(sexstring.equals("Female")){
    
      fill(0,100,random(200,255),40);
      noStroke();
      rectMode(CENTER);
      rect(350,ag,td,td);  
    }else{
      
      fill(random(200,255),150,random(10,40),80-age/2);
      noStroke();
      ellipse(380,ag,td,td); 
    }}
    
            if(locationstring.equals("9")){
    
    if(sexstring.equals("Female")){
    
      fill(random(120,190),120,random(200,255),10+age);
      noStroke();
      rectMode(CENTER);
      rect(460,ag,td,td);  
    }else{
      
      fill(random(50,100),250,255,40);
      noStroke();
      ellipse(490,ag,td,td); 
    }}
    
    
            if(locationstring.equals("8")){
    
    if(sexstring.equals("Female")){
    
      fill(150,200,255,155);
      noStroke();
      rectMode(CENTER);
      rect(570,ag,td,td);  
    }else{
      
      fill(20,80,235,70);
      noStroke();
      ellipse(600,ag,td,td); 
    }}

    
      if(locationstring.equals("0")){
    
    if(sexstring.equals("Female")){
    
      fill(50,100,random(200,255),25);
      noStroke();
      rectMode(CENTER);
      rect(680,ag,td,td);  
    }else{
      
      fill(random(220,250),60, random(80,100),60-age/2);
      noStroke();
      ellipse(710,ag,td,td); 
    }}
    
    
    
    }
    
    }
    
    
    
    
   // strokeWeight(7);
    //colorMode(HSB, 100);
   // stroke(age/2.1+40,50,100,50);
    
   // line(x*2,y+10,x*2,y-10);
  }