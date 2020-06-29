package Ventana;

import java.awt.Dimension;

public class Constants {
	public static final Dimension SIZE = new Dimension(10, 10);

	public static Dimension Size() {
		// Dimension is a mutable class, copy to prevent mutation.
		return new Dimension(SIZE);
	}
}
