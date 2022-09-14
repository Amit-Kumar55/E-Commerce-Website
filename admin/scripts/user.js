$(document).ready(function(){

    //Admin Login Start.
       $("#btnAddUser").click(function(){
    
       $("#btnAddUser").html("Loading...");
      

       var username=$("#txtUserName").val();
       var role =$("#lstRole").val();
       var password=$("#txtPassword").val(); 
       var contact=$("#txtContact").val(); 
        
            $.ajax({
                 type:'post',
                 url: 'phpfiles/user-action.php',
                 data: {'username':username,'password':password, 'role':role, 'contact':contact },
                 success: function(data)
                 {	 
     
                     $("#btnAddUser").html("Add User");
                     $("#msg").html(data); 
                     $("#msg").slideDown("slow");
                     $("#msg").slideUp(8000); 
                     
                     
                }
             });
        
      });
    
    //Admin Login End.
    
    //Change Password Start.
        $("#btn_passchange").click(function(){
            $("#changepasstext").html("Loading...");
            var oldPass=$("#oldPass").val();
            var newpass=$("#newpass").val(); 
            var repass=$("#repass").val();
                $.ajax({
                     type:'post',
                     url: 'change-password-action.php',
                     data: {'oldPass':oldPass,'newpass':newpass,'repass':repass},
                     success: function(data)
                     {     $("#changepasstext").html("Save");
                           $("#errorChangePassword").html(data); 
                           $("#errorChangePassword").slideDown("slow");
                           $("#errorChangePassword").slideUp(3000,function(){
                               location.reload();
                             });
                    
                     }
                    
                 });
                
          });
    //Change Password End
    
    });
     
    
    
    
    
    