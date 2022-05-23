<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.MapVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.MapDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
#mapwrap{position:relative;overflow:hidden;}
.category, .category *{margin:0;padding:0;color:#000;background:pink;}   
.category {position:absolute;overflow:hidden;top:10px;left:10px;width:50px;height:50px;z-index:10;border:1px solid black;font-family:'Malgun Gothic','맑은 고딕',sans-serif;font-size:12px;text-align:center;background-color:#fff;}
.category .menu_selected {background:#FF5F4A;color:#fff;border-left:1px solid #915B2F;border-right:1px solid #915B2F;margin:0 -1px;} 
.category li{list-style:none;float:left;width:50px;height:45px;padding-top:5px;cursor:pointer;} 
.category .ico_comm {display:block;margin:0 auto 2px;width:22px;height:26px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png') no-repeat;} 
.category .pic1{display:block;margin:0 auto 2px;width:22px;height:26px;}
.category .pic1{display:block;margin:0 auto 2px;width:22px;height:26px;} 
.category .ico_carpark {background-position:-10px -72px;} 
</style>
</head>
<body>
   <div id="map" style="width:100%;height:100vh;"></div> 
   <form>
       <div class="category">
        <ul>
 <!--            <li id="flower" onclick="changeMarker('flower')">
                 <span><img src ="https://cdn2.iconfinder.com/data/icons/gardening-caramel-vol-1/256/CALENDULA-512.png" class="pic1"></span>
                전국 꽃~
            </li>
            <li id="carnival" onclick="changeMarker('carnival')">
                <span><img src ="https://cdn4.iconfinder.com/data/icons/carnival-and-amusement-flat-colors/64/confetti-256.png" class="pic1"></span>
                축제지도
            </li>
            <li id="month1" onclick="changeMarker('month1')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/gardening-caramel-vol-1/256/DANDELION-256.png" class="pic1"></span>
                1월
            </li>
            <li id="month2" onclick="changeMarker('month2')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/season-7/340/spring_flower_season_blossom_floral_bloom_fresh-128.png" class="pic1"></span>
                2월
            </li>
            <li id="month3" onclick="changeMarker('month3')">
                <span><img src ="https://cdn4.iconfinder.com/data/icons/sakura-festival-2/512/Sakura-spring-japanese-03-512.png" class="pic1"></span>
                3월
            </li>
            <li id="month4" onclick="changeMarker('month4')">
                <span><img src ="https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_velocity-256.png" class="pic1"></span>
                4월
            </li> -->
            <li id="month5" onclick="changeMarker('month5')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/hokkaido-color-line/48/hokkaido_pixel_perfect_color_line_icons_5-lavender-256.png" class="pic1"></span>
                5월
            </li>
  <!--           <li id="month6" onclick="changeMarker('month6')">
                <span><img src ="https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_hr-256.png" class="pic1"></span>
                6월
            </li>
            <li id="month7" onclick="changeMarker('month7')">
                <span><img src ="https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_postit-512.png" class="pic1"></span>
                7월
            </li>
            <li id="month8" onclick="changeMarker('month8')">
                <span><img src ="https://cdn0.iconfinder.com/data/icons/flowers-8/500/Flower_standup_meeting-256.png" class="pic1"></span>
                8월
            </li>
            <li id="month9" onclick="changeMarker('month9')">
                <span><img src ="https://cdn0.iconfinder.com/data/icons/easter-2126/496/27.-flower-256.png" class="pic1"></span>
                9월
            </li>
            <li id="monthA" onclick="changeMarker('monthA')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/gardening-caramel-vol-1/256/CARNATION-256.png" class="pic1"></span>
                10~11월
            </li>
<!--             <li id="month11" onclick="changeMarker('month11')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/valentine-day-16/512/540_love_flower_wedding_heart_valentine_valentines_day_love-256.png" class="pic1"></span>
                11월
            </li>
            <li id="monthB" onclick="changeMarker('monthB')">
                <span><img src ="https://cdn2.iconfinder.com/data/icons/valentine-day-16/512/540_love_flower_wedding_heart_valentine_valentines_day_love-256.png" class="pic1"></span>
                12월
            </li>-->
        </ul>
    </div>
    </form>
    
   <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3e98ea6bbf35f78f0fe5bed829537d85&libraries=clusterer"></script>
   <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = {
              center: new kakao.maps.LatLng(36.36588486441299, 127.38796189978896), // 지도의 중심좌표
              level: 13, // 지도의 확대 레벨
              mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
          }; 

      
      
      //지도 관련 부분★   
      
      // 지도를 생성한다 
      var map = new kakao.maps.Map(mapContainer, mapOption); 
        // 마커 클러스터러를 생성합니다 
        var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
        minLevel: 10 // 클러스터 할 최소 지도 레벨 
        });
        //데이터 마커 이미지
        var imageSrc = 'https://cdn4.iconfinder.com/data/icons/spring-6/128/yumminky-spring-color-24-256.png', // 마커이미지의 주소입니다    
        imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다
        
        //축제 마커 이미지 만들기
        var imageSrc0 = 'https://cdn4.iconfinder.com/data/icons/circus-25/64/entrance-entertainment-festival-carnival-circus-128.png', // 마커이미지의 주소입니다    
        imageSize0 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption0 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage0 = new kakao.maps.MarkerImage(imageSrc0, imageSize0, imageOption0),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다
        
        
      //5월 마커 이미지 만들기
        var imageSrc5 = 'https://cdn2.iconfinder.com/data/icons/hokkaido-color-line/48/hokkaido_pixel_perfect_color_line_icons_5-lavender-256.png', // 마커이미지의 주소입니다    
        imageSize5 = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption5 = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage5 = new kakao.maps.MarkerImage(imageSrc5, imageSize5, imageOption5),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다      
        
    
              
        //DB에서 데이터 가져오기 ~ ★      
              
        <%
        MapDAO dao = new MapDAO();
        List<MapVO> MapList = dao.Allmap();
        List<MapVO> carnivalList = dao.Carnivalmap();
       
        List<MapVO> month5 = dao.month5();
     
        pageContext.setAttribute("MapList",MapList);
        %>
        
      console.log('<%=MapList.get(0).getWi()%>')
      console.log('<%=MapList.get(0).getGy()%>')
      
      
      var 데이터 = []
      var 데이터markers = []// 데이터 마커들을 담아줄 변수      나중에 삭제 시에도 필요함
      var chkflag = true;
      console.log(<%=MapList.size()%>)
      <%for(int i =0 ; i<MapList.size();i++){ %>
         데이터.push([<%=MapList.get(i).getWi()%>, <%=MapList.get(i).getGy()%>, '<div style="padding:5px;"><%=MapList.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=MapList.get(i).getFlower()%></a></div>'])
      <%}%>
      var 축제 = []
      var 축제markers = []
      var chkflag0 = true;
      <%for(int i =0 ; i<carnivalList.size();i++){ %>
      축제.push([<%=carnivalList.get(i).getWi()%>, <%=carnivalList.get(i).getGy()%>, '<div style="padding:5px;"><%=carnivalList.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=carnivalList.get(i).getFlower()%></a></div>'])
      <%}%>
    
      var 오월 = []
      var 오월markers = []
      var chkflag5 = true;
      <%for(int i =0 ; i<month5.size();i++){ %>
      오월.push([<%=month5.get(i).getWi()%>, <%=month5.get(i).getGy()%>, '<div style="padding:5px;"><%=month5.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank"><%=month5.get(i).getFlower()%></a></div>','<%=month5.get(i).getName()%>'])
      <%}%>
     
      
        
      var markers = []
        // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
        var zoomControl = new kakao.maps.ZoomControl();
        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);


        
        
        
        
        // ★마커생성 부분
function createMarkers() {
        for (var i=0; i<데이터.length; i++){
                  // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(데이터[i][0], 데이터[i][1]), // 마커의 좌표
          image: markerImage // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);



        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 데이터[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        데이터markers.push(marker)


        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
        });
        
        }//반복문 끝 ~
        }
        
        
function createMarkers1() {
        // 축제 마커 만들기 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
        for (var i=0; i<축제.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(축제[i][0], 축제[i][1]), // 마커의 좌표
          image: markerImage0 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);



        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 축제[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        축제markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
           location.href = 'http://map.daum.net';
        });
        
        }
      }//반복문 끝 ~
        //축제 마커 끝 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
        
        //1월 꽃정보
   
    //5월 꽃정보
    function createmonth5() {
        for (var i=0; i<오월.length; i++){
         // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(오월[i][0], 오월[i][1]), // 마커의 좌표
          image: markerImage5 // 마커이미지 설정
         });
        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        
        var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

        // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : iwPosition, 
            content : 오월[i][2]
        });
        
        // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        // infowindow.open(map, marker);
        오월markers.push(marker)

        // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
        // 이벤트 리스너로는 클로저를 만들어 등록합니다 
        // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
        
        kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
        
        //마커 클릭시 1식 확대됨
        kakao.maps.event.addListener(marker, 'click', function() {
        var level = map.getLevel() - 1;
        map.setLevel(level, {anchor: this.getPosition()});
        });
        
        let a = 'https://map.kakao.com/link/map/'+오월[i][3]+','+오월[i][0]+','+오월[i][1];
        //오른쪽 클릭시 이동 
        kakao.maps.event.addListener(marker, 'rightclick', function() {
        	window.open(a);
        //   location.href = a;
           });
          }
      }        
   
        
        
        //★ 기능 추가 부분
        
        // 클러스터러에 마커들을 추가합니다
        //clusterer.addMarkers(markers);
        
        // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
       function makeOverListener(map, marker, infowindow) {
          return function() {
              infowindow.open(map, marker);
          };
      }
      // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
      function makeOutListener(infowindow) {
         return function() {
            infowindow.close();
         };
      }
      
      createmonth5(map);
      function changeMarker(type){
          
          var flower = document.getElementById('flower');
          var carnival = document.getElementById('carnival');
        
          var month5 = document.getElementById('month5');
          
          
        
       // 커피숍 카테고리가 클릭됐을 때
       if (type === 'flower') {
       
          if(chkflag === true){
             flower.className = 'menu_selected';
             createMarkers(map);
              chkflag = false;
          }else if(chkflag === false){
              for (var i=0; i<데이터markers.length; i++){
             데이터markers[i].setMap(null);
             flower.className = '';
             console.log("test")
             chkflag = true;
              }
          }
          
       } else if (type === 'carnival') { // 편의점 카테고리가 클릭됐을 때
       
          if(chkflag0 === true){
             carnival.className = 'menu_selected';
             createMarkers1(map);
              chkflag0 = false;
          }else if(chkflag0 === false){
              for (var i=0; i<축제markers.length; i++){
             축제markers[i].setMap(null);
             carnival.className = '';
             console.log("test")
             chkflag0 = true;
              }
          }else if (type === 'month5') { //5월 카테고리가 클릭됐을 때
             
             if(chkflag5 === true){
                 month5.className = 'menu_selected';
                 createmonth5(map);
                 chkflag5 = false;
             }else if(chkflag5 === false){
                 for (var i=0; i<오월markers.length; i++){
                오월markers[i].setMap(null);
                month5.className = '';
                console.log("test")
                chkflag5 = true;
                }
             }
          }
          } 
       
       
      }//마커표시함수 끝
   </script>


</body>
</html>