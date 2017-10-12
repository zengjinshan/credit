//У?麯??
ERR_NUMBER = "??????????";
ERR_BIG_NUMBER = "?????????????????";
ERR_EMAIL = "Email????????????";
ERR_STRING_NULL = "????????";

//???????????????????塣?????????????仯????????
GENDER_MALE = "1"; // ????
GENDER_FEMALE = "2"; // ???

//??д???????????????????????0
NULLLOANCARDNO = "000000";

/**
 * У????????а???????????????????????????????????
 * @param  s :??У????????
 * @param  bag :??Χ?????
 */
function isCharsInBag (s, bag)
{
  var i;
  for (i = 0; i < s.length; i++)
  {
      var c = s.charAt(i);
      if (bag.indexOf(c) == -1) return false;
  }
  return true;
}
/**
 * ????????????
 * @param val ?У???????
 */
function trim(val)
{
	var str = val+"";
	if (str.length == 0) return str;
	var re = /^\s*/;
	str = str.replace(re,'');
	re = /\s*$/;
	return str.replace(re,'');
}

/**
 * У??????????????
 * @param data ?У???????
 */
function checkint(data)
{
   if (data == "") return true;
    var validChar = "0123456789";
    if (isCharsInBag(data, validChar))
       return true;
    return false;
}

/**
 * У?????????????????????
 * @param data ?У???????
 */
function checkNoZeroInt(data)
{
   if (data == "") return true;
   
   if (checkint(data)) {
      if (parseFloat(data) > 0) {return true;} 
   } else {
      return false;
   }
   
}

/**
 * У?????????????
 * @param data ?У???????
 * @return true - ???false - ?????
 */
function checkZero(data) {
    if (data==""||parseFloat(data) == 0)
        return true;
    else 
        return false;
}

/**
 * У????????????,?????????
 * @param data ?У???????
 */
function checkstring_null(data)
{
    if (data==null || trim(data)==""){
	      return false;
    }
    if (!checkstring_allSpace(data)) {
	      return false;
    }
    
    return true;
}

/**
 * ????????????????
 * @param data ??????????
 */
function checkstring_allSpace(data) {
    if (data.length>0 && trim(data)=="") {
        return false;
    }
    for (var i = 0; i < data.length; i++) {
        if (data.substring(i,i+1) == "'" || data.substring(i,i+1) == '"') {
            alert("???????в?????е????????????");
            return false;
        }
    }
    return true;
}

/**
 * ???????????
 * @param data ??????????
 */
function checkIndustryCode(obj,msg) {
    var data = obj.value;
    if (data.length>0 && trim(data)=="") {
        alert(msg+"?????????");
        obj.focus();
        return;
    }
    for (var i = 0; i < data.length; i++) {
        if (data.substring(i,i+1) == "'" || data.substring(i,i+1) == '"' || data.substring(i,i+1) == '%' || data.substring(i,i+1) == '??') {
            alert(msg+"??????е????????????????");
            obj.focus();
            return;
        }
    }
}

/**
 * У?????????????????????
 * @param data ?У???????
 */
function checkNull(data)
{
    if (data==null || trim(data)=="")
	      return false;
    
    return true;
}

function checkemail(obj)
{
 
 if (!checkstring_allSpace(obj)) return false;
 
 if(obj!= "")
 {
  var ok1=obj.indexOf("@");
  var ok2=obj.indexOf(".");
  if(!((ok1!=-1)&&(ok2!=-1)))
  {
   return false;
  }
  var allowstrlist = "&#%<>";
  var endvalue = true;
  for (i=0;i<obj.length;i++) 
  {
   if (allowstrlist.indexOf(obj.substr(i,1))!=-1) 
   {
    endvalue=false;   
    break;
   }
  }
  if(endvalue==false)
  {
   return false;   
  }
  //?????????
  return true;
 }
 else
 {
  return true;
 }
} 

/**
 * У???????????
 */
function checkwebaddress(obj)
{
 
 if (!checkstring_allSpace(obj)) return false;
 
 if(obj!= "")
 {
  var ok2=obj.indexOf(".");
  if(!((ok2!=-1)))
  {
   return false;
  }
  var allowstrlist = "&#%<>";
  var endvalue = true;
  for (i=0;i<obj.length;i++) 
  {
   if (allowstrlist.indexOf(obj.substr(i,1))!=-1) 
   {
    endvalue=false;   
    break;
   }
  }
  if(endvalue==false)
  {
   return false;   
  }
  //??????
  return true;
 }
 else
 {
  return true;
 }
}

/**
 * У???????????
 * true ?? ?????У?false ?? ????
 */
function isChinese(name,msg) //????????
{
 if (!checkstring_allSpace(name)) return false;
 
 if(name.length == 0) return true;
 
 for(i = 0; i < name.length; i++) {
  if(name.charCodeAt(i) > 128) {
      alert(msg+"????????????");
      return false;
  }
 }
 
 return true;
}


/**
 * У??????绰??????????????+???????????????????С?-??
 * @param telno ??????????
 */
function checkTel(telno)
{
    if (!checkstring_allSpace(telno)) return false;

    telno = trim(telno);
    if (telno.length == 0) return true;
    var patrn=/^[+]?\d{1,3}?([-]?\d{1,12})*$/;
    if (!patrn.exec(telno)) return false;
    return true;
}

/**
 * У??????????
 * @param zip ??????????
 */
function checkPostalCode(zip)
{
    if (!checkstring_allSpace(zip)) return false;
    zip = trim(zip);
    if (zip.length == 0) return true;
    
    if (zip.length < 6) return false;
    
    var patrn=/^[0-9 ]{3,12}$/;
    if (!patrn.exec(zip)) return false;
    return true;
}

/**
 * У?????????????????????
 * @param data ?У???????
 */
function checknumber(data){
	var tmp ;
	if (data == "") return true;
	if (!checkstring_allSpace(data)) return false;
	
	var re = /^[\-\+]?([0-9]\d*|0|[1-9]\d{0,2}(,\d{3})*)(\.\d+)?$/;

  if (re.test(data)){
    if (parseInt(data,10) < 0 || parseInt(data) == 0) {
      return false;
    } else {
      return true;
    }
	}else{
   	return false;
	}
	
}

/**
 * У?????????????????
 * @param data ?У???????
 */
/**
 * У?????????????????
 * @param data ?У???????
 */
function isNotNegativeNubmer(data){
	var tmp ;
	if (data == "") return true;
	if (!checkstring_allSpace(data)) return false;
	if(parseFloat(data)<1){
	   if(data.substring(1,2)=="0"){
	     alert("??????????0?????");
	     return false;
	   }
	}else{
	  if(data.substring(0,1) == "0"){
	  	 alert("??????????0?????");
	     return false;
	  }
	}
	
	var re = /^[\-\+]?([0-9]\d*|0|[1-9]\d{0,2}(,\d{3})*)(\.\d+)?$/;

  if (re.test(data)){
      var ok = data.indexOf(".");
      if (ok != -1 && data.substring(ok).length > 3) {
        alert("С??????????λ");
        return false;
      }
      if (ok == -1 && data.length > 17) {
        alert("?????????????17λ??");
        return false;
      }
      return true;
	}else{
   	  return false;
	}
	
}

/**
 * У??????????????
 * @param data ?У???????
*/
function checkyear(year)
{
  if (!checkstring_allSpace(year)) return false;

  if (year== "") return true;
  var temp = parseInt(year);
  if (!isNaN(temp)){
 //   if (year == 0) return true;
    low = 1000;
   // high = 2050;
    if (year >= low) return true;
  }
  return false;
}
/**
 * У????????????·?
 * @param data ?У???????
*/
function checkmonth(month)
{
   if (!checkstring_allSpace(month)) return false;

   if(month == "") return true;
    var temp = parseInt(month);
	if (!isNaN(temp)){
    low = 1;
		 high = 12;
		if ((month >= low) && (month <=high)) return true;
	}
	return false;
}
/**
 * У?????????????
 * @param data ?У???????
*/
function checkday(day,year,month)
{
	err = false;
    if((year == 0) || (month == 0) || (day == 0)){
        return true;
    }
    if((year == "") || (month == "") || (day == "")){
        return true;
    }
	if (!checkint(year) || (year < 1900)) {
		return false;
	}
	if (!checkint(month) || (month < 1) || (month > 12)){
		return false;
	}
	if (!checkint(day) || (day < 1) || (day > 31)){
		return false;
	}

	switch (parseInt(month)){
		case 2:
			high =28;
			if ((year % 4 == 0) && (year % 100 != 0))
				{high =29;}
			else if (year % 400 == 0) {high=29;}
			break;
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:
			high =31;
			break;
		default:
			high =30;
	}
	if ((day < 1) || (day > high)){
		return false;
	}
	return true;
}

/**
 * У???????????????????
 * @param bdate ?У???????
 */
function checkdate(vdate){

  if (!checkstring_allSpace(vdate)) return false;

  vdate = trim(vdate);
  if (vdate == "")
    return true;

	var datePat=/^(\d{2}|\d{4})(\-)(\d{1,2})(\-)(\d{1,2})$/;

  var dateStr= vdate;
    // is the format ok?
  var matchArray = dateStr.match(datePat);

    if (matchArray==null)
    {
     return false;
    }
    year=matchArray[1];
    month=matchArray[3];
    day=matchArray[5];

    if (year.length!=4 || month.length!=2 || day.length!=2)
         return false;
    if (month < 1 || month > 12)
        return false;
    if (day < 1 || day > 31)
        return false;

    if ((month==4 || month==6 || month==9 || month==11) && day==31)
        return false;

    if (month==2)
    {
        var isleap=(year % 4==0 && (year % 100 !=0 || year % 400==0));
        if (day>29 || ((day==29) && (!isleap)))
            return false;
    }
    
    // У???????е?????????
    if (!checkyear(vdate.substring(0,4))) {
        alert("?????е????????");
        return false;
    }
    
    return true;
}

/**
 * У???????????????????
 * @param bdate ?У???????yyyy-mm
 */
function checkdate2(vdate){

  if (!checkstring_allSpace(vdate)) return false;

  vdate = trim(vdate);
  if (vdate == "")
    return true;

	var datePat=/^(\d{2}|\d{4})(\-)(\d{1,2})$/;
  var dateStr= vdate;
    // is the format ok?
  var matchArray = dateStr.match(datePat);
    if (matchArray==null)
    {
     return false;
    }
    year=matchArray[1];
    month=matchArray[3];
    
    if (year.length!=4 || month.length!=2)
         return false;
    if (month < 1 || month > 12)
        return false;
    // У???????е?????????
    if (!checkyear(vdate.substring(0,4))) {
        alert("?????е????????");
        return false;
    }
    
    return true;
}

/**
 * ?????С?ж?(?????yyyy-mm-dd)
 * @param beginDate,endDate
 * @return boolean true - endDate???????beginDate
 */
function judgetwodate(beginDate,endDate)
{
 var eva = checkdate(beginDate) && checkdate(endDate);
 
    if(beginDate !="" && endDate!="" & eva != false)
    {
			  var myDate1 = Date.parse(beginDate.replace("-","/"));
        var myDate2 = Date.parse(endDate.replace("-","/"));
        if(myDate1 > myDate2)
           return false;
        else
           return true;
    }
    else
    {
      return false;
    }
}

/**
 * ?????С?ж?(?????yyyy-mm)
 * @param beginDate,endDate
 * @return boolean true - endDate???????beginDate
 */
function judgetwodate2(beginDate,endDate)
{
 var eva = checkdate2(beginDate) && checkdate2(endDate);
    if(beginDate !="" && endDate!="" & eva != false)
    {
			  var myDate1 = beginDate.replace("-","");
        var myDate2 = endDate.replace("-","");

        if(myDate1 > myDate2)
           return false;
        else
           return true;
    }
    else
    {
      return false;
    }
}

 /**
 * ????????????
 * @param beginDate,endDate
 * @return boolean true -
 *
 */
  function judgetwodateoneyear(beginDate,endDate)
{
		var year= beginDate.substr(0, 4) ;
		var  cmpDate  =parseInt(year)+1;
		var  newDate =   cmpDate+beginDate.substr(4,8);
		var   myDate1 = Date.parse(newDate.replace("-","/"));
		var   myDate2 = Date.parse(endDate.replace("-","/"));
 
      if( (myDate1 - myDate2)<0) 
           return false;
        else
           return true;
}

/**
 * У?????????????У??λ?????
 *
 */
 function checkLoanCardno(loanCardNo) {
  
     if (trim(loanCardNo).length != 16)
        return false;
     
     var checkCode;
     var weightValue = new Array();
     var checkValue = new Array();
     var totalValue = 0;
     var c = 0;
     // ?????У????
     var str1;

     checkCode = trim(loanCardNo).substring(0, 14);
     
     for (var i = 0; i < 14; i++) {
        var tempvalue = checkCode.charCodeAt(i);
        if (tempvalue >= "a".charCodeAt() && tempvalue <= "z".charCodeAt()) {
            //alert("???????в?????Сд???");
            return false;
        }
     }
     
     weightValue[0] = 1;
     weightValue[1] = 3;
     weightValue[2] = 5;
     weightValue[3] = 7;
     weightValue[4] = 11;
     weightValue[5] = 2;
     weightValue[6] = 13;
     weightValue[7] = 1;
     weightValue[8] = 1;
     weightValue[9] = 17;
     weightValue[10] = 19;
     weightValue[11] = 97;
     weightValue[12] = 23;
     weightValue[13] = 29;
     
     for (var j = 0; j < 3; j++) {
         var tempValue = checkCode.substring(j, j+1);
         if (tempValue >= "A" && tempValue <= "Z") {
             checkValue[j] = tempValue.charCodeAt() - 55;
         } else {
             checkValue[j] = tempValue;
         }
         
         totalValue = totalValue + weightValue[j] * checkValue[j];
     }
     
     for (var j = 3; j < 14; j++) {
     	checkValue[j] = checkCode.substring(j, j+1);
     	totalValue = totalValue + weightValue[j] * checkValue[j];
     }
     
     c = 1 + (totalValue % 97);
     str1 = String(c);
     
     if (str1.length == 1) {
     	str1 = '0' + str1;
     }
     
     if (str1 == trim(loanCardNo).substring(14))  
       return true;
     else 
       return false;
     
 }
 
/*
==================================================================
?????????????????????Ч
????????????????????????
????isIDno(obj)
?????bool
==================================================================
*/
function isIDno(idcard) {
    var Errors=new Array("??????!",
                         "????????λ??????!",
                         "????????????????????Χ???з?????!",
                         "????????У?????!",
                         "???????????!"
                        );
  
    var area={11:"????",12:"???",13:"???",14:"???",15:"?????",21:"????",22:"????",23:"??????",31:"???",32:"????",33:"??",34:"????",35:"????",36:"????",37:"???",41:"????",42:"????",43:"????",44:"??",45:"????",46:"????",50:"????",51:"???",52:"????",53:"????",54:"????",61:"????",62:"????",63:"??",64:"????",65:"???",71:"???",81:"???",82:"????",91:"????"}
    
    var idcard,Y,JYM;
    var S,M;
    var idcard_array = new Array();
    idcard_array = idcard.split("");
    //????????
    if(area[parseInt(idcard.substr(0,2))]==null) {
        alert(Errors[4]);
        return false;
    }
    //??????λ???????????
    switch(idcard.length){
    case 15:
        //15λ????????
        if ( (parseInt(idcard.substr(6,2))+1900) % 4 == 0 || ((parseInt(idcard.substr(6,2))+1900) % 100 == 0 && (parseInt(idcard.substr(6,2))+1900) % 4 == 0 )){
            ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;//????????????????
        } else {
            ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;//????????????????
        }
        if(!ereg.test(idcard)) {
            alert(Errors[2]);
            return false;
        } else {
            return true;
        }
    break;
    case 18:
        //18λ????????
        //??????????????? 
        //????????:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))
        //???????:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))
        if ( parseInt(idcard.substr(6,4)) % 4 == 0 || (parseInt(idcard.substr(6,4)) % 100 == 0 && parseInt(idcard.substr(6,4))%4 == 0 )){
            ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;//???????????????????????
        } else {
            ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;//??????????????????????
        }
        if(ereg.test(idcard)) { //????????????????
            //????У??λ
            S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7
            + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9
            + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10
            + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5
            + (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8
            + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4
            + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2
            + parseInt(idcard_array[7]) * 1 
            + parseInt(idcard_array[8]) * 6
            + parseInt(idcard_array[9]) * 3 ;
            Y = S % 11;
            M = "F";
            JYM = "10X98765432";
            M = JYM.substr(Y,1);//?ж?У??λ
            if(M !== idcard_array[17]) {
                alert(Errors[3]);
                return false;
            }
            return true;
        } else {
            alert(Errors[2]);
            return false;
        } 
        break;
    default:
        alert(Errors[1]);
        return false;
        break;
    }
}

/*
==================================================================
????????????????????????Ч
????isCorpno(obj)
?????bool
==================================================================
*/
function isCorpNo(financecode) {

  if (!checkstring_allSpace(financecode)) {
    alert("????????????????");
    return false;
  }
  var financecode=trim(financecode);
   var code = financecode;
   if (code == "00000000-0") {
     alert("??????????????!");
     return false;
   }

   var re = /[A-Z0-9]{8}-[A-Z0-9]/;    
   var r = code.match(re);   
   if (r == null) {
	   alert("??????????????!");
     return false;
   }      
     
   return true;
}


/*
==================================================================
?????У???????????????
????isEqual(obj1,obj2)
?????true - ????false - ??????
==================================================================
*/
function isEqual(obj1,obj2) {
    
    var value1 = trim(obj1.value);
    var value2 = trim(obj2.value);
    
    if (value1==null || value1=="" || value2==null || value2=="") return false;
    
    if (value1 == value2) {
        obj1.focus();
        return true;
    }
    
    return false;
}

/**
==================================================================
?????У??????????????????????????
????countRealLeng(obj,length,msg)
?????true - ????????false - ??????
==================================================================
*/
function countRealLeng(obj,maxLength,msg) {
  var value = obj.value;
  var lengthTemp = value.replace(/[^\x00-\xff]/g,"**").length;
  
  if (lengthTemp > maxLength) {
    alert(msg+"??????????"+maxLength+"?????");
    obj.focus();
    return false;
  } else {
    return true;
  }
  
}

/**
==================================================================
?????????????????????????Ч
????disabledObj(obj)
==================================================================
*/
function disabledObj(obj) {
    if (obj.disabled == false) {
        obj.value = "";
        obj.disabled = true;
    }
}

/**
==================================================================
???????????????????????Ч
????enabledObj(obj)
==================================================================
*/
function enabledObj(obj) {
    if (obj.disabled == true) {
        obj.disabled = false;  
    }
}
function checkFin(orgcode){
		var codelength=orgcode.length;
		//У???????????????11λ
		if(codelength!=11){
			return false;
		}
		//У?????????????????????????????????????
		for(var i=0; i<codelength; i++)
		{
			var charValue = orgcode.charAt(i);
			if ( !(charValue >= 'A' && charValue <= 'Z') && !(charValue>='0' && charValue<='9') && !(charValue >= 'a' && charValue <= 'z')) {
				return false;
			}
		} 
		//?????????????????????У??У??λ
        var s, M, i, temp, k;
		M = 10;
        s = M;
        k = 9;
        for (i = k; i >= 0; i--) {
            temp = orgcode.charAt(k - i);
            if (temp >= '0' && temp <= '9') {
                temp = temp - '0';
            } else {
                temp = 0;
            }            
            if (((s + temp) % M) == 0) {
                s = 9;
            } else {
                s = (((s + temp) % M) * 2) % (M + 1);
            }
        }

        s = M + 1 - s;
        if (s == 10) {
            s = 0;
        }

        if ( ( s == 11 && orgcode.charAt(10) == 'X' ) || ( s == orgcode.charAt(10) - '0' )) {
            return true;
        } else {
            return false;
        }
  }
  
  
  //??????λ  
function  commafy(num){  
  num  =  num+"";  
  var  re=/(-?\d+)(\d{3})/  
  while(re.test(num)){  
  num=num.replace(re,"$1,$2")  
  }  
  return  num;  
}  
//??????С????????С???????λ
function convertFloat(objStr)
{objStr=trim(objStr);
	if(objStr=="")
     objStr="0.00" ;
  if (objStr.indexOf(".") == -1)
   	{
     objStr = objStr + ".00";
    }
  else
  	{
     if (objStr.indexOf(".") == objStr.length - 1)
       	{
        objStr = objStr + "00";
       	}
       	else if (objStr.indexOf(".") == objStr.length - 2)
       	{
        objStr = objStr + "0";
       	}
        else if (objStr.indexOf(".") < objStr.length - 2)
          { objStr=objStr.substring(0,objStr.indexOf(".")+3);
          }	
	}
  return objStr;
}
function format(){
  tags=document.all.tags("a");
  for(i=0;i<=tags.length-1;i++){		
    if(tags[i].name=="format"){ 
    			if(tags[i].innerText!='---')     
  		tags[i].innerText=commafy(convertFloat(tags[i].innerText));      		
    }	
  }
}

// ??????λ?????????????????С???????λ
function cardNumberFormat(obj) {
		var valueStr = obj.value;
    if(valueStr!=""){
       valueStr = commafy(convertFloat(valueStr));
       obj.value = valueStr;
    }
}

// ?????????????е????λ?????С???????"00"?????С???????
function formatToNoComma(obj) {
    // ??????λ
    obj.value= replaceAll( obj.value , ",", "" );
    // ???С???????"00"?????С??????
    var index = obj.value.indexOf(".");
    if (index != -1 && obj.value.substring(index+1) == "00") {
        obj.value = obj.value.substring(0,index);
    }
}

// ?滻??????е???????
function replaceAll(str, from, to) {
  var idx = str.indexOf(from);
  while(idx>-1) {
    str = str.replace(from, to);
    idx = str.indexOf(from);
  }
  return str;
}

/** ??????????
 *
 * return true - ?????false - ??????
 */
function checkOdd(valueStr) {
    if (valueStr%2 == 0)
        return true;
    else 
        return false;
}

/**
 * У???????????????Excel???????????·?????????
 */
function checkPath(obj) {
    var path = trim(obj.value);
    if (path == "") {
        alert("????????·??");
        obj.select();
        return false;
    }
    if (!/^.+\.(xls)$/.test(path)) {
        alert("???????????????.xls");
        obj.select();
        return false;
    }
    return true;
}

//?????????????
function get(objName) {
    return document.getElementById(objName);
}

/**
 * ???????????????????????????????????????????????????????????
 */
function importDataFromExcel(inObj,tabId,addArr,addArr2,changeArr) {
    var FILE_FLAG = "#*_CFCC_*#";
    // ??????????·??
    if(!checkPath(inObj))  return;
    var fileDir = trim(inObj.value).replace("\\","/");
    // ???????????????
    var oXL = new ActiveXObject("Excel.Application");
    var workbooks = oXL.WorkBooks;
    var inputBook = workbooks.Open(fileDir);
    var sheets = inputBook.Worksheets;

    var count,flagIndex;
    if (tabId == "finance") {
        count = 3;
        flagIndex = 5;
    } else {
        count = 9;
        flagIndex = 4;
    }
    if (sheets.Count < count) {
        alert("????????sheet????"+count+"???????????????????");
        inputBook.Close();
        return;
    }
    if (sheets.item(1).Cells(1,flagIndex).value != FILE_FLAG) {
        alert("??????????????????????????????????????");
        inputBook.Close();
        return;
    }

    var sheet;
    var rows;
    var rowCount;
    var defaultLen;
    var msg = "<br>";
    var err = 0;
    // ---------- ???????? ----------
    if (tabId == "finance") {
        importFinancialData(sheets);
    }
    // ---------- ????????? ----------
    else if (tabId == "general") {
        sheet = sheets.item(1);
        rows = get("general");
        var errArr = importGeneralData(sheet,rows,msg,err);
        err = errArr[0];
        msg = errArr[1];
    }
    // ---------- ?????????????? ----------
    else if (tabId == "capStru") {
        // ??????
        sheet = sheets.item(2);
        var changeFlag = false;
        if (typeof sheet.Cells(2,2).value != "undefined") {
            var optionIndex = reflectSelect(sheet.Cells(2,2).value,get("currencycode1"));
            if (optionIndex == -1) {
                msg += "Excel???\""+sheet.name+"\"sheet??\""+sheet.Cells(2,1).value+"\"?????б???????????????<br>";
                err++;
            }
            changeFlag = true;
        }
        if (typeof sheet.Cells(3,2).value != "undefined") {
            get("contmoney1").value = sheet.Cells(3,2).value;
            changeFlag = true;
        }
        if (changeFlag) {if (get(changeArr[0]).value == "0")  get(changeArr[0]).value = "1";};
        // ???????
        sheet = sheets.item(3);
        rowCount = getSheetRowsCount(sheet);
        defaultLen = document.getElementsByName(addArr[1]).length;//addArr?????μ?addCapStru.jsp??importData()????
        if (rowCount > defaultLen) {
            for (i = 1; i <= rowCount-defaultLen; i++)
                addCapStru(addArr[0],addArr[1],addArr[2],addArr[3]);
        }
        rows = get("capTable").rows;
        var msgArr = importStruData(sheet,rows,rowCount,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[1]).value == "0")  get(changeArr[1]).value = "1";}
        // ???????
        sheet = sheets.item(4);
        rows = document.getElementsByName("list")[1].rows; //?????????ID?list??????table
        msgArr = importStruData(sheet,rows,undefined,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[2]).value == "0")  get(changeArr[2]).value = "1";}
        // ????????????
        sheet = sheets.item(5);
        rows = document.getElementsByName("list")[2].rows; //??????????????ID?list???????table
        msgArr = importStruData(sheet,rows,undefined,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[3]).value == "0")  get(changeArr[3]).value = "1";}
        // ????????????????
        sheet = sheets.item(6);
        rows = document.getElementsByName("list")[3].rows; //??????????????????ID?list??????table
        msgArr = importStruData(sheet,rows,undefined,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[4]).value == "0")  get(changeArr[4]).value = "1";}
        // ??????
        sheet = sheets.item(7);
        if (typeof sheet.Cells(2,2).value != "undefined") {
            get("upcorpname").value = sheet.Cells(2,2).value;
            changeFlag = true;
        }
        if (typeof sheet.Cells(3,2).value != "undefined") {
            get("upcorpcardno").value = sheet.Cells(3,2).value;
            changeFlag = true;
        }
        if (typeof sheet.Cells(4,2).value != "undefined") {
            get("upcorpborrcode").value = sheet.Cells(4,2).value;
            changeFlag = true;
        }
        if (changeFlag) {if (get(changeArr[5]).value == "0")  get(changeArr[5]).value = "1";};
    }
    // ---------- ????????? ----------
    else if (tabId == "concern") {
        // ??????????
        sheet = sheets.item(8);
        rowCount = getSheetRowsCount(sheet);
        if (rowCount > 10) rowCount = 10; // ????10?????
        defaultLen = document.getElementsByName(addArr[1]).length;//addArr?????μ?addConcern.jsp??importData()????
        if (rowCount > defaultLen) {
            for (i = 1; i <= rowCount-defaultLen; i++)
                addSue(addArr[0],addArr[1],addArr[2]);
        }
        rows = get("sueTable").rows;
        var msgArr = importStruData(sheet,rows,rowCount,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[0]).value == "0")  get(changeArr[0]).value = "1";}
        // ???????????
        sheet = sheets.item(9);
        rowCount = getSheetRowsCount(sheet);
        if (rowCount > 10) rowCount = 10; // ????10?????
        defaultLen = document.getElementsByName(addArr2[1]).length;//addArr2?????μ?addConcern.jsp??importData()????
        if (rowCount > defaultLen) {
            for (i = 1; i <= rowCount-defaultLen; i++)
                addIncident(addArr2[0],addArr2[1]);
        }
        rows = get("incidentTable").rows;
        msgArr = importStruData(sheet,rows,rowCount,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[1]).value == "0")  get(changeArr[1]).value = "1";}
    }

    inputBook.Close();
    if (err > 0)
        window.showModelessDialog("/webroot/enterprise/ImportErrMsg.jsp",msg,'dialogWidth:500px');
}

/**
 * ??????????????????????
 */
function importGeneralData(sheet,obj,msg,err) {
    // ??????????????????????б?????????????????
    var eles = getArrayByType(getArrayByTagName(obj,"INPUT","SELECT","TEXTAREA"),"text","select-one","textarea","radio");
    var rowCount = getSheetRowsCount(sheet);
    var k;
    var ele;
    var optionIndex;
    for (var i = 0; i < eles.length; i++) {
        ele = eles[i];
        k = getGeneralRowNo(sheet,ele.name,rowCount);
        if (k != -1) {
            var inputValue = sheet.Cells(k,2).value; // ???????е??????
            var generalErrMsg = "Excel???\""+sheet.name+"\"sheet?е?"+k+"??????\""+sheet.Cells(k,1).value+"\"?????б???????????????<br>";
            if (typeof inputValue == "undefined")
                continue;
            // ---------- ?????? ----------
            if (ele.type == "select-one") {
                if (ele.name == "province") {
                    // ?????????б?????????????????
                    optionIndex = reflectSelect(inputValue,ele);
                    if (optionIndex == -1) {
                        msg += generalErrMsg;
                        err++;
                    } else {
                        provTOtown("province","city","country",sheet.Cells(k+2,2).value);
                    }
                } else if (ele.name == "country" || ele.name == "city")
                    continue; // ?к???????????????
                else {
                    optionIndex = reflectSelect(inputValue,ele);
                    if (optionIndex == -1) {
                        msg += generalErrMsg;
                        err++;
                    }
                }
            }
            // ---------- ?????? ----------
            else if (ele.type == "radio") {
                if (ele.name == eles[i-1].name) // ?????????????????????ж?i-1????±???硣
                    continue;
                if (inputValue == 1)
                    ele.checked = true;
                else if (inputValue == 2)
                    eles[i+1].checked = true;
                else {
                    msg += "Excel???\""+sheet.name+"\"sheet?е?"+k+"??????\""+sheet.Cells(k,1).value+"\"????????????????????<br>";
                    err++;
                }
            }
            // ---------- ??????????? ---------- 
            else
                ele.value = inputValue;
        }
    }
    var errArr = new Array();
    errArr[0] = err;
    errArr[1] = msg;
    return errArr;
}

/**
 * ???????????????????????????????????
 */
function importStruData(sheet,rows,rowCount,msg,err) {
    if (typeof rowCount == "undefined") {
        rowCount = getSheetRowsCount(sheet);
        if (rowCount > 10) rowCount = 10;
    }
    var datas;
    var msg;
    var flag = false;
    var optionIndex;
    if (rowCount > 0) flag = true;
    for (var i = 1; i <= rowCount; i++) {
        var row = rows[i];
        // ?????е????????????б?????????
        datas = getArrayByType(getArrayByTagName(row,"INPUT","SELECT","TEXTAREA"),"text","select-one","textarea");
        for (var j = 0; j < datas.length; j++) {
            if (typeof sheet.Cells(i+1,j+1).value == "undefined")
                continue;
            if (datas[j].type == "select-one") {
                optionIndex = reflectSelect(sheet.Cells(i+1,j+1).value,datas[j]);
                if (optionIndex == -1) {
                    msg += "Excel???\""+sheet.name+"\"sheet?е?"+i+"??????\""+sheet.Cells(1,j+1).value+"\"?????б???????????????<br>";
                    err++;
                }
            }
            else
                datas[j].value = sheet.Cells(i+1,j+1).value;
        }
    }
    var msgArr = new Array();
    msgArr[0] = err;
    msgArr[1] = msg;
    msgArr[2] = flag;
    return msgArr;
}

/**
 * 
 */
function importFinancialData(sheets) {
    // ????????
    var inputSheet = sheets.item(1);
    var desData = document.getElementById("tab1_Content").getElementsByTagName("input");
    var len = desData.length;
    var inputValue;
    var j = -1;
    var k;
    for (var i = 0; i < len; i++) {
        if (checkOdd(i)) {
            if (i%4 == 0) {
              k = i/2 - j;
              j = j + 1;
            } else {
              k = k + 44;
            }
            inputValue = inputSheet.Cells(k+1,3).value;//?????
        } else {
            inputValue = inputSheet.Cells(k+1,4).value;//?????
        }
        if (typeof inputValue != "undefined")
            desData[i].value = inputValue;



    }
    // ??????浹????????????????????????????????????
    var temp = desData[len-1].value;
    // ????????????????????
    desData[len-1].value = desData[len-3].value;
    desData[len-3].value = temp;
    // ????????????????????
    temp = desData[len-2].value;
    desData[len-2].value = desData[len-4].value;
    desData[len-4].value = temp;

    // ????????????
    inputSheet = sheets.item(2);
    desData = document.getElementById("tab2_Content").getElementsByTagName("input");
    len = desData.length;
    for (var i = 0; i < len; i++) {
        if (checkOdd(i)) {
            inputValue = inputSheet.Cells((i/2)+2,3).value;//??????
        } else {
            inputValue = inputSheet.Cells((i+1)/2+1,4).value;//??????
        }
        if (typeof inputValue != "undefined")
            desData[i].value = inputValue;



    }

    // ?????????
    inputSheet = sheets.item(3);
    desData = document.getElementById("tab3_Content").getElementsByTagName("input");
    var count = getSheetRowsCount(inputSheet);
    for (var i=1,j=0; i <= count; i++) {
        if (i==1 || i==12 || i==23 || i==35 || i==36 || i==54 || i==59)
            continue;
        inputValue = inputSheet.Cells(i+1,3).value;
        if (typeof inputValue != "undefined")
            desData[j].value = inputValue;



        j++;
    }
}


/**
 * ???????????????????????????????????????????????????????????
 */
function importDataFromExcelQ(inObj,tabId,addArr,addArr2,changeArr) {
    var FILE_FLAG = "#*_CFCC_*#";
    // ??????????·??
    if(!checkPath(inObj))  return;
    var fileDir = trim(inObj.value).replace("\\","/");
    // ???????????????
    var oXL = new ActiveXObject("Excel.Application");
    var workbooks = oXL.WorkBooks;
    var inputBook = workbooks.Open(fileDir);
    var sheets = inputBook.Worksheets;

    var count,flagIndex;
    if (tabId == "finance") {
        count = 3;
        flagIndex = 5;
    } else {
        count = 9;
        flagIndex = 4;
    }
    if (sheets.Count < count) {
        alert("????????sheet????"+count+"???????????????????");
        inputBook.Close();
        return;
    }
    if (sheets.item(1).Cells(1,flagIndex).value != FILE_FLAG) {
        alert("??????????????????????????????????????");
        inputBook.Close();
        return;
    }

    var sheet;
    var rows;
    var rowCount;
    var defaultLen;
    var msg = "<br>";
    var err = 0;
    // ---------- ???????? ----------
    if (tabId == "finance") {
        importFinancialDataQ(sheets);
    }
    // ---------- ????????? ----------
    else if (tabId == "general") {
        sheet = sheets.item(1);
        rows = get("general");
        var errArr = importGeneralData(sheet,rows,msg,err);
        err = errArr[0];
        msg = errArr[1];
    }
    // ---------- ?????????????? ----------
    else if (tabId == "capStru") {
        // ??????
        sheet = sheets.item(2);
        var changeFlag = false;
        if (typeof sheet.Cells(2,2).value != "undefined") {
            var optionIndex = reflectSelect(sheet.Cells(2,2).value,get("currencycode1"));
            if (optionIndex == -1) {
                msg += "Excel???\""+sheet.name+"\"sheet??\""+sheet.Cells(2,1).value+"\"?????б???????????????<br>";
                err++;
            }
            changeFlag = true;
        }
        if (typeof sheet.Cells(3,2).value != "undefined") {
            get("contmoney1").value = sheet.Cells(3,2).value;
            changeFlag = true;
        }
        if (changeFlag) {if (get(changeArr[0]).value == "0")  get(changeArr[0]).value = "1";};
        // ???????
        sheet = sheets.item(3);
        rowCount = getSheetRowsCount(sheet);
        defaultLen = document.getElementsByName(addArr[1]).length;//addArr?????μ?addCapStru.jsp??importData()????
        if (rowCount > defaultLen) {
            for (i = 1; i <= rowCount-defaultLen; i++)
                addCapStru(addArr[0],addArr[1],addArr[2],addArr[3]);
        }
        rows = get("capTable").rows;
        var msgArr = importStruData(sheet,rows,rowCount,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[1]).value == "0")  get(changeArr[1]).value = "1";}
        // ???????
        sheet = sheets.item(4);
        rows = document.getElementsByName("list")[1].rows; //?????????ID?list??????table
        msgArr = importStruData(sheet,rows,undefined,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[2]).value == "0")  get(changeArr[2]).value = "1";}
        // ????????????
        sheet = sheets.item(5);
        rows = document.getElementsByName("list")[2].rows; //??????????????ID?list???????table
        msgArr = importStruData(sheet,rows,undefined,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[3]).value == "0")  get(changeArr[3]).value = "1";}
        // ????????????????
        sheet = sheets.item(6);
        rows = document.getElementsByName("list")[3].rows; //??????????????????ID?list??????table
        msgArr = importStruData(sheet,rows,undefined,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[4]).value == "0")  get(changeArr[4]).value = "1";}
        // ??????
        sheet = sheets.item(7);
        if (typeof sheet.Cells(2,2).value != "undefined") {
            get("upcorpname").value = sheet.Cells(2,2).value;
            changeFlag = true;
        }
        if (typeof sheet.Cells(3,2).value != "undefined") {
            get("upcorpcardno").value = sheet.Cells(3,2).value;
            changeFlag = true;
        }
        if (typeof sheet.Cells(4,2).value != "undefined") {
            get("upcorpborrcode").value = sheet.Cells(4,2).value;
            changeFlag = true;
        }
        if (changeFlag) {if (get(changeArr[5]).value == "0")  get(changeArr[5]).value = "1";};
    }
    // ---------- ????????? ----------
    else if (tabId == "concern") {
        // ??????????
        sheet = sheets.item(8);
        rowCount = getSheetRowsCount(sheet);
        if (rowCount > 10) rowCount = 10; // ????10?????
        defaultLen = document.getElementsByName(addArr[1]).length;//addArr?????μ?addConcern.jsp??importData()????
        if (rowCount > defaultLen) {
            for (i = 1; i <= rowCount-defaultLen; i++)
                addSue(addArr[0],addArr[1],addArr[2]);
        }
        rows = get("sueTable").rows;
        var msgArr = importStruData(sheet,rows,rowCount,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[0]).value == "0")  get(changeArr[0]).value = "1";}
        // ???????????
        sheet = sheets.item(9);
        rowCount = getSheetRowsCount(sheet);
        if (rowCount > 10) rowCount = 10; // ????10?????
        defaultLen = document.getElementsByName(addArr2[1]).length;//addArr2?????μ?addConcern.jsp??importData()????
        if (rowCount > defaultLen) {
            for (i = 1; i <= rowCount-defaultLen; i++)
                addIncident(addArr2[0],addArr2[1]);
        }
        rows = get("incidentTable").rows;
        msgArr = importStruData(sheet,rows,rowCount,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[1]).value == "0")  get(changeArr[1]).value = "1";}
    }

    inputBook.Close();
    if (err > 0)
        window.showModelessDialog("/webroot/enterprise/ImportErrMsg.jsp",msg,'dialogWidth:500px');
}


function getGeneralRowNo(sheet,eleName,rowCount) {
    for (var i = 2; i <= rowCount+1; i++) {
        if (eleName == sheet.Cells(i,4))
            return i;
    }
    return -1;
}

/**
 * ????Excel???sheet???????????
 */
function getSheetRowsCount(sheet) {
    var k = 0;
    // ???????????????п??????
    for (var i = 2; i < 100; i++) {
        if (typeof sheet.Cells(i,1).value != "undefined")
            k++;
        else
            break;
    }
    return k;
}

/**
 * ???????????tagName????????????顣
 * ????????3??tagName??????????tagName1??tagName2??tagName3?????
 * ??????????????????????????????????????????
 * ????????????豣?????obj??????????(javascript????obj.all?????)???????????tagName?????????????
 */
function getArrayByTagName(obj,tagName1,tagName2,tagName3) {
    var eles = obj.all;
    var len = eles.length;
    var arr = new Array();
    for (var i = 0,j = 0; i < len; i++) {
        // @TODO:????????????????if???????????
        if ((typeof tagName1 != "undefined" && eles[i].tagName==tagName1) || 
            (typeof tagName2 != "undefined" && eles[i].tagName==tagName2) ||
            (typeof tagName3 != "undefined" && eles[i].tagName==tagName3)) {
            arr[j] = eles[i];
            j++;
            // ?????б?????????OPTION????????????????????????????
            if (eles[i].tagName=="SELECT") {
                i = i + eles[i].children.length;
                continue;
            }
        }
    }
    return arr;
}

/**
 * ?????????????????type??????????????????鲢?????
 * ????????4??type??????????type1??type2??type3??type4?????
 * ??????????????????????????????????????????
 * ????????????豣?arr?????е?????????type?????????????
 */
function getArrayByType(arr,type1,type2,type3,type4) {
    var newArr = new Array();
    for (var i = 0,j = 0; i < arr.length; i++) {
        // @TODO:????????????????if???????????
        if ((typeof type1 != "undefined" && arr[i].type==type1) ||
            (typeof type2 != "undefined" && arr[i].type==type2) ||
            (typeof type3 != "undefined" && arr[i].type==type3) ||
            (typeof type4 != "undefined" && arr[i].type==type4)) {
            newArr[j] = arr[i];
            j++;
        }
    }
    return newArr;
}

/**
 * ?????????????????б??????????????????????б?
 */
function reflectSelect(inputValue,reflectObj) {
    var k = -1;
    for(var i = 0; i < reflectObj.children.length; i++) {
        if(inputValue == reflectObj.children(i).value) {
            k = i;
            break;
        }
    }
    if (k != -1)
        reflectObj.children(k).selected = true;
    return k;
}

/** 
 * д????д?????????????????????????
 * ??????????????????????????????????????????charCodeAt()??????????
 */
function transLoanCardNoWhenWrite(loanCardNo) {
  
    // ?????????????????????????????????????????
    if (!checkLoanCardno(loanCardNo) || !isNaN(loanCardNo.substring(0,1)))  return loanCardNo;
    
    var charStr;
    var numStr = "";
    for (i = 0; i < 3; i++) {
        charStr = loanCardNo.substring(i,i+1);
        numStr += String(charStr.charCodeAt());
    }

    return numStr + loanCardNo.substring(3);
}

/**
 * ?????????????????????????????????
 * ?????λ??????????????????
 * ????????????????????????ж??
 */
function transLoanCardNoWhenRead(loanCardNo) {

    var idx = loanCardNo.indexOf("#");
    
    if (idx == -1)  return loanCardNo;
    
    // 2?????????
    var track2Data = loanCardNo.substring(0,idx);
    // 3?????????
    var track3Data = loanCardNo.substring(idx+1);

    var parLoanCardNo;
    
    if (track3Data.length == 16 || track3Data.length == 19) {
        parLoanCardNo = track3Data;
    }
    else if (track3Data == NULLLOANCARDNO) {
        parLoanCardNo = track2Data;
    }
    else if (track3Data.length == 18) {
        if (track2Data == NULLLOANCARDNO)
            parLoanCardNo = track3Data.substring(0,16);
        else
            parLoanCardNo = track2Data;
    }

    // ??????????????????????????????????
    if (trim(parLoanCardNo).length <= 16)  return parLoanCardNo;
    
    // ?????????????18λ??????????16?????
    if (trim(parLoanCardNo).length == 18)  return parLoanCardNo.substring(0,16);
    
    // ????д??????????????
    var charArr = getTransArr();
    // ???????
    var charIdx;
    var charStr = "";
    for (i = 0; i < 5; i = i+2) {
        charIdx = parseInt(parLoanCardNo.substring(i,i+2),10);
        charStr += charArr[charIdx];
    }
    
    return charStr + parLoanCardNo.substring(6);
}

/**
 * ????26????д???????????????????顣
 * ???charCodeAt??????????????д洢?????????±?(65--90)??
 * return@ ??????????????
 */
function getTransArr() {
    var charStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var charLen = charStr.length;
    var str;
    var buf = new Array();
    buf.push("var charArr = {");
    for (var i = 0; i < charLen; i++) {
        str = charStr.substring(i,i+1);
        buf.push(str.charCodeAt() + ":'" + str + "'");
        if (i == charLen-1)
            buf.push("}");
        else
            buf.push(",");
    }
    var arrStr = buf.join("");
    eval(arrStr);
    return charArr;
}

/* ---------------- ????????????????????????????????е???? ---------------- */
/**
 * ????????????????
 * ??????????????????????????????????????????????????????????????????????????????????????á?
 */
function delCapStru(tableId,radioName,changeFlagStr,isNotNullStr) {
    var radioValue = getRadioValue(radioName);
    if (document.getElementsByName(radioName).length <= 1) {
        alert("???????????м????");
        return;
    }
    if (radioValue == "undefined" || radioValue == null) {
        alert("?????????????????????");
        return;
    }
    if (!confirm("????????????м????"))  return;
    
    if (document.getElementsByName(isNotNullStr)[radioValue].value != null &&
        document.getElementsByName(isNotNullStr)[radioValue].value != "") {
        
        if (document.getElementById(changeFlagStr).value =="0") {
            document.getElementById(changeFlagStr).value ="1";
        }
    }

    document.getElementById(tableId).deleteRow(radioValue+1);
}

/**
 * ???????е?????????????±?
 */
function getRadioValue(radioName) {
  for (var i = 0; i < document.getElementsByName(radioName).length; i++) {
      if (document.getElementsByName(radioName)[i].checked) 
          return i;
  }
}

/**
 * ????????????????????
 */
function addCapStru(tableId,radioName,certTypeSelectStr,currencySelectStr) {
    var newTR = document.getElementById(tableId).insertRow();
    var ftTD = newTR.insertCell();
    var sdTD = newTR.insertCell();
    var thTD = newTR.insertCell();
    thTD.align = "center";
    var foTD = newTR.insertCell();
    ftTD.innerHTML = '<input type=\"radio\" name=\"capRadio\"><input type=\"text\" name=\"contname1\" maxlength=\"80\" class=\"input-text\" style=\"width: 200px\" size=\"20\" onchange=\"setChangeFlagCaptStruct();\">';
    sdTD.innerHTML = '<table><tr><td align="right">??????</td><td align="center"><input type=\"text\" name=\"contcardno1\" maxlength=\"16\" class=\"input-text\" style=\"width: 150px\" size=\"20\" onchange=\"setChangeFlagCaptStruct();\"></td></tr><tr><td align="right">???????????</td><td align="center"><input type=\"text\" name=\"contborrcode1\" maxlength=\"10\" class=\"input-text\" style=\"width: 150px\" size=\"20\" onchange=\"setChangeFlagCaptStruct();\"></td></tr><tr><td align="right">???????</td><td align="center"><input type=\"text\" name=\"regino1\" maxlength=\"20\" class=\"input-text\" style=\"width: 150px\" size=\"20\" onchange=\"setChangeFlagCaptStruct();\"></td></tr><tr><td align="right">???????</td><td align="center">'+certTypeSelectStr+'</td></tr><tr><td align="right">???????</td><td align="center"><input type=\"text\" name=\"capcertno\" maxlength=\"18\" class=\"input-text\" style=\"width:150px\" size=\"20\" onchange=\"setChangeFlagCaptStruct();\"></td></tr></table>';
    thTD.innerHTML = currencySelectStr;
    foTD.innerHTML = '<input type="text" name="contmoney2" maxlength="8" onfocus="javascript:formatToNoComma(this);" onblur="javascript:this.value=commafy(this.value);" style="text-align: right;width: 100px" size="20" onchange="setChangeFlagCaptStruct();"> ???';
}

/**
 * ???????????????????
 */
function addInverst(tableId,radioName,currencySelectStr) {
  
    if (document.getElementsByName(radioName).length >= 10) {
        alert("???10???????????????");
        return;
    }
  
    var newTR = document.getElementById(tableId).insertRow();
    var ftTD = newTR.insertCell();
    var sdTD = newTR.insertCell();
    sdTD.align = "center";
    var thTD = newTR.insertCell();
    thTD.align = "center";
    var foTD = newTR.insertCell();
    foTD.align = "center";
    var fiTD = newTR.insertCell();
    fiTD.align = "center";
    ftTD.innerHTML = '<input type="radio" name="invRadio"><input type="text" name="contname2" maxlength="80" class="input-text" style="width: 160px" size="20" onchange="setChangeFlagInvest();">';
    sdTD.innerHTML = '<input type="text" name="contcardno2" maxlength="16" class="input-text" style="width: 150px" size="20" onchange="setChangeFlagInvest();">';
    thTD.innerHTML = '<input type="text" name="contborrcode2" maxlength="10" class="input-text" style="width: 150px" size="20" onchange="setChangeFlagInvest();">';
    foTD.innerHTML = currencySelectStr;
    fiTD.innerHTML = '<input type="text" name="contmoney3" maxlength="8" class="input-text" style="width: 80px" size="20" onchange="setChangeFlagInvest();"> ???';
}

/**
 * ?????????????????????
 */
function addMana(tableId,radioName,manaTypeSelectStr,manaGenderSelectStr,manaCertTypeSelectStr,manaEduSelectStr) {
  
    if (document.getElementsByName(radioName).length >= 10) {
        alert("???10?????????????????");
        return;
    }
  
    var newTR = document.getElementById(tableId).insertRow();
    var ftTD = newTR.insertCell();
    var sdTD = newTR.insertCell();
    sdTD.align = "center";
    var thTD = newTR.insertCell();
    thTD.align = "center";
    var foTD = newTR.insertCell();
    foTD.align = "center";
    var fiTD = newTR.insertCell();
    fiTD.align = "center";
    var siTD = newTR.insertCell();
    siTD.align = "center";
    var seTD = newTR.insertCell();
    seTD.align = "center";
    var eiTD = newTR.insertCell();
    eiTD.align = "center";
    
    ftTD.innerHTML = '<input type="radio" name="manaRadio">' + manaTypeSelectStr;
    sdTD.innerHTML = '<INPUT type="text" name="maname" maxlength="30" class="input-text" style="width: 120px" size="20" onchange="setChangeFlagManager();">';
    thTD.innerHTML = manaGenderSelectStr;
    foTD.innerHTML = manaCertTypeSelectStr;
    fiTD.innerHTML = '<INPUT type="text" name="macertno" maxlength="18" class="input-text" style="width: 100px" size="20" onchange="setChangeFlagManager();">';
    siTD.innerHTML = '<INPUT type="text" name="mabirthday"  maxlength="10" class="input-text" style="width: 60px" size="20" onchange="setChangeFlagManager();">';
    seTD.innerHTML = manaEduSelectStr;
    eiTD.innerHTML = '<textarea name="maresume" maxlength="500" cols="18" rows="2" wrap="IRTUAL" onchange="setChangeFlagManager();"></textarea>';
}

/**
 * ?????????????????????????
 */
function addFamily(tableId,radioName,fmRalaSelectStr,fmCertTypeSelectStr) {
    
    if (document.getElementsByName(radioName).length >= 10) {
        alert("???10?????????????????????");
        return;
    }

    var newTR = document.getElementById(tableId).insertRow();
    var ftTD = newTR.insertCell();
    ftTD.align = "center";
    var sdTD = newTR.insertCell();
    sdTD.align = "center";
    var thTD = newTR.insertCell();
    thTD.align = "center";
    var foTD = newTR.insertCell();
    foTD.align = "center";
    var fiTD = newTR.insertCell();
    fiTD.align = "center";
    var siTD = newTR.insertCell();
    siTD.align = "center";
    
    ftTD.innerHTML = '<input type="radio" name="fmRadio">' + fmRalaSelectStr;
    sdTD.innerHTML = '<INPUT type="text" name="fmname" maxlength="30" class="input-text" style="width: 90px" size="20" onchange="setChangeFlagFamily();">';
    thTD.innerHTML = fmCertTypeSelectStr;
    foTD.innerHTML = '<INPUT type="text" name="fmcertno" maxlength="18" class="input-text" style="width: 150px" size="20" onchange="setChangeFlagFamily();">';
    fiTD.innerHTML = '<INPUT type="text" name="fmcorpname" maxlength="80" class="input-text" style="width: 140px" size="20" onchange="setChangeFlagFamily();"></TD>';
    siTD.innerHTML = '<INPUT type="text" name="fmcorpcardno" maxlength="16" class="input-text" style="width: 140px" size="20" onchange="setChangeFlagFamily();">';
}

/**
 * ????????????????????
 */
function addSue(tableId,radioName,sueCurrencySelectStr) {
    
    if (document.getElementsByName(radioName).length >= 10) {
        alert("???10???????????????");
        return;
    }
    
    var newTR = document.getElementById(tableId).insertRow();
    var ftTD = newTR.insertCell();
    ftTD.align = "center";
    var sdTD = newTR.insertCell();
    sdTD.align = "center";
    var thTD = newTR.insertCell();
    thTD.align = "center";
    var foTD = newTR.insertCell();
    foTD.align = "center";
    var fiTD = newTR.insertCell();
    fiTD.align = "center";
    var siTD = newTR.insertCell();
    siTD.align = "center";
    
    ftTD.innerHTML = '<input type="radio" name="sueRadio"><input type="text" name="sueno" maxlength="60" class="input-text" style="width: 130px" onchange="setChangeFlagSue();">';
    sdTD.innerHTML = '<INPUT type="text" name="suedname" maxlength="80" class="input-text" style="width: 140px" onchange="setChangeFlagSue();">';
    thTD.innerHTML = sueCurrencySelectStr + '&nbsp;<INPUT type="text" name="judgeexecmoney" maxlength="20" onfocus="javascript:formatToNoComma(this);" onblur="javascript:this.value=commafy(this.value);" style="text-align:right;width: 90px" size="20" onchange="setChangeFlagSue();">';
    foTD.innerHTML = '<INPUT type="text" name="judgeexecdate" class="input-text" style="width: 80px" size="20" onchange="setChangeFlagSue();">';
    fiTD.innerHTML = '<textarea name="suedreason" cols="12" rows="2" wrap="VIRTUAL" onchange="setChangeFlagSue();"></textarea>';
    siTD.innerHTML = '<textarea name="execresult" size="10" cols="12" rows="2" wrap="VIRTUAL" onchange="setChangeFlagSue();"></textarea>';
}

/**
 * ?????????????????????
 */
function addIncident(tableId,radioName) {
    
    if (document.getElementsByName(radioName).length >= 10) {
        alert("???10????????????????");
        return;
    }
    
    var newTR = document.getElementById(tableId).insertRow();
    var ftTD = newTR.insertCell();
    ftTD.align = "center";
    var sdTD = newTR.insertCell();
    sdTD.align = "center";
    
    ftTD.innerHTML = '<input type="radio" name="incidentRadio"><input type="text" name="incidentno" maxlength="60" class="input-text" style="width: 220px" onchange="setChangeFlagIncident();">';
    sdTD.innerHTML = '<textarea name="incidentdesc" cols="40" rows="2" wrap="VIRTUAL" onchange="setChangeFlagIncident();"></textarea>';
}



/**
 * ????????????????????
 * У?????????????У??λ?????
 *
 */
 function checkLoanPcisCardno(loanCardNo) {
  
     if (trim(loanCardNo).length != 16)
        return false;
     
     var checkCode;
     var weightValue = new Array();
     var checkValue = new Array();
     var totalValue = 0;
     var c = 0;
     // ?????У????
     var str1;

     checkCode = trim(loanCardNo).substring(0, 14);
     
     for (var i = 0; i < 14; i++) {
        var tempvalue = checkCode.charCodeAt(i);
        if (tempvalue >= "a".charCodeAt() && tempvalue <= "z".charCodeAt()) {
            //alert("???????в?????Сд???");
            return false;
        }
     }
     
     weightValue[0] = 1;
     weightValue[1] = 3;
     weightValue[2] = 5;
     weightValue[3] = 7;
     weightValue[4] = 11;
     weightValue[5] = 2;
     weightValue[6] = 13;
     weightValue[7] = 1;
     weightValue[8] = 1;
     weightValue[9] = 17;
     weightValue[10] = 19;
     weightValue[11] = 97;
     weightValue[12] = 23;
     weightValue[13] = 29;
     
     for (var j = 0; j < 3; j++) {
         var tempValue = checkCode.substring(j, j+1);
         if (tempValue >= "A" && tempValue <= "Z") {
             checkValue[j] = tempValue.charCodeAt() - 55;
         } else {
             checkValue[j] = tempValue;
         }
         
         totalValue = totalValue + weightValue[j] * checkValue[j];
     }
     
     for (var j = 3; j < 14; j++) {
     	checkValue[j] = checkCode.substring(j, j+1);
     	totalValue = totalValue + weightValue[j] * checkValue[j];
     }
     
     c = 1 + (totalValue % 97);
     str1 = String(c);
     
     if (str1.length == 1) {
     	str1 = '0' + str1;
     }
     
     if (str1 == trim(loanCardNo).substring(14))  
       return true;
     else 
       return false;
     
 }


 /*
==================================================================
?????????????????  ???????????????????Ч
????isCorpno(obj)
?????bool
==================================================================
*/
function isPcisCorpNo(financecode) {

  if (!checkstring_allSpace(financecode)) {
    //alert("????????????????");
    return false;
  }
  var financecode=trim(financecode);
  if(financecode=="")
    return true;

   var fir_value, sec_value;
   var w_i = new Array(8);
   var c_i = new Array(8);
   var j, s = 0;
   var c, i;

   var code = financecode;
   if (code == "00000000-0") {
     //alert("??????????????!");
     return false;
   }

   re = /[A-Z0-9]{8}-[A-Z0-9]/;    
   r = code.match(re);   
   if (r == null) {
	   //alert("??????????????!");
     return false;
   }        

	   w_i[0] = 3;
	   w_i[1] = 7;
	   w_i[2] = 9;
	   w_i[3] = 10;
	   w_i[4] = 5;
	   w_i[5] = 8;
	   w_i[6] = 4;
	   w_i[7] = 2;

	   if (financecode.charAt(8) != '-') {
	     //alert("??????????????!");
		   return false;
	   }

	   for (i = 0; i < 10; i++) {
		   c = financecode.charAt(i);
		   if (c <= 'z' && c >= 'a') {
		    // alert("??????????????!");
			   return false;
		   }
	   }

	   fir_value = financecode.charCodeAt(0);
	   sec_value = financecode.charCodeAt(1);

	   if (fir_value >= 'A'.charCodeAt(0) && fir_value <= 'Z'.charCodeAt(0)) {
		   c_i[0] = fir_value + 32 - 87;
	   } else {
			if (fir_value >= '0'.charCodeAt(0) && fir_value <= '9'.charCodeAt(0)) {
			c_i[0] = fir_value - '0'.charCodeAt(0);
			} else {
			  //alert("??????????????!");
			  return false;
			}
	   }

	   s = s + w_i[0] * c_i[0];

	   if (sec_value >= 'A'.charCodeAt(0) && sec_value <= 'Z'.charCodeAt(0)) {
		   c_i[1] = sec_value + 32 - 87;
	   } else if (sec_value >= '0'.charCodeAt(0) && sec_value <= '9'.charCodeAt(0)) {
		   c_i[1] = sec_value - '0'.charCodeAt(0);
	   } else {
	     //alert("??????????????!");
		   return false;
	   }

	   s = s + w_i[1] * c_i[1];
	   for (j = 2; j < 8; j++) {
		   if (financecode.charAt(j) < '0' || financecode.charAt(j) > '9') {
		     //alert("??????????????!");
		     return false;
		   }
		   c_i[j] = financecode.charCodeAt(j) - '0'.charCodeAt(0);
		   s = s + w_i[j] * c_i[j];
	   }

	   c = 11 - (s % 11);

	   if (!((financecode.charAt(9) == 'X' && c == 10) ||
			 (c == 11 && financecode.charAt(9) == '0') || (c == financecode.charCodeAt(9) - '0'.charCodeAt(0)))) {
			  //alert("??????????????!");
				return false;
	   }
   
   return true;
}
// ??????yyyymmdd????????
function formatdate(dateName) {
   var owesForm = document.getElementsByName(dateName)[0].value;
   if(trim(owesForm).length==0)return true;
    var index=owesForm.indexOf("-");
    if(index == -1){
    var year=owesForm.substring(0,4);
    var month=owesForm.substring(4,6);
    var day=owesForm.substring(6);
    document.getElementsByName(dateName)[0].value=year+"-"+month+"-"+day;
    }
}
//??????????????????yyyymmdd?????yyyy-mm-dd
function formatdatenter(dateName) {
   if (event.keyCode == "13"){	
      var owesForm = document.getElementsByName(dateName)[0].value;
   if(trim(owesForm).length==0)return true;
    var index=owesForm.indexOf("-");
    if(index == -1){
    var year=owesForm.substring(0,4);
    var month=owesForm.substring(4,6);
    var day=owesForm.substring(6);
    document.getElementsByName(dateName)[0].value=year+"-"+month+"-"+day;
    }
    }
}



function importFinancialDataQ(sheets) {
    // ????????
    
    var inputSheet = sheets.item(1);
    var desData = document.getElementById("tab1_Content").getElementsByTagName("input");
    var len = desData.length;
    var inputValue;
    var j = -1;
    var k;
    for (var i = 0; i < len; i++) {
        if (checkOdd(i)) {
            if (i%4 == 0) {
              k = i/2 - j;
              j = j + 1;
            } else {
              k = k + 31;
            }
           if(i==48)
           { k=44;}
           if(i==50 )
           { k=13;}
            if(i==90||i==94||i==98||i==102||i==106||i==110||i==114){
               inputValue = inputSheet.Cells(k-29,3).value;
            }else if (i==92||i==96||i==100||i==104||i==108||i==112||i==116){
               inputValue = inputSheet.Cells(k+31,3).value;
            }else {
              inputValue = inputSheet.Cells(k+1,3).value;//?????
            }
        } else {
           if(i==49)
           {k=44;}
            if(i==51)
           { k=13;}          
            if(i==91||i==95||i==99||i==103||i==107||i==111||i==115){
               inputValue = inputSheet.Cells(k-29,4).value;//?????
            }else if (i==93||i==97||i==101||i==105||i==109||i==113||i==117){
               inputValue = inputSheet.Cells(k+31,4).value;//?????
            }else {
              inputValue = inputSheet.Cells(k+1,4).value;//?????
            }
        }
        if (typeof inputValue == "undefined"){
            desData[i].value="";
        }else{
            desData[i].value = inputValue;
        }
    }
      inputValue=inputSheet.Cells(32,3).value;
      if (typeof inputValue == "undefined"){
           inputValue="";
      }
      desData[116].value = inputValue;
      inputValue=inputSheet.Cells(32,4).value;
      if (typeof inputValue == "undefined"){
           inputValue="";
      }
      desData[117].value = inputValue;
      
      inputValue=inputSheet.Cells(61,3).value;
      if (typeof inputValue == "undefined"){
           inputValue="";
      }
      desData[118].value = inputValue;
      inputValue=inputSheet.Cells(61,4).value;
      if (typeof inputValue == "undefined"){
           inputValue="";
      }
      desData[119].value = inputValue;
    // ????????????
    inputSheet = sheets.item(2);
    desData = document.getElementById("tab2_Content").getElementsByTagName("input");
    len = desData.length;
    for (var i = 0; i < len; i++) {
        if (checkOdd(i)) {
            inputValue = inputSheet.Cells((i/2)+2,3).value;//??????
        } else {
            inputValue = inputSheet.Cells((i+1)/2+1,4).value;//??????
        }
        if (typeof inputValue == "undefined"){
            desData[i].value="";
        }else{
            desData[i].value = inputValue;
        }
    }

    // cash
    inputSheet = sheets.item(3);
    desData = document.getElementById("tab3_Content").getElementsByTagName("input");
    var count = getSheetRowsCount(inputSheet);
    for (var i=0; i <= count; i++) {
        inputValue = inputSheet.Cells(i+1,3).value;
        if (typeof inputValue == "undefined"){
            desData[i].value="";
        }else{
            desData[i].value = inputValue;
        }
        j++;
    }
}


/**
 * ???????????????????????????????????????????????????????????
 */
function importDataFromExcelS(inObj,tabId,addArr,addArr2,changeArr) {
    var FILE_FLAG = "#*_CFCC_*#";
    // ??????????·??
    if(!checkPath(inObj))  return;
    var fileDir = trim(inObj.value).replace("\\","/");
    // ???????????????
    var oXL = new ActiveXObject("Excel.Application");
    var workbooks = oXL.WorkBooks;
    var inputBook = workbooks.Open(fileDir);
    var sheets = inputBook.Worksheets;

    var count,flagIndex;
    if (tabId == "finance") {
        count = 2;
        flagIndex = 5;
    } else {
        count = 9;
        flagIndex = 4;
    }
    if (sheets.Count > count) {
        alert("????????sheet????"+count+"???????????????????");
        inputBook.Close();
        return;
    }
    if (sheets.item(1).Cells(1,flagIndex).value != FILE_FLAG) {
        alert("??????????????????????????????????????");
        inputBook.Close();
        return;
    }

    var sheet;
    var rows;
    var rowCount;
    var defaultLen;
    var msg = "<br>";
    var err = 0;
    // ---------- ???????? ----------
    if (tabId == "finance") {
        importFinancialDataS(sheets);
    }
    // ---------- ????????? ----------
    else if (tabId == "general") {
        sheet = sheets.item(1);
        rows = get("general");
        var errArr = importGeneralData(sheet,rows,msg,err);
        err = errArr[0];
        msg = errArr[1];
    }
    // ---------- ?????????????? ----------
    else if (tabId == "capStru") {
        // ??????
        sheet = sheets.item(2);
        var changeFlag = false;
        if (typeof sheet.Cells(2,2).value != "undefined") {
            var optionIndex = reflectSelect(sheet.Cells(2,2).value,get("currencycode1"));
            if (optionIndex == -1) {
                msg += "Excel???\""+sheet.name+"\"sheet??\""+sheet.Cells(2,1).value+"\"?????б???????????????<br>";
                err++;
            }
            changeFlag = true;
        }
        if (typeof sheet.Cells(3,2).value != "undefined") {
            get("contmoney1").value = sheet.Cells(3,2).value;
            changeFlag = true;
        }
        if (changeFlag) {if (get(changeArr[0]).value == "0")  get(changeArr[0]).value = "1";};
        // ???????
        sheet = sheets.item(3);
        rowCount = getSheetRowsCount(sheet);
        defaultLen = document.getElementsByName(addArr[1]).length;//addArr?????μ?addCapStru.jsp??importData()????
        if (rowCount > defaultLen) {
            for (i = 1; i <= rowCount-defaultLen; i++)
                addCapStru(addArr[0],addArr[1],addArr[2],addArr[3]);
        }
        rows = get("capTable").rows;
        var msgArr = importStruData(sheet,rows,rowCount,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[1]).value == "0")  get(changeArr[1]).value = "1";}
        // ???????
        sheet = sheets.item(4);
        rows = document.getElementsByName("list")[1].rows; //?????????ID?list??????table
        msgArr = importStruData(sheet,rows,undefined,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[2]).value == "0")  get(changeArr[2]).value = "1";}
        // ????????????
        sheet = sheets.item(5);
        rows = document.getElementsByName("list")[2].rows; //??????????????ID?list???????table
        msgArr = importStruData(sheet,rows,undefined,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[3]).value == "0")  get(changeArr[3]).value = "1";}
        // ????????????????
        sheet = sheets.item(6);
        rows = document.getElementsByName("list")[3].rows; //??????????????????ID?list??????table
        msgArr = importStruData(sheet,rows,undefined,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[4]).value == "0")  get(changeArr[4]).value = "1";}
        // ??????
        sheet = sheets.item(7);
        if (typeof sheet.Cells(2,2).value != "undefined") {
            get("upcorpname").value = sheet.Cells(2,2).value;
            changeFlag = true;
        }
        if (typeof sheet.Cells(3,2).value != "undefined") {
            get("upcorpcardno").value = sheet.Cells(3,2).value;
            changeFlag = true;
        }
        if (typeof sheet.Cells(4,2).value != "undefined") {
            get("upcorpborrcode").value = sheet.Cells(4,2).value;
            changeFlag = true;
        }
        if (changeFlag) {if (get(changeArr[5]).value == "0")  get(changeArr[5]).value = "1";};
    }
    // ---------- ????????? ----------
    else if (tabId == "concern") {
        // ??????????
        sheet = sheets.item(8);
        rowCount = getSheetRowsCount(sheet);
        if (rowCount > 10) rowCount = 10; // ????10?????
        defaultLen = document.getElementsByName(addArr[1]).length;//addArr?????μ?addConcern.jsp??importData()????
        if (rowCount > defaultLen) {
            for (i = 1; i <= rowCount-defaultLen; i++)
                addSue(addArr[0],addArr[1],addArr[2]);
        }
        rows = get("sueTable").rows;
        var msgArr = importStruData(sheet,rows,rowCount,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[0]).value == "0")  get(changeArr[0]).value = "1";}
        // ???????????
        sheet = sheets.item(9);
        rowCount = getSheetRowsCount(sheet);
        if (rowCount > 10) rowCount = 10; // ????10?????
        defaultLen = document.getElementsByName(addArr2[1]).length;//addArr2?????μ?addConcern.jsp??importData()????
        if (rowCount > defaultLen) {
            for (i = 1; i <= rowCount-defaultLen; i++)
                addIncident(addArr2[0],addArr2[1]);
        }
        rows = get("incidentTable").rows;
        msgArr = importStruData(sheet,rows,rowCount,msg,err);
        err = msgArr[0];
        msg = msgArr[1];
        changeFlag = msgArr[2];
        if (changeFlag) {if (get(changeArr[1]).value == "0")  get(changeArr[1]).value = "1";}
    }

    inputBook.Close();
    if (err > 0)
        window.showModelessDialog("/webroot/enterprise/ImportErrMsg.jsp",msg,'dialogWidth:500px');
}


function importFinancialDataS(sheets) {
    // ????????
    var inputSheet = sheets.item(1);
    var desData = document.getElementById("tab1_Content").getElementsByTagName("input");
    var len = desData.length;
    var inputValue;
    var j = 0;
    var k=0;
    for (var i = 0; i < len; i++) {
        if (checkOdd(i)) {
            if (i%4 == 0) {
              k = i/2 - j;
              j = j + 1;
            } else {
             k = k + 32;
            }
            inputValue = inputSheet.Cells(k+1,3).value;//?????
        } else {
            inputValue = inputSheet.Cells(k+1,4).value;//?????
        }
        if (typeof inputValue == "undefined"){
            desData[i].value ="";
        }else{
            desData[i].value = inputValue;
        }
    }
   
    // ????????????
    inputSheet = sheets.item(2);
    desData = document.getElementById("tab2_Content").getElementsByTagName("input");
    len = desData.length;
    var j=0;
    for (var i = 0; i < len; i++) {
         if(i%3==0){
            k =i+2-2*j;
            j=j+1
         }else{
            k=k+20;
         }
        inputValue = inputSheet.Cells(k,3).value;
        if (typeof inputValue == "undefined"){
            desData[i].value ="";
        }else{
            desData[i].value = inputValue;
        }
    }
}



//????---------------------
function checkNulToZero(data){

        if(!checkNull(data)){
           return 0.00;
        }
        return data;
}

function isIDno(idcard) {
    var Errors=new Array("??????!",
                         "????????λ??????!",
                         "????????????????????Χ???з?????!",
                         "????????У?????!",
                         "???????????!"
                        );
  
    var area={11:"????",12:"???",13:"???",14:"???",15:"?????",21:"????",22:"????",23:"??????",31:"???",32:"????",33:"??",34:"????",35:"????",36:"????",37:"???",41:"????",42:"????",43:"????",44:"??",45:"????",46:"????",50:"????",51:"???",52:"????",53:"????",54:"????",61:"????",62:"????",63:"??",64:"????",65:"???",71:"???",81:"???",82:"????",91:"????"}
    
    var idcard,Y,JYM;
    var S,M;
    var idcard_array = new Array();
    idcard_array = idcard.split("");
    //????????
    if(area[parseInt(idcard.substr(0,2))]==null) {
        alert(Errors[4]);
        return false;
    }
    //??????λ???????????
    switch(idcard.length){
    case 15:
        //15λ????????
        if ( (parseInt(idcard.substr(6,2))+1900) % 4 == 0 || ((parseInt(idcard.substr(6,2))+1900) % 100 == 0 && (parseInt(idcard.substr(6,2))+1900) % 4 == 0 )){
            ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;//????????????????
        } else {
            ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;//????????????????
        }
        if(!ereg.test(idcard)) {
            alert(Errors[2]);
            return false;
        } else {
            return true;
        }
    break;
    case 18:
        //18λ????????
        //??????????????? 
        //????????:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))
        //???????:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))
        if ( parseInt(idcard.substr(6,4)) % 4 == 0 || (parseInt(idcard.substr(6,4)) % 100 == 0 && parseInt(idcard.substr(6,4))%4 == 0 )){
            ereg=/^[1-9][0-9]{5}[1-9][0-9]{3}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;//???????????????????????
        } else {
            ereg=/^[1-9][0-9]{5}[1-9][0-9]{3}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;//??????????????????????
        }
        if(ereg.test(idcard)) { //????????????????
            //????У??λ
            S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7
            + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9
            + (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10
            + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5
            + (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8
            + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4
            + (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2
            + parseInt(idcard_array[7]) * 1 
            + parseInt(idcard_array[8]) * 6
            + parseInt(idcard_array[9]) * 3 ;
            Y = S % 11;
            M = "F";
            JYM = "10X98765432";
            M = JYM.substr(Y,1);//?ж?У??λ
            if(M !== idcard_array[17]) {
                alert(Errors[3]);
                return false;
            }
            return true;
        } else {
            alert(Errors[2]);
            return false;
        } 
        break;
    default:
        alert(Errors[1]);
        return false;
        break;
    }
}



function isCorpNo(financecode) {

  if (!checkstring_allSpace(financecode)) {
    alert("????????????????");
    return false;
  }
  var financecode=trim(financecode);
  if(financecode=="")
    return true;

   var fir_value, sec_value;
   var w_i = new Array(8);
   var c_i = new Array(8);
   var j, s = 0;
   var c, i;

   var code = financecode;
   if (code == "00000000-0") {
     alert("??????????????!");
     return false;
   }

   re = /[A-Z0-9]{8}-[A-Z0-9]/;    
   r = code.match(re);   
   if (r == null) {
	   alert("??????????????!");
     return false;
   }        

	   w_i[0] = 3;
	   w_i[1] = 7;
	   w_i[2] = 9;
	   w_i[3] = 10;
	   w_i[4] = 5;
	   w_i[5] = 8;
	   w_i[6] = 4;
	   w_i[7] = 2;

	   if (financecode.charAt(8) != '-') {
	     alert("??????????????!");
		   return false;
	   }

	   for (i = 0; i < 10; i++) {
		   c = financecode.charAt(i);
		   if (c <= 'z' && c >= 'a') {
		     alert("??????????????!");
			   return false;
		   }
	   }

	   fir_value = financecode.charCodeAt(0);
	   sec_value = financecode.charCodeAt(1);

	   if (fir_value >= 'A'.charCodeAt(0) && fir_value <= 'Z'.charCodeAt(0)) {
		   c_i[0] = fir_value + 32 - 87;
	   } else {
			if (fir_value >= '0'.charCodeAt(0) && fir_value <= '9'.charCodeAt(0)) {
			c_i[0] = fir_value - '0'.charCodeAt(0);
			} else {
			  alert("??????????????!");
			  return false;
			}
	   }

	   s = s + w_i[0] * c_i[0];

	   if (sec_value >= 'A'.charCodeAt(0) && sec_value <= 'Z'.charCodeAt(0)) {
		   c_i[1] = sec_value + 32 - 87;
	   } else if (sec_value >= '0'.charCodeAt(0) && sec_value <= '9'.charCodeAt(0)) {
		   c_i[1] = sec_value - '0'.charCodeAt(0);
	   } else {
	     alert("??????????????!");
		   return false;
	   }

	   s = s + w_i[1] * c_i[1];
	   for (j = 2; j < 8; j++) {
		   if (financecode.charCodeAt(j) >= 'A'.charCodeAt(0) && financecode.charCodeAt(j) <= 'Z'.charCodeAt(0)) {
             c_i[j] = financecode.charCodeAt(j) + 32 - 87;
           } else if (financecode.charCodeAt(j) >= '0'.charCodeAt(0) && financecode.charCodeAt(j) <= '9'.charCodeAt(0)) {
             c_i[j] = financecode.charCodeAt(j) - '0'.charCodeAt(0);
           } else {
            alert("??????????????!");
            return false;
           }
		   s = s + w_i[j] * c_i[j];
	   }

	   c = 11 - (s % 11);

	   if (!((financecode.charAt(9) == 'X' && c == 10) ||
			 (c == 11 && financecode.charAt(9) == '0') || (c == financecode.charCodeAt(9) - '0'.charCodeAt(0)))) {
			  alert("??????????????!");
				return false;
	   }
   
   return true;
}

function isPcisCorpNo(financecode) {

  if (!checkstring_allSpace(financecode)) {
    //alert("????????????????");
    return false;
  }
  var financecode=trim(financecode);
  if(financecode=="")
    return true;

   var fir_value, sec_value;
   var w_i = new Array(8);
   var c_i = new Array(8);
   var j, s = 0;
   var c, i;

   var code = financecode;
   if (code == "00000000-0") {
     //alert("??????????????!");
     return false;
   }

   re = /[A-Z0-9]{8}-[A-Z0-9]/;    
   r = code.match(re);   
   if (r == null) {
	   //alert("??????????????!");
     return false;
   }        

	   w_i[0] = 3;
	   w_i[1] = 7;
	   w_i[2] = 9;
	   w_i[3] = 10;
	   w_i[4] = 5;
	   w_i[5] = 8;
	   w_i[6] = 4;
	   w_i[7] = 2;

	   if (financecode.charAt(8) != '-') {
	     //alert("??????????????!");
		   return false;
	   }

	   for (i = 0; i < 10; i++) {
		   c = financecode.charAt(i);
		   if (c <= 'z' && c >= 'a') {
		    // alert("??????????????!");
			   return false;
		   }
	   }

	   fir_value = financecode.charCodeAt(0);
	   sec_value = financecode.charCodeAt(1);

	   if (fir_value >= 'A'.charCodeAt(0) && fir_value <= 'Z'.charCodeAt(0)) {
		   c_i[0] = fir_value + 32 - 87;
	   } else {
			if (fir_value >= '0'.charCodeAt(0) && fir_value <= '9'.charCodeAt(0)) {
			c_i[0] = fir_value - '0'.charCodeAt(0);
			} else {
			  //alert("??????????????!");
			  return false;
			}
	   }

	   s = s + w_i[0] * c_i[0];

	   if (sec_value >= 'A'.charCodeAt(0) && sec_value <= 'Z'.charCodeAt(0)) {
		   c_i[1] = sec_value + 32 - 87;
	   } else if (sec_value >= '0'.charCodeAt(0) && sec_value <= '9'.charCodeAt(0)) {
		   c_i[1] = sec_value - '0'.charCodeAt(0);
	   } else {
	     //alert("??????????????!");
		   return false;
	   }

	   s = s + w_i[1] * c_i[1];
	   for (j = 2; j < 8; j++) {
		   if (financecode.charCodeAt(j) >= 'A'.charCodeAt(0) && financecode.charCodeAt(j) <= 'Z'.charCodeAt(0)) {
             c_i[j] = financecode.charCodeAt(j) + 32 - 87;
           } else if (financecode.charCodeAt(j) >= '0'.charCodeAt(0) && financecode.charCodeAt(j) <= '9'.charCodeAt(0)) {
             c_i[j] = financecode.charCodeAt(j) - '0'.charCodeAt(0);
           } else {
            alert("??????????????!");
            return false;
           }
		   s = s + w_i[j] * c_i[j];
	   }

	   c = 11 - (s % 11);

	   if (!((financecode.charAt(9) == 'X' && c == 10) ||
			 (c == 11 && financecode.charAt(9) == '0') || (c == financecode.charCodeAt(9) - '0'.charCodeAt(0)))) {
			  //alert("??????????????!");
				return false;
	   }
   
   return true;
}

function chksafe(name){
	for(var i=0; i<name.length; i++)
	{
		var charValue = name.charAt(i);
		if (!(charValue >= 'A' && charValue <= 'Z') && !(charValue>='0' && charValue<='9') && !(charValue >= 'a' && charValue <= 'z')) {
			if(!(/^[\u4e00-\u9fa5]+$/i).test(charValue)){   
				return false;
			}
		}
	}
	return true;
}