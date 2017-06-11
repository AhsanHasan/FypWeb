

$(document).ready(function () {

    var budget;
    var guest;

    $('#budgetbtn').click(function () {
    var guest = $("#totalguests").val();
    var budget = $("#budgetamount").val();
    if (budget >= 100000 && guest >= 50 && guest <= 500) {
        $('#myModal').modal('hide');
        $('body').removeClass('modal-open');
        $('.modal-backdrop').remove();
        $('#totalguests').val("");
        $('#budgetamount').val("");

        
        
        window.location = "Eventtype.aspx?budget="+budget+"&guest= "+guest;
        //window.location = "Eventtype.aspx?budget=" + budget;
        //window.location = "Eventtype.aspx?guest=" + guest;
        
    }
    else {
        
        window.location = "success.aspx";
    }
    });
    
    


});

 

    
