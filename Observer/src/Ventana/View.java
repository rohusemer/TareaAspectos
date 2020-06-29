package Ventana;

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Color;

import javax.swing.JComponent;


public class View extends JComponent{
	/** tamaño de la ventana */
	private final Dimension modelSize;
	
	/** tamaño del titulo en la ventana*/
	private final Dimension tileSize;
	
	/** Creates a view where each GameObject has side length 60 pixels */
	public View() {
		this(60);
	}
	
	/**
	 * Creates a view where each GameObject has a given size.
	 * 
	 * @param tileSide
	 *            side length in pixels of each GameObject.
	 */
	
	public View(final int tileSide) {
		this.tileSize = new Dimension(tileSide, tileSide);
		this.modelSize = Constants.Size();
		Dimension preferredSize =
				new Dimension(this.modelSize.width * tileSide,
						this.modelSize.height * tileSide);
		setPreferredSize(preferredSize);
	}
}
