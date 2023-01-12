function openPage(values){
    $.ajax({
        url:'components/view.cfc?method=view',
        type:'post',
        data:{
            method:'view',
            Email: values,
            dataType:'json'
        },
        success:function(data){
            alert(data);
            var obj = JSON.parse(data);
            $('#viewtitle').html(obj.TITLE);
            $('#viewfname').html(obj.FIRSTNAME);
            $('#viewlname').html(obj.LASTNAME);
            $('#viewgender').html(obj.GENDER);
            $('#viewdob').html(obj.DATEOFBIRTH);
            $('#viewaddress').html(obj.ADDRESSOFUSER);
            $('#viewstreet').html(obj.STREET);
            $('#viewmail').html(obj.EMAILID);
            $('#viewphone').html(obj.PHONENUMBER);
        }
    }) 
}