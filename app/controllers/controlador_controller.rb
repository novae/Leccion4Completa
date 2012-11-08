class ControladorController < ApplicationController
  def leccionIyC
    @id=Array.new
    gon.id=@id
    @sentencia=Array.new
    gon.sentencia=@sentencia
    @sentencias=DetalleEjercicio.all.to_a.shuffle
    
    @sentencias.each do |p|
      gon.id << p.IdModulo
      gon.sentencia << p.Linea
    end
    @ejercicio=DetalleEjercicio.all.to_a.shuffle
    gon.lineas_ejercicios=DetalleEjercicio.all
    gon.problema= ControladorHelper::Enuciados_Ejercicios 
  end
  def intro
    
  end
  def es
  
  end
  def estr
  
  end
  def ac
    
  end
  def am
    
  end
end
