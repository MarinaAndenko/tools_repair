$(document).ready(function() {
  $(".datepicker_orders").datepicker({
    format: 'dd/mm/yyyy',
    autoclose: true,
    startDate: new Date(new Date().setFullYear(new Date().getFullYear() - 1)),
    endDate: new Date(new Date().setFullYear(new Date().getFullYear() + 1))
  });

  $('.datatable_orders').DataTable({});
});
