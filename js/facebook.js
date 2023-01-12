window.fbAsyncInit = function () {  
    FB.init({  
        appId: '769267328578-1m7tm8akljl1pp8ehct3bg431vhdbg81',  
        status: true,  
        cookie: true,  
        xfbml: true  
    });  
 };  
 (function (doc) {  
    var script;  
    var id = 'facebook-jssdk';  
    var ref = doc.getElementsByTagName('script')[0];  
    if (doc.getElementById(id)) {  
        return;  
    }  
    script = doc.createElement('script');  
    script.id = id;  
    script.async = true;  
    script.src = "//connect.facebook.net/en_US/all.js";  
    ref.parentNode.insertBefore(script, ref);  
}(document));

function FbApp_Login() {  
    FB.login(function (response) {  
        if (response.authResponse) {  
            // some code here  
        }  
        else {  
            alert("Attempt of Login is Failed!");  
        }  
     }, { scope: 'email,user_photos,publish_actions' });  
} 