$(document).ready ->
  $("#scrollbar1").tinyscrollbar()
  $(".sortable1, .sortable2").sortable(connectWith: ".connectedSortable").disableSelection()
  
  $.timer 6000, ->
    $("#ac1").css "background","linear-gradient(to bottom,  rgba(255,203,72,1) 0%,rgba(255,156,35,1) 100%)"
  $.timer 9000, ->
    $("#ac2") "background","linear-gradient(to bottom,  rgba(255,203,72,1) 0%,rgba(255,156,35,1) 100%)"
  $.timer 12000, ->
    $("#ac3") "background","linear-gradient(to bottom,  rgba(255,203,72,1) 0%,rgba(255,156,35,1) 100%)"   

      
    
     