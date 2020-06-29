package Ventana;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JPanel;


import java.awt.Color;

public class GuiView extends JPanel {
	/** Boton "Blue" */
	private final JButton Btn1;
	/** Boton "Black" */
	private final JButton Btn2;
	/** Boton "Red" */
	private final JButton Btn3;
	/** Panel que contendra los botones */
	private final JPanel guiPanel;
	/** Panel que cambiara de color */
	private final JPanel colorPanel;
	/** view contendra los paneles antes mensionados */
	private final View view;
	
	
	/** Create a new GUIView. Crea la ventana para la interaccion */
	public GuiView() {
		//Crra una nueva View
		this.view = new View();
		//this.view.setBackground(Color.white);
		// Set the layout on myself
		setLayout(new BorderLayout());
		
		// nuevo panel que cambiara el color con la interaccion
		this.colorPanel = new JPanel();
		this.colorPanel.setBackground(Color.white);
		// nuevo panel contendra la Gui
		this.guiPanel = new JPanel();
		this.guiPanel.setBackground(Color.lightGray);
		
		// Crea un nuevo boton sobre el panel con la llamada al evento ColorListener
		// y lo añade al panel
		this.Btn1 = new JButton("Blue");
		this.Btn1.setBackground(Color.BLUE);
		this.Btn1.addActionListener(new ColorListener());
		this.guiPanel.add(this.Btn1);
		
		this.Btn2 = new JButton("Black");
		this.Btn2.setBackground(Color.BLACK);
		this.Btn2.addActionListener(new ColorListener());
		this.guiPanel.add(this.Btn2);
		
		this.Btn3 = new JButton("Red");
		this.Btn3.setBackground(Color.RED);
		this.Btn3.addActionListener(new ColorListener());
		this.guiPanel.add(this.Btn3);
		
		// Add both the new panel and the View to myself
		add(this.view.add(this.colorPanel), BorderLayout.CENTER);
		add(this.guiPanel, BorderLayout.SOUTH);
	}
	/** Evento que cambia el color del panel central cuando se da click en uno de los botones
	 *  EL color cambia con repecto al nombre de cada boton
	 * 	Presenta por consola el color seleccionado
	 */
	private class ColorListener implements ActionListener {
		
		public void actionPerformed(final ActionEvent e) {
			Object source = e.getSource();

			if (source == GuiView.this.Btn1) {
				GuiView.this.colorPanel.setBackground(Color.BLUE);
				System.out.println("EL color es: Blue" );
				GuiView.this.view.requestFocus();
			}else if (source == GuiView.this.Btn2) {
				GuiView.this.colorPanel.setBackground(Color.BLACK);
				System.out.println("EL color es: Black" );
				GuiView.this.view.requestFocus();
			}else if (source == GuiView.this.Btn3) {
				GuiView.this.colorPanel.setBackground(Color.RED);
				System.out.println("EL color es: Red" );
				GuiView.this.view.requestFocus();
			}
		}
	}

}
