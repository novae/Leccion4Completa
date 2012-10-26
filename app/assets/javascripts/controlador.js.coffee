$(document).ready ->
  $("#scrollbar1").tinyscrollbar()
  $(".sortable1, .sortable2").sortable(connectWith: ".connectedSortable").disableSelection()
  
  #Ejercicio 1 Tab 1
  $("#droppable1").droppable 
    drop: (event, ui) ->
      $("<li class='ui-state-default'></li>").text(ui.draggable.text()).appendTo $(idrecuperado)
      ui.draggable.remove()
  $("#lista-sortable1,#lista-sortable2").sortable(connectWith: ".connectedSortable1").disableSelection()
  #Ejercicio 1 Tab 2
  $("#droppable2").droppable 
    drop: (event, ui) ->
      $("<li class='ui-state-default'></li>").text(ui.draggable.text()).appendTo $("#lista-sortable4")
      ui.draggable.remove()
  $("#lista-sortable3,#lista-sortable4").sortable(connectWith: ".connectedSortable2").disableSelection()