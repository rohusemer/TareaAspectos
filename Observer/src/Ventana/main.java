package Ventana;

import javax.swing.JFrame;


public class main {
	

	public static void main(String[] args) {
		
		//Crea la Ventana principal
		JFrame frame = new JFrame();
		GuiView guiView = new GuiView();
		frame.setTitle("Tarea Aspectos");
 
		//añade a la ventana la Gui
		frame.add(guiView);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		//pack() will do the layout of the window so it gets the correct size
		frame.pack();
		
		//abre la ventana
		frame.setVisible(true);
		frame.requestFocus();

	}

}
