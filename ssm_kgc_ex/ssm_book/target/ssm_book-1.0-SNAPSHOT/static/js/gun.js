window.onload = function(){
            var oDiv = document.getElementById('fhxk_div1');
            var oUl = document.getElementById('fhxk_ul1');
            var speed = 2;//初始化速度

            oUl.innerHTML += oUl.innerHTML;//图片内容*2-----参考图（2）
            var oLi= document.getElementsByTagName('li');
            oUl.style.width = oLi.length*160+'px';//设置ul的宽度使图片可以放下
            function move(){
                if(oUl.offsetLeft<-(oUl.offsetWidth/2)){//向左滚动，当靠左的图4移出边框时
                    oUl.style.left = 0;
                }

                if(oUl.offsetLeft > 0){//向右滚动，当靠右的图1移出边框时
                    oUl.style.left = -(oUl.offsetWidth/2)+'px';
                }

                oUl.style.left = oUl.offsetLeft + speed + 'px';
            }

            var timer = setInterval(move,30);//全局变量 ，保存返回的定时器

            oDiv.addEventListener('mouseout', function () {
                timer = setInterval(move,30);
            },false);
            oDiv.addEventListener('mousemove', function () {
               clearInterval(timer);//鼠标移入清除定时器
            },false);
        }