$(document).ready(function() {
  $(".datepicker_users").datepicker({
    format: 'dd/mm/yyyy',
    autoclose: true,
    startDate: new Date(new Date().setFullYear(new Date().getFullYear() - 80)),
    endDate: new Date(new Date().setFullYear(new Date().getFullYear() - 18))
  });
});
