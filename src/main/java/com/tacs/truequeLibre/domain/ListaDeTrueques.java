package com.tacs.truequeLibre.domain;

import java.util.ArrayList;

import com.google.gson.JsonElement;
import com.tacs.truequeLibre.Main;
import com.tacs.truequeLibre.Utils.TruequeStatusConstants;

@SuppressWarnings("serial")
public class ListaDeTrueques extends ArrayList<Trueque>{

	public static int contador = 0;
	
	public Trueque findById(int unId){
		
		for (Trueque unTrueque : this) {
			if(unTrueque.getId() == unId)
				return unTrueque;
		}
			return null;
	}
	
	public void clear(){
		super.clear();
		ListaDeTrueques.contador = 0;
	}

	public static int getNewID() {
		return ++contador;
	}

	//TODO: cambiar la interfaz de este metodo, miUsuario es una variable global y no hace falta el parametro
	public ListaDeTrueques getByUser(Usuario miUsuario) {
		ListaDeTrueques result = new ListaDeTrueques();
		for (Trueque trueque: Main.trueques) {
			  if (trueque.getUsuarioSolicitante() == miUsuario || trueque.getUsuarioSolicitado() == miUsuario) {
			    result.add(trueque);
			  }
			}
		return result;
	}
	

	public ListaDeTrueques getPending() {
		ListaDeTrueques result = new ListaDeTrueques();
		for (Trueque trueque: Main.trueques) {
			  if (trueque.getEstado() == TruequeStatusConstants.PENDING.getID() && trueque.getUsuarioSolicitado() == Main.miUsuario) {
			    result.add(trueque);
			  }
			}
		return result;
	}

}