$(document).ready ->
  $("#scrollbar1").tinyscrollbar()
  $(".sortable1, .sortable2").sortable(connectWith: ".connectedSortable").disableSelection()
  
  ####scrollbars####
  $('#scrollbar1').tinyscrollbar