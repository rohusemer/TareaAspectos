package Ventana;

public aspect aspecto {
	pointcut callSay(): call(* *.requestFocus()); 
    after() : callSay() {
        System.out.println("Before call say");
    } 
}
