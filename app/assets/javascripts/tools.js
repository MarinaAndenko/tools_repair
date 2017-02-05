$(document).ready(function() {
  $("[data-provide~='datepicker']").datepicker({
    format: ' yyyy',
    autoclose: true,
    startView: 'years', 
    minViewMode: 2
  //   startDate: '2000',
  //   endDate: new Date(),
  });
});
