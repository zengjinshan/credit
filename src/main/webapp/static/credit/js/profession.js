	// �鿴����-����
	function showLoanAssureeInfo(loancardno,financecode,loancontractcode){
		var url="reportInfoWindows.do?reqFlag=2&loancardno="+loancardno+"&blockcode=ASSUREEINFO_00&loankind=1&financecode="+financecode+"&loancontractcode="+loancontractcode;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","top=100,left=100,width=700,height=400,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=yes,directories=no");
	}
	
	// �鿴����-ó������
	function showFinancingAssureeInfo(loancardno,financecode,loancontractcode){
		var url="reportInfoWindows.do?reqFlag=2&loancardno="+loancardno+"&blockcode=ASSUREEINFO_00&loankind=4&financecode="+financecode+"&loancontractcode="+loancontractcode;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","top=100,left=100,width=700,height=400,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=yes,directories=no");
	}
	
	// �鿴����-����
	function showAssureeAssureeInfo(loancardno,financecode,loancontractcode){
		var url="reportInfoWindows.do?reqFlag=2&loancardno="+loancardno+"&blockcode=ASSUREEINFO_00&loankind=2&financecode="+financecode+"&loancontractcode="+loancontractcode;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","top=100,left=100,width=700,height=400,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=yes,directories=no");
	}
	
	// �鿴����-����֤
		function showLetterAssureeInfo(loancardno,financecode,loancontractcode){
		var url="reportInfoWindows.do?reqFlag=2&loancardno="+loancardno+"&blockcode=ASSUREEINFO_00&loankind=5&financecode="+financecode+"&loancontractcode="+loancontractcode;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","top=100,left=100,width=700,height=400,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=yes,directories=no");
	}
		
	// �鿴����-���гжһ�Ʊ
	function showPostalAssureeInfo(loancardno,financecode,loancontractcode){
		var url="reportInfoWindows.do?reqFlag=2&loancardno="+loancardno+"&blockcode=ASSUREEINFO_00&loankind=7&financecode="+financecode+"&loancontractcode="+loancontractcode;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","top=100,left=100,width=700,height=400,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=yes,directories=no");
	}
	
	// �鿴����-����
	function showGuaranteeletterAssureeInfo(loancardno,financecode,loancontractcode){
		var url="reportInfoWindows.do?reqFlag=2&loancardno="+loancardno+"&blockcode=ASSUREEINFO_00&loankind=6&financecode="+financecode+"&loancontractcode="+loancontractcode;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","top=100,left=100,width=700,height=400,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=yes,directories=no");
	}
	//�鿴������ϸ
	function showLoanNor(){
		var obj = new Object();
		obj.name = document.getElementById("loanpaid").innerHTML;
		window.showModalDialog('simplequery/profession/creditdetail.jsp',obj,"dialogWidth=800px;dialogHeight=600px");
		return;
	}
	//�鿴ó��������ϸ
	function showFinancingNor(){
		var obj = new Object();
		obj.name = document.getElementById("financingpaid").innerHTML;
		window.showModalDialog('simplequery/profession/creditdetail.jsp',obj,"dialogWidth=800px;dialogHeight=600px");
		return;
	}
	//�鿴������ϸ
	function showAssureeNor(){
		var obj = new Object();
		obj.name = document.getElementById("assureepaid").innerHTML;
		window.showModalDialog('simplequery/profession/creditdetail.jsp',obj,"dialogWidth=800px;dialogHeight=600px");
		return;
	}
	//�鿴�жһ�Ʊ��ϸ
	function showPostalNor(){
		var obj = new Object();
		obj.name = document.getElementById("postalpaid").innerHTML;
		window.showModalDialog('simplequery/profession/creditdetail.jsp',obj,"dialogWidth=800px;dialogHeight=600px");
		return;
	}
	//�鿴����֤��ϸ
	function showLetterNor(){
		var obj = new Object();
		obj.name = document.getElementById("letterpaid").innerHTML;
		window.showModalDialog('simplequery/profession/creditdetail.jsp',obj,"dialogWidth=800px;dialogHeight=600px");
		return;
	}
	//�鿴Ʊ��������ϸ
	function showBillNor(){
		var obj = new Object();
		obj.name = document.getElementById("billpaid").innerHTML;
		window.showModalDialog('simplequery/profession/creditdetail.jsp',obj,"dialogWidth=800px;dialogHeight=600px");
		return;
	}
	
	//�鿴������ϸ
	function showGuaranteeletterNor(){
		var obj = new Object();
		obj.name = document.getElementById("guaranteeletterpaid").innerHTML;
		window.showModalDialog('simplequery/profession/creditdetail.jsp',obj,"dialogWidth=800px;dialogHeight=600px");
		return;
	}
	////////////////////////////////////�鿴չ�ڵ�������///////////////////////////////////////////////////////////
	//�鿴����չ��
	function showLoanExtensionInfo(loancardno,financecode,operid){
		var url="reportInfoWindows.do?reqFlag=3&loancardno="+loancardno+"&blockcode=EXTENSION_01&financecode="+financecode+"&operid="+operid;
		window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
	//	window.open(url,"","top=100,left=100,width=700,height=400,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=yes,directories=no");
	}
	//�鿴ó������չ��
	function showFinancingExtensionInfo(loancardno,financecode,operid){
		var url="reportInfoWindows.do?reqFlag=3&loancardno="+loancardno+"&blockcode=EXTENSION_02&financecode="+financecode+"&operid="+operid;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","top=100,left=100,width=700,height=400,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=yes,directories=no");
	}
	////////////////////////////////////�������ڲ鿴������Ϣ��ʷ24/////////////////////////////////////////////////////////
	//���
	function showEntaccountPublicHistory(loancardcode,sistype,occureddate){
		var url="showAllHistory.do?loancardno="+loancardcode+"&sistype="+sistype+"&occureddate="+occureddate+"&type=last24month&last24MonthType=entaccount";
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","Width=800px;Height=600px,top=100px,left=200px,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=no,directories=no");
	}
	//ס��
	function showAccfundPublicHistory(loancardcode,occureddate){
		var url="showAllHistory.do?loancardno="+loancardcode+"&occureddate="+occureddate+"&type=last24month&last24MonthType=accfund";
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","Width=800px;Height=600px,top=100px,left=200px,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=no,directories=no");
	}
	//�ɷ�
	function showPublicPublicHistory(areacode,entaccountname,businessmancode,sistype, payinfotype,censusDate){
		var url="showAllHistory.do?areacode="+areacode+"&sistype="+sistype+"&entaccountname="+entaccountname+"&type=last24month&last24MonthType=public&businessmancode="+businessmancode+
		"&payinfotype="+payinfotype+"&censusDate="+censusDate;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","Width=800px;Height=600px,top=100px,left=200px,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=no,directories=no");
	}
	

	//δ��������Ʊ��������ϸ
	function showBillDetail(arg){
		var searchreason = document.getElementById("searchReason").value;
		var searchreasoncode = document.getElementById("searchReasonCode").value;
		var editiontype = document.getElementById("reportcode").value;
		var creditcode = document.getElementById("creditcode").value;
		var reportCode = document.getElementById("reportcode").value;
		var loancardcode= document.getElementById("loancardcode").value;
		var obj = new Object();
		window.showModalDialog("includeNormal.do?loancardcode="+loancardcode+"&reportcode="+reportCode+"&kindType=3"+"&source=1"+"&toporg="+arg,obj,"dialogWidth=800px;dialogHeight=600px");
		var  url2 =("recordExpand.do?loancardno="+loancardcode
					+"&searchreasoncode="+searchreasoncode+"&editiontype="+editiontype+"&creditCode="+creditCode+"&kind=7");
		xmlHttp=AjaxGetXmlHttpObject();			
		xmlHttp.open("POST",url2,true);
		xmlHttp.onreadystatechange=ajaxStateChanged;
		xmlHttp.send(null);
		return;
	}
	//δ���������жһ�Ʊ��ϸ
	function showPostalDetail(arg){
		var searchreason = document.getElementById("searchReason").value;
		var searchreasoncode = document.getElementById("searchReasonCode").value;
		var editiontype = document.getElementById("reportcode").value;
		var creditcode = document.getElementById("creditcode").value;
		var reportCode = document.getElementById("reportcode").value;
		var loancardcode= document.getElementById("loancardcode").value;
		var obj = new Object();
		window.showModalDialog("includeNormal.do?loancardcode="+loancardcode+"&reportcode="+reportCode+"&kindType=7"+"&source=1"+"&toporg="+arg,obj,"dialogWidth=800px;dialogHeight=600px");
		var  url2 =("recordExpand.do?loancardno="+loancardcode
					+"&searchreasoncode="+searchreasoncode+"&editiontype="+editiontype+"&creditCode="+creditCode+"&kind=7");
		xmlHttp=AjaxGetXmlHttpObject();
		xmlHttp.open("POST",url2,true);
		xmlHttp.onreadystatechange=ajaxStateChanged;
		xmlHttp.send(null);
		return;
	}
	//δ������������֤��ϸ
	function showLetterDetail(arg){
		var searchreason = document.getElementById("searchReason").value;
		var searchreasoncode = document.getElementById("searchReasonCode").value;
		var editiontype = document.getElementById("reportcode").value;
		var creditcode = document.getElementById("creditcode").value;
		var reportCode = document.getElementById("reportcode").value;
		var loancardcode= document.getElementById("loancardcode").value;
		var obj = new Object();
		
		window.showModalDialog("includeNormal.do?loancardcode="+loancardcode+"&reportcode="+reportCode+"&kindType=5"+"&source=1"+"&toporg="+arg,obj,"dialogWidth=800px;dialogHeight=600px");
		var  url2 =("recordExpand.do?loancardno="+loancardcode
					+"&searchreasoncode="+searchreasoncode+"&editiontype="+editiontype+"&creditCode="+creditCode+"&kind=7");
		xmlHttp=AjaxGetXmlHttpObject();			
		xmlHttp.open("POST",url2,true);
		xmlHttp.onreadystatechange=ajaxStateChanged;
		xmlHttp.send(null);
		return;
	}
	//δ��������������ϸ
	function showGuaranteeletterDetail(arg){
		var searchreason = document.getElementById("searchReason").value;
		var searchreasoncode = document.getElementById("searchReasonCode").value;
		var editiontype = document.getElementById("reportcode").value;
		var creditcode = document.getElementById("creditcode").value;
		var reportCode = document.getElementById("reportcode").value;
		var loancardcode= document.getElementById("loancardcode").value;
		var obj = new Object();
		
		window.showModalDialog("includeNormal.do?loancardcode="+loancardcode+"&reportcode="+reportCode+"&kindType=6"+"&source=1"+"&toporg="+arg,obj,"dialogWidth=800px;dialogHeight=600px");
		var  url2 =("recordExpand.do?loancardno="+loancardcode
					+"&searchreasoncode="+searchreasoncode+"&editiontype="+editiontype+"&creditCode="+creditCode+"&kind=7");
		xmlHttp=AjaxGetXmlHttpObject();			
		xmlHttp.open("POST",url2,true);
		xmlHttp.onreadystatechange=ajaxStateChanged;
		xmlHttp.send(null);
		return;
	}
	//�鿴���
	function showPackInfoWindow(loancardno,type,operationcode,loankindcode,financecode){
		var url="showAllHistory.do?loancardno="+loancardno+"&type="+type+"&id="+operationcode+"&loankindcode="+loankindcode+"&financecode="+financecode;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","Width=800px;Height=600px,top=100px,left=200px,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=no,directories=no");
	}

	//�鿴��ʷ��Ϣ
	function showHis(loancardno,financecode,loancontractcode,type,id,loankindcode){
		var searchreason = document.getElementById("searchReason").value;
		var searchreasoncode = document.getElementById("searchReasonCode").value;
		var editiontype = document.getElementById("reportcode").value;
		var creditcode = document.getElementById("creditcode").value;
		var reportCode = document.getElementById("reportcode").value;
		var loancardcode= document.getElementById("loancardcode").value;
		var url="showAllHistory.do?loancardno="+loancardno+"&blockcode=ASSUREEINFO_00&loankindcode="+loankindcode+"&financecode="+financecode+"&loancontractcode="+loancontractcode+"&type="+type+"&id="+id+"&searchreason="+searchreason+"&searchreasoncode="+searchreasoncode+"&editiontype="+editiontype+"&creditcode="+creditcode;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","Width=800px;Height=600px,top=100px,left=200px,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=no,directories=no");
	}
	function showWindows(loancardno,financecode,loancontractcode,type,id,loankindcode){
		var url="showAllHistory.do?loancardno="+loancardno+"&blockcode=ASSUREEINFO_00&loankind="+loankindcode+"&financecode="+financecode+"&loancontractcode="+loancontractcode+"&type="+type+"&id="+id+"&loankindcode="+loankindcode;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","Width=800px;Height=600px,top=100px,left=200px,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=no,directories=no");
	}
	function showGuaWindow(loancardno,type,loancontractcode,toporg,kind){
		var url="showAllHistory.do?loancardno="+loancardno+"&type="+type+"&id="+loancontractcode+"&toporg="+toporg+"&kind="+kind;
	//	window.showModalDialog(url,"","dialogWidth=800px;dialogHeight=600px");
		window.open(url,"","Width=800px;Height=600px,top=100px,left=200px,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=no,directories=no");
	}
	function showReport(type,code,codeType){
		var loancardcode= document.getElementById("loancardcode").value;
		var searchreason = document.getElementById("searchReason").value;
		var searchreasoncode = document.getElementById("searchReasonCode").value;
		var editiontype = document.getElementById("reportcode").value;
		var creditcode = document.getElementById("creditcode").value;
		var reportCode = document.getElementById("reportcode").value;
		var reqid = document.getElementById("reqid").value;
		if(confirm2("���ڲ�ѯǰȷ���ѵõ���Ϣ�������Ȩ����Ҫ������ѯ��")){
			var url = "professionAagainQuery.do?type="+type+"&code="+code+"&codeType="+codeType+"&loancardcode_s="+loancardcode+"&reqid="+reqid;
			window.open(url,"","top=100,left=100,width=800,height=400,scrollbars=yes,toolbar=no,location=no,menubar=no,status=no,resizable=yes,directories=no");
		}else{
			return;
		}
	}
	
	

	// �鿴�Ŵ���������ϸ
	function showNormal(loancard,editiontyp,kindcode){
		var obj = new Object();
		window.showModalDialog("includeNormal.do?loancardcode="+loancard+"&reportcode="+editiontyp+"&kindType="+kindcode+"&source=3",obj,"dialogWidth=800px;dialogHeight=600px");
	}
	
function AjaxGetXmlHttpObject(){
	  var xmlHttp=null;
	  try{
	    xmlHttp=new XMLHttpRequest();
	  }catch (e){
		  try{
		     xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		  }catch (e){
		     xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
	  }
	  return xmlHttp;
	}
	function ajaxStateChanged(){
		if (xmlHttp.readyState == 4){
			if (xmlHttp.status == 200) { 
				return;
			}
		}
	}
	