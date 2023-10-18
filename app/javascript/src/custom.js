if (window.jquery) {
 console.log("jquery loaded");
} else {
console.log("jquery NOT loaded");
}

$(document).ready(function () {
  $('#example_1').DataTable();
});


$(document).ready(function () {
  $('#example_2').DataTable();
});


$(document).ready(function () {
    var table_visits_salesman_datatable = $('#example_3').DataTable({
      mark: true,
      searching: false,
      processing: false,
      serverSide: true,
      "columnDefs": [{
        "targets": [4,5,6],
          "orderable": false
        }],
      ajax: {
          url: $(this).data('url'),
          data: function (d) {
              d.customerName = $('#data-column-customerName').val();
          }
      }
    });



    $('.search-input-text').on('change', function () {   // for text boxes
        table_visits_salesman_datatable.draw();
    });


});

//change the size of the datatables search box:
//https://stackoverflow.com/questions/18816229/how-can-we-change-width-of-search-fields-in-datatables
$(document).ready(function () {             
  $('.dataTables_filter input[type="search"]').css(
     {'width':'350px','display':'inline-block'}
  );
}); 
