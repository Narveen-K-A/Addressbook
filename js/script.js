function validateform(){
    var userName = document.getElementById('uname');
    var passWord = document.getElementById('pswd');
    var emailId = document.getElementById('mailid');
    var fullName = document.getElementById('fname');
    var cpassWord = document.getElementById('cpswd');

    var validateuserName = userNameValidate(userName);
    var validatepassWord = passWordValidate(passWord);
    var validateemailId = emailIdValidate(emailId);
    var validatefullName = fullNameValidate(fullName);
    var validatecpassWord = cpassWordValidate(cpassWord,passWord);

    if(validateuserName && validatepassWord && validateemailId && validatefullName && validatecpassWord)
		  return true;
    else 
		  return false;
}
function error(id){
    document.getElementById(id).style.visibility="visible";
}
    
function success(id){
    document.getElementById(id).innerHTML="";
}
    
function userNameValidate(userName){ 
    if(userName.value==""){
      error('uname_error');  
      return false;
    }else{
       success('uname_error');
       return true;
    }
}

function passWordValidate(passWord){ 
    if(passWord.value==""){
      error('pswd_error');  
      return false;
    }else{
       success('pswd_error');
       return true;
    }
}

function emailIdValidate(emailId){ 
    if(emailId.value==""){
      error('email_error');  
      return false;
    }else{
       success('email_error');
       return true;
    }
}

function fullNameValidate(fullName){ 
    if(fullName.value==""){
      error('fname_error');  
      return false;
    }else{
       success('fname_error');
       return true;
    }
}

function cpassWordValidate(cpassWord,passWord){ 
    if(cpassWord.value==""){
      error('cpswd_error');  
      return false;
    }else if(cpassWord.value != passWord.value){
      error('cpaswd_error');  
      return false;
    }
    else{
       success('cpaswd_error');
       return true;
    }
}

function validatemyform(){
    var userName = document.getElementById('uname');
    var passWord = document.getElementById('pswd');

    var validateuserName = userNameValidate(userName);
    var validatepassWord = passWordValidate(passWord);

    if(validateuserName && validatepassWord)
        return true;
    else 
		    return false;
}

function error(id){
    document.getElementById(id).style.visibility="visible";
}
    
function success(id){
    document.getElementById(id).innerHTML="";
}

function userNameValidate(userName){ 
    if(userName.value==""){
      error('uname_error');  
      return false;
    }else{
       success('uname_error');
       return true;
    }
}

function passWordValidate(passWord){ 
    if(passWord.value==""){
      error('pswd_error');  
      return false;
    }else{
       success('pswd_error');
       return true;
    }
}

function validatecreateform(){
  var titleId = document.getElementById('titleid');
  var firstnameId = document.getElementById('firstnameid');
  var lastnameId = document.getElementById('lastnameid');
  var genderId = document.getElementById('genderid');
  var dobId = document.getElementById('dobid');
  var fileId = document.getElementById('fileid');
  var addressId = document.getElementById('addressid');
  var streetId = document.getElementById('streetid');
  var emailId = document.getElementById('emailid');
  var phoneId = document.getElementById('phoneid');

  var validatetitleId = titleIdValidate(titleId);
  var validatefirstnameId = firstnameIdValidate(firstnameId);
  var validatelastnameId = lastnameIdValidate(lastnameId);
  var validategenderId = genderIdValidate(genderId);
  var validatedobId = dobIdValidate(dobId);
  var validatefileId = fileIdValidate(fileId);
  var validateaddressId = addressIdValidate(addressId);
  var validatestreetId = streetIdValidate(streetId);
  var validateemailId = emailIdValidate(emailId);
  var validatephoneId = phoneIdValidate(phoneId);


  if(validatetitleId && validatefirstnameId && validatelastnameId && validategenderId && validatedobId && validatefileId && validateaddressId && validatestreetId && validateemailId && validatephoneId)
    return true;
  else 
    return false;
}

function error(id){
  document.getElementById(id).style.visibility="visible";
}
  
function success(id){
  document.getElementById(id).innerHTML="";
}

function titleIdValidate(titleId){ 
  if(titleId.value==""){
    error('titleid_error');  
    return false;
  }else{
     success('titleid_error');
     return true;
  }
}

function firstnameIdValidate(firstnameId){ 
  if(firstnameId.value==""){
    error('firstnameid_error');  
    return false;
  }else{
     success('firstnameid_error');
     return true;
  }
}

function lastnameIdValidate(lastnameId){ 
  if(lastnameId.value==""){
    error('lastnameid_error');  
    return false;
  }else{
     success('lastnameid_error');
     return true;
  }
}

function genderIdValidate(genderId){ 
  if(genderId.value==""){
    error('genderid_error');  
    return false;
  }else{
     success('genderid_error');
     return true;
  }
}

function dobIdValidate(dobId){ 
  if(dobId.value==""){
    error('dobid_error');  
    return false;
  }else{
     success('dobid_error');
     return true;
  }
}

function fileIdValidate(fileId){ 
  if(fileId.value==""){
    error('fileid_error');  
    return false;
  }else{
     success('fileid_error');
     return true;
  }
}

function addressIdValidate(addressId){ 
  if(addressId.value==""){
    error('addressid_error');  
    return false;
  }else{
     success('addressid_error');
     return true;
  }
}

function streetIdValidate(streetId){ 
  if(streetId.value==""){
    error('streetid_error');  
    return false;
  }else{
     success('streetid_error');
     return true;
  }
}

function emailIdValidate(emailId){ 
  if(emailId.value==""){
    error('emailid_error');  
    return false;
  }else{
     success('emailid_error');
     return true;
  }
}

function phoneIdValidate(phoneId){ 
  if(phoneId.value==""){
    error('phoneid_error');  
    return false;
  }else{
     success('phoneid_error');
     return true;
  }
}