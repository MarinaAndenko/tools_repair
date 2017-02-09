$(document).ready(function() {
  $(".datepicker_tools").datepicker({
    format: ' yyyy',
    autoclose: true,
    startView: 'years', 
    minViewMode: 2,
    startDate: '2000',
    endDate: new Date()
  });

  $('.datatable_tools').DataTable({});
});
