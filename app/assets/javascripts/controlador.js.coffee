$(document).ready ->
  $("#scrollbar1").tinyscrollbar()
  $(".sortable1, .sortable2").sortable(connectWith: ".connectedSortable").disableSelection()
  
  ####scrollbars####
  $('.jScrollbar5').jScrollbar();