$(function() {
    //keep the submit disabled until name and photo link are entered
    //$("#add-btn").attr('disabled', 'disabled');
    $("#submit").on("click", function(event) {
        console.log("submit");
        // Make sure to preventDefault on a submit event.
        event.preventDefault();
        const newTree = {
            username: $("#un").val().trim(),
            userpassword: $("#pw").val().trim(),
            email: $("#em").val().trim(),
            treephoto: $("#tph").val().trim(),
            type: "submit"
        };
        $(".create-form").find(':input').not(':button, :submit, :reset, :hidden, :checkbox, :radio').val('');
    
        // Send the POST request.
        $.ajax("/api/trees", {
          type: "POST",
          data: newTree
        }).then(() => {
          // Reload the page to get the updated list
          location.reload();
        });
    });
    $("#login").on("click", function(event) {
      console.log("login");
      // Make sure to preventDefault on a submit event.
      event.preventDefault();
      const existingTree = {
        userpassword: $("#pw").val().trim(),
        email: $("#em").val().trim(), 
        type: "login"
      };
      // Send the POST request.
      $.ajax("/api/trees", {
        type: "POST",
        data: existingTree 
      }).then(() => {
        
        // Reload the page to get the updated list
        location.reload();

      });

      //get request
      $.get("/api/trees", function(data) {
        if(data===0){
          alert("user not found try again");
        }else if(data===1){
          alert("user found!!!");
        }  
      });
    });
 
});