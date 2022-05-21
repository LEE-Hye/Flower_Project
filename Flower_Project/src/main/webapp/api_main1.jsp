<%@page import="com.smhrd.domain.MapDAO2"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.domain.MapVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
   <div id="map" style="width:100%;height:100vh;"></div>

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
        
        var imageSrc = 'https://cdn4.iconfinder.com/data/icons/spring-6/128/yumminky-spring-color-24-256.png', // 마커이미지의 주소입니다    
        imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
        imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
        markerPosition = new kakao.maps.LatLng(37.54699, 127.09598); // 마커가 표시될 위치입니다
        // 마커 포지션은 이미 있으니까 필요없자나?
        
              
              
              
              
              
        //DB에서 데이터 가져오기 ~ ★      
              
        <%
        MapDAO2 dao2 = new MapDAO2();
        List<MapVO> MapList2 = dao2.Allmap();
        pageContext.setAttribute("MapList2",MapList2);
        %>
        
      console.log('<%=MapList2.get(0).getWi()%>')
      console.log('<%=MapList2.get(0).getGy()%>')
        console.log('<%=MapList2.size()%>')
        var a = 0;
      var 데이터 = []
      console.log(<%=MapList2.size()%>)
      <%for(int i =0 ; i<MapList2.size();i++){ %>
         데이터.push([<%=MapList2.get(i).getWi()%>, <%=MapList2.get(i).getGy()%>, '<div style="padding:5px;"><%=MapList2.get(i).getName()%><br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>'])
      <%}%>
      
        
      
        var markers = []
        // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
        var zoomControl = new kakao.maps.ZoomControl();
        map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);


        
        
        
        
        
        
        
        // ★마커생성 부분

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
        markers.push(marker)


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
            //오른쪽 클릭시 이동 
            kakao.maps.event.addListener(marker, 'rightclick', function() {
               location.href = 'http://map.daum.net';
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
   </script>


</body>
</html>