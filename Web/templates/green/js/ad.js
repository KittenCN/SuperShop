<script type="text/javascript"> 
var bodyfrm = ( document.compatMode.toLowerCase()=="css1compat" ) ? document.documentElement : document.body; 
var adst = document.getElementById("commerce").style; 
adst.top = ( bodyfrm.clientHeight -530-22 ) + "px"; 
//adst.left = ( bodyfrm.clientWidth -155) + "px"; 
function moveR() 
{ 
adst.top = ( bodyfrm.scrollTop + bodyfrm.clientHeight - 530-22) + "px"; 
//adst.left = ( bodyfrm.scrollLeft + bodyfrm.clientWidth - 155 ) + "px"; 
} 
setInterval("moveR();", 80); 
function closead() 
{ 
adst.display='none'; 
} 
</script>