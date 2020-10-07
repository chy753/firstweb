$(document).ready(function(){

    $("#memberRegisterBtn").on("click", function(){
        
        var userObject = {
            userId : $("#memberId").val(),
            userPw : $("#memberPw").val(),
            userName : $("#memberName").val(),
            userEmail : $("#memberEmail").val()
        };

        alert(JSON.stringify(userObject));

        $.ajax({
            type : "POST",
            url : "/users",
            data : JSON.stringify(userObject),
            contentType : "application/json; charset=UTF-8",
            success : function(){
                alert("Created");
            },
            error : function(xhr, textStatus, error){
                alert("code:" + xhr.status + "\n"
                    + "message:" + xhr.responseText + "\n"
                    + "error:" + error);
            }
        });
    });
});
