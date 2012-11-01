# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  objectItemList = new Array()
  BdItemList = new Array()
 
  #### constructor para objetos de bd y ul ####
  class itemList
    keyList = [] 
    valuesList = []
    ban1 = false
    ban2 = false
    
    constructor: (@id,@sentencia) ->
    
    updateList: ->
      objectItemList = []
      $("#sortable li").each (index) ->
        objectItemList[index]=new itemList(parseInt($(this).attr("id")),$(this).text())
    
    BDList: ->
      BdItemList = []
      length = gon.valores.length
      i = 0
      while i < length
        BdItemList[i] = new itemList(gon.valores[i],gon.palabras[i])
        i++
    
    accessorArray:(objectArray) ->
      keyList = []
      valuesList = []
      length = objectArray.length
      i=0
      while i < length
        keyList[i] = objectArray[i].id
        valuesList[i] = objectArray[i].sentencia
        i++

    setId: (id) ->
      @id = id
      
    evaluate:(ban1,ban2) ->
      if(ban2 is true and ban1 is false)
        console.log "paso la prueba"  
      else
        console.log "no paso la prueba"
      
    obj1 = new itemList
    

    $('.ui-state-default').dblclick ->
      currentId = $(this).attr("id")
      $("#" + currentId).remove()
      obj1.updateList()
      obj1.accessorArray(objectItemList)
      

#evaluar entrada del usuario
      
    $("#listo").click ->
      sentencia = document.getElementById('sentencia').value
      obj1.updateList()
      obj1.accessorArray(objectItemList)
      ban1 = _.include valuesList,sentencia
      console.log "UL: ? "+ban1
      obj1.BDList()
      obj1.accessorArray(BdItemList)
      ban2 = _.include valuesList,sentencia
      console.log "BD: ? "+ban2
      #obj1.evaluate(ban1,ban2)
      

  ############## Edit Element ##############  
 
  $('#scrollbar1').tinyscrollbar
  $("#draggable").draggable
    cursor: "crosshair"
  
  $("#link-instrucciones").click ->
    contenidoInst='<div class="panel callout radius">'
    contenidoInst+='<h5>INSTRUCCIONES</h5>'
    contenidoInst+='<ul>'
    contenidoInst+='<li>Escribir una nueva sentencia para completar el codigo, si es necesario.</li>'
    contenidoInst+='<li>Arrastrar la nueva sentencia a la lista de la izquierda.</li>'
    contenidoInst+='<li>Arrastrar la nueva sentencia a la lista de la izquierda.</li>'
    contenidoInst+='<li>Ordenar la lista de elementos de forma correcta para que el bloque de codigo funcione.</li>'
    contenidoInst+='</ul>'
    contenidoInst+='</div>'
    $("#contenidos").html contenidoInst
                
  $("#link-ejer1").click ->
    DebugEjer1='<div class="panel callout radius">'
    DebugEjer1+='<p>'
    DebugEjer1+='DEBUG EJER 1.1'
    DebugEjer1+='</p>'
    DebugEjer1+='</div>'
    $("#contenidos").html DebugEjer1
  
  $("#link-ejer2").click ->
    DebugEjer2='<div class="panel callout radius">'
    DebugEjer2+='<p>'
    DebugEjer2+='DEBUG EJER 1.2'
    DebugEjer2+='</p>'
    DebugEjer2+='</div>'
    $("#contenidos").html DebugEjer2
  
  $("#link-ejer3").click ->
    DebugEjer3='<div class="panel callout radius">'
    DebugEjer3+='<p>'
    DebugEjer3+='DEBUG EJER 1.3'
    DebugEjer3+='</p>'
    DebugEjer3+='</div>'
    $("#contenidos").html DebugEjer3
  
  ############## Eventos de Lista ##############  
  $("#sortable").sortable
    axis:'y',
    placeholder: 'ui-state-highlight',
    containment:'ul',
    items:'li',
    cursor: 'move',
    #update: ->
     ############   View Modal  ###########
    
     #if _.isEqual(algo,BdItemList)
     #   $("#myModal").reveal
     #     animation: "fadeAndPop" #fade, fadeAndPop, none
     #     animationspeed: 100 #how fast animations are
     #     closeOnBackgroundClick: true #if you click background will modal close?
     #     dismissModalClass: "close-reveal-modal" #the class of a button or element that
     #else
        
      ############ view Info ############
      
  $("#sortable").disableSelection() 

    