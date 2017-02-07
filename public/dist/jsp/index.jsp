<include src="./inc/header.html"></include>
<link rel="stylesheet" type='text/css' href="/resources/css/main.css" />
<script type="text/javascript">
$(function(){
    document.addEventListener("touchmove", function(event){
        event.preventDefault();
    });

    var current = 0;
    $(".visual-section").swipe({
        swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
            if(direction == 'up'){
                if(current < 5) current++;
            } else if(direction == 'down') {
                if(current > 0) current--;
            }

            var posArr = [0, '95%', '80%', '60%', '52%', '85%'];

            $(".visual-section").stop().animate({top:-1 * 65 * current}, {duration:300})
            $('.visual-section ul li').each(function(i, tg){
                $(this).stop().animate({height:63.5, 'background-position-y':posArr[i]}, {duration:300});
            });
            $('.visual-section ul li').eq(current).stop().animate({height:397, 'background-position-y':0}, {duration:300});
            $('.visual-section ul li .dimd').stop().animate({opacity:0.4}, {duration:300});
            $('.visual-section ul li').eq(current).find('.dimd').stop().animate({opacity:0}, {duration:300});

            $('.visual-section ul li .cont-on').stop().fadeOut(300);
            $('.visual-section ul li .cont-off').stop().fadeIn(0);
            $('.visual-section ul li').eq(current).find('.cont-on').stop().fadeIn(300);
            $('.visual-section ul li').eq(current).find('.cont-off').stop().fadeOut(0);
        },
        threshold:0
    });
});
</script>
<section id="contents" class="main">
    <div class="visual-section">
        <ul>
            <li class="visual01">
                <p class="dimd"></p>
                <div class="cont">
                    <div class="copy">
                        <p>미래를 향한</p>
                        <p>배움의 꿈을</p>
                        <p>지원합니다</p>
                    </div>
                </div>
                <div class="cont-off">
                    <p></p>
                </div>
            </li>
            <li class="visual02">
                <p class="dimd"></p>
                <div class="cont-on">
                    <div class="copy">
                        <h2>장학사업</h2>
                        <p>배움의 꿈을 지원합니다</p>
                        <a class="link" href="#"><img src="/resources/img/main/ico_link.png" /></a>
                    </div>
                    <div class="buttons">
                        <a href="#">
                            <span class="bg"></span>
                            <span class="text ss-navigateright"><i class="ico"></i>국내장학생</span>
                        </a>
                        <a href="#">
                            <span class="bg"></span>
                            <span class="text ss-navigateright"><i class="ico"></i>국외장학생</span>
                        </a>
                    </div>
                </div>
                <div class="cont-off">
                    <h2>장학사업</h2>
                </div>
            </li>
            <li class="visual03">
                <p class="dimd"></p>
                <div class="cont-on">
                    <div class="copy">
                        <h2>공모전</h2>
                        <p>학술 교육 문화 발전에 기여합니다</p>
                        <a class="link" href="#"><img src="/resources/img/main/ico_link.png" /></a>
                    </div>
                    <div class="buttons">
                        <a href="#">
                            <span class="bg"></span>
                            <span class="text ss-navigateright"><i class="ico"></i>동부 금융제안 공모전</span>
                        </a>
                        <a href="#">
                            <span class="bg"></span>
                            <span class="text ss-navigateright"><i class="ico"></i>동부 글로벌 전자공모전</span>
                        </a>
                        <a href="#">
                            <span class="bg"></span>
                            <span class="text ss-navigateright"><i class="ico"></i>동부 GAPS투자대회</span>
                        </a>
                    </div>
                </div>
                <div class="cont-off">
                    <h2>공모전</h2>
                </div>
            </li>
            <li class="visual04">
                <p class="dimd"></p>
                <div class="cont-on">
                    <div class="copy">
                        <h2>장학행사</h2>
                        <p>배움의 기회를 제공합니다</p>
                        <a class="link" href="#"><img src="/resources/img/main/ico_link.png" /></a>
                    </div>
                    <div class="buttons">
                        <a href="#">
                            <span class="bg"></span>
                            <span class="text ss-navigateright"><i class="ico"></i>장학생캠프</span>
                        </a>
                        <a href="#">
                            <span class="bg"></span>
                            <span class="text ss-navigateright"><i class="ico"></i>기업경영 체험캠프</span>
                        </a>
                    </div>
                </div>
                <div class="cont-off">
                    <h2>장학행사</h2>
                </div>
            </li>
            <li class="visual05">
                <p class="dimd"></p>
                <div class="cont-on">
                    <div class="copy">
                        <h2>사회공헌</h2>
                        <p>따뜻한 세상을 만들어갑니다</p>
                        <a class="link" href="#"><img src="/resources/img/main/ico_link.png" /></a>
                    </div>
                </div>
                <div class="cont-off">
                    <h2>사회공헌</h2>
                </div>
            </li>
            <li class="visual06">
                <p class="dimd"></p>
                <div class="cont-on">
                    <div class="copy">
                        <h2>재단창립자</h2>
                        <p>동부 김준기 회장을 소개합니다</p>
                        <a class="link" href="#"><img src="/resources/img/main/ico_link.png" /></a>
                    </div>
                    <div class="ceo-message">
                        <p class="message"><span class="import">기회</span>는 꿈과 이상을 가지고<br /><span class="import">그 실현을 준비하는 자</span> 와<br />함께 합니다.</p>
                        <div class="ceo">
                            <p class="date">2001년 1월</p>
                            <p class="name">동부 김준기 회장</p>
                        </div>
                    </div>
                </div>
                <div class="cont-off">
                    <h2>CEO</h2>
                </div>
            </li>
        </ul>
    </div>
</section>
<include src="./inc/footer.html"></include>
