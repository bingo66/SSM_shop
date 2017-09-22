// 定义一个函数用以显示当前时间
   function displayTime() {
    var elt = document.getElementById("clock"); // 通过id= "clock"找到元素
    var today = new Date(); // 得到当前时间
    var weekday=["周一","周二","周三","周四","周五","周六","周日"];
    var year=today.getFullYear();
    var month=today.getMonth()+1;
    var date=today.getDate();
    var day=weekday[today.getDay()];
    elt.innerHTML = year+"/"+month+"/"+date+" "+day+" "+today.toLocaleTimeString(); //让elt来显示它
    setTimeout(displayTime,1000); //在1秒后再次执行
   }
   window.onload = displayTime; //当onload事件发生时开始显示时间