class ControladorController < ApplicationController
  def leccionIyC
    @random=Array.new
    @id=Array.new
    @palabras=Array.new
    
    @sentencia=Sentencia.all
    @random=@sentencia.to_a.shuffle
    gon.id=@id
    gon.sentencia=@palabras
    @sentencia.each do |p|
      gon.id << p.id
      gon.sentencia << p.sentencia
    end
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
