package Ventana;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;






public aspect aspecto {
	pointcut callSay(): call(* *.requestFocus()); 
    after() : callSay() {
    	System.out.println("Before call say" );
    }

    pointcut successBlue(): call(* BlueColorListener*(..));
    after(): successBlue(){
    	
    	    	        
    	    	System.out.println("EL color es: Blue"); //Imprime por consola que el boton clickeado es el azul
    	    	
    	    	
    	        //Declaracion del archivo
    	        File archivo;
    	    	archivo = new File("ColorHistorial.txt");
    	        //Si el archivo no existe lo crea
    	        if(!archivo.exists()){
    	        	try {
    	        		archivo.createNewFile();
    	        		FileWriter fw= new FileWriter("ColorHistorial.txt", true);
    	        		BufferedWriter bw = new BufferedWriter(fw);
    	        		PrintWriter pw = new PrintWriter(bw);
    	        		System.out.println("\nARCHIVO NUEVO\n");//confirmacion de creacion del archivo
    	    			pw.println("EL color es: Blue"); //registra que el boton clickeado es el boton azul
    	    			
    	    			
    	    			pw.close();
    	        	}catch(IOException ex) {	
    	        	}
    	        	
    	        }else {
    	        	
    	        }
    	        //En caso de que el archivo exista solo lo sobreescribe 
    	        try {
    	        	FileWriter fw= new FileWriter("ColorHistorial.txt", true);
	        		BufferedWriter bw = new BufferedWriter(fw);
	        		PrintWriter pw = new PrintWriter(bw);
    	    		
    	    		pw.println("El color es: Blue");
	    			
    	    		pw.close();
    	    	}catch(IOException ex) {	
    	    	}
    	       
    	       
    	
    }
    pointcut successBlack(): call(* BlackColorListener*(..));
    after(): successBlack(){
    	
    	    	        
    	    	System.out.println("EL color es: Black"); //Imprime por consola que el boton clickeado es el negro
    	    	
    	    	//Declaracion del archivo
    	        
    	        File archivo;
    	    	archivo = new File("ColorHistorial.txt");
    	    	//Si el archivo no existe lo crea
    	        if(!archivo.exists()){
    	        	try {
    	        		archivo.createNewFile();
    	        		FileWriter fw= new FileWriter("ColorHistorial.txt", true);
    	        		BufferedWriter bw = new BufferedWriter(fw);
    	        		PrintWriter pw = new PrintWriter(bw);
    	        		System.out.println("\nARCHIVO NUEVO\n");//confirmacion de creacion del archivo
    	    			pw.println("EL color es: Black"); //registra que el boton clickeado es el boton negro
    	    			
    	    			
    	    			pw.close();
    	        	}catch(IOException ex) {	
    	        	}
    	        	
    	        }else {
    	        	
    	        }
    	      //En caso de que el archivo exista solo lo sobreescribe 
    	        try {
    	        	FileWriter fw= new FileWriter("ColorHistorial.txt", true);
	        		BufferedWriter bw = new BufferedWriter(fw);
	        		PrintWriter pw = new PrintWriter(bw);
    	    		
    	    		pw.println("EL color es: Black"); 
	    			
    	    		pw.close();
    	    	}catch(IOException ex) {	
    	    	}
    	       
    	       
    	
    }
    
    pointcut successRed(): call(* RedColorListener*(..));
    after(): successRed(){
    	
    	    	        
    	    	System.out.println("EL color es: Red"); //Imprime por consola que el boton clickeado es el rojo
    	    	
    	    	//Declaracion del archivo
    	        
    	        File archivo;
    	    	archivo = new File("ColorHistorial.txt");
    	    	//Si el archivo no existe lo crea
    	        if(!archivo.exists()){
    	        	try {
    	        		archivo.createNewFile();
    	        		FileWriter fw= new FileWriter("ColorHistorial.txt", true);
    	        		BufferedWriter bw = new BufferedWriter(fw);
    	        		PrintWriter pw = new PrintWriter(bw);
    	        		System.out.println("\nARCHIVO NUEVO\n");//confirmacion de creacion del archivo
    	    			pw.println("EL color es: Red"); //registra que el boton clickeado es el boton rojo
    	    			
    	    			
    	    			pw.close();
    	        	}catch(IOException ex) {	
    	        	}
    	        	
    	        }else {
    	        	
    	        }
    	      //En caso de que el archivo exista solo lo sobreescribe 
    	        try {
    	        	FileWriter fw= new FileWriter("ColorHistorial.txt", true);
	        		BufferedWriter bw = new BufferedWriter(fw);
	        		PrintWriter pw = new PrintWriter(bw);
    	    		
    	    		pw.println("EL color es: Red"); 
	    			
    	    		pw.close();
    	    	}catch(IOException ex) {	
    	    	}
    	       
    	       
    	
    }
    
    
}
