//import processing.pdf.*;
int totalFrames = 120;
int counter = 0;
PImage fondo;
int posy;
int posx;
int minumero;
PFont mifuente;
int tamletra;
int cantidad = 1;
int rot;
float[] tam = new float [cantidad];
String[] Nombres19 = {"María Edith Barría Mansilla", "Sandra Pozo Rivas", "Laura Beatriz Gálvez Videla", "Aylin Fuentes Álvarez", "Sajuste Deliseanne", "Rosa Ester Cañulef Paillamanque", "Sussy Montalván", "Sin nombre", "Silvana Marisol Garrido Urdiles", "Lissete Dayana Riffo Cayupan", "Marina Cabrera Almendras", "Scarlett Solange Díaz Llaitul", "Mónica del Carmen Paillacar Paillacar", "Laura Sonia Buendía Aguilar", "Carolina Muñoz Rebolledo", "Natividad Barcaza Faúndez", "Marta Norambuena Cárdenas", "Bernardita del Pilar Pedraza Gutiérrez","Bernardita del Pilar Pedraza Gutiérrez","Joyce Yanette Tello Avilés","Carla Fernanda González Vásquez","Vesna Philbey","Mia Palma Espinoza","Estefanía del Carmen Martínez Pérez","María Evelyn Saavedra Mondocorro","Lorena Patricia Quidenao Gallardo","Danae Millaray Marianela Benavides Matus","Sandra Etelvina Matus Ramírez","Mariela Naigual Pinol","Patricia Raquel Silva Leal","Genoveva del Carmen Reyes Olea","Yaricza Cáceres Montesinos","Ana María Velásquez Muñoz","Catalina Álvarez Godoy","Lisbeth Apurani Paniagua","Hellen Barra Ortega","E.C.A.T","Hellen Barra Ortega","Gabriela Estefanía Contreras Uribe","Deisy Alejandra Inostroza Araya","Amanda Montserrat López Inostroza","Tiare Castro Cáceres","Ethel Liseth Chevez Sánchez","Leidy Lorena Saavedra Santa","Natalia Scarleth Mella Rodríguez","Mireya del Carmen Martínez Maldonado","Susana Hernández Chiche","Carolina Lincán Villegas Viveros","Fahime Andrea Díaz Dervich","María Cristina Jiménez Orellana","Constanza Chandía Rivera","Ana Elisa Miranda","María José Zambra Cortés","Silvia Susana Adasme Soto","María Elena Sánchez Soto","Christianne Villard ","Yocelyn Judit Arrué Romero","Katherine Fernández Quintero","Daniela Estefani Vivar Nauto","Luzminalda Pereira", "Isabel Margarita Álvarez Solís", "Mónica del Carmen Mansilla Muñoz", "Glenda Delgado Cárdenas"};
String[] Nombres18 = {"Damaris Angélica Coronado Riveros", "Bernardita Valderrama Huenulef", "Lucía del Carmen Parra Mendoza", "Marisol Isabel López Jorquera", "Silvia Roxelia Caro Alarcón", "Sophie", "María Luz Insunza Correa", "Georgina Berroa Hernández", "Fernanda Damaris Maciel Correa", "Ximena Andrea Candia Villaroel", "Alexis Isabel Chandía Parra", "Rosa Ester Vilches Navarro", "Ámbar Lezcano", "Jennifer Rojas Rojas", "Sonia del Carmen Avendaño Elgueta", "Berta Vargas Quilodrán", "Guillermina del Carmen Huenul Marín", "Felisa González Pichipillán", "Liliana Aurora Gutiérrez Soto", "María José Hurtado Ortiz", "Miralda Moise", "Catherine Vásquez Muñoz", "Diana Rosa López Yallico", "Nelly Isabel Malo Ascencio", "Soraya Pamela Sepúlveda Riquelme", "Carolina Ivon Donoso Campos", "Gabriela Paz Alcaíno Donoso", "Gertrudis Martínez Farías", "Dayanara Constanza Martínez Cárcamo", "Patricia Chailán Ibacache", "Mercedes Del Carmen Vera Arévalo", "Almendra", "Leonor Rojas González", "Elsa Ayala Cortéz", "Anilett Carolina Soto Cabrera", "María Pablo García", "Nancy Araya Ruiz", "Sara Riquelme Avilés", "Deyanira Marte", "Elba Magdalena Roa Fica", "Rosa Blanca Martínez Duarte", "Herminda Yanet Núñez Niclouse", "Tatiana Judith Caniulaf Velásquez", "María Bernarda Cuevas Sandoval", "Claudia Jorquera Piña", "Gloria Edita Hueramán Lincopi", "Luisa Ana María Alvarez", "Paola Andrea Alvarado Cortez", "Etelvina Crucilda Huentequeo Vidal", "Nancy Muñoz Villalobos", "Liliana Olmos Vargas", "María Paulina del Carmen Castro Mejía", "Catalina Salazar León", "Nury Briones Torrealba", "Patricia del Carmen Catrilaf Curipan", "Rita Fidelina Machuca Ramírez", "Marjorie Ayala Farías", "Felisa Altamirano Peralta"};

  void setup() {
  //beginRecord(PDF, "Fondo.pdf");
  mifuente = createFont("AppleGothic", 10);
  size(1920, 1080);
  background(0);

  //smooth();
  }
  
  
  void draw() {
    float percent = float(counter)/totalFrames;
    render(percent);
    saveFrame("output/gif-###.png");
    counter++;
  }
  void render(float percent){
    for (int i =0; i < Nombres19.length; i++) {
      tamletra = int(random(10,15));
      posx = int(random(0, width));
      posy = int(random(0, height));
      rot = int(random(0, 180));
      pushMatrix();
      translate(posx, posy);
      rotate(rot);
      textFont(mifuente, tamletra);
      fill(50,50,49);
      text(Nombres19[i], posx, posy);
      popMatrix();
    }
    for (int i =0; i < Nombres18.length; i++) {
      fill(255, 255, 255);
      tamletra = int(random(10,15));
      posx = int(random(0, width));
      posy = int(random(0, height));
      rot = int(random(0, 180));
      pushMatrix();
      translate(posx, posy);
      rotate(rot);
      textFont(mifuente, tamletra);
      fill(75,74,74);
      text(Nombres18[i], posx, posy);
      popMatrix();
    }   
  }

//  void keyPressed() {
    //if (key == 'q') {
      //endRecord();
      //exit();
    //}
  //}
