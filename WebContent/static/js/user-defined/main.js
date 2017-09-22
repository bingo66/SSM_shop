//打开新窗口
// function agreement(){
// 	window.open('agreement.html','newwindow','height=400,width=600,top=40%,left=40%,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no'); 
// }

window.onload=function(){
	var submit=document.getElementById('submit');
	submit.click=function(){
		if(!document.getElementById('autologin').checked){
			alert("请先确认注册条款！");
		}
	};
};
 


function login(){
	window.open('login.html','newwindow','height=400,width=600,top=40%,left=40%,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no'); 
}

