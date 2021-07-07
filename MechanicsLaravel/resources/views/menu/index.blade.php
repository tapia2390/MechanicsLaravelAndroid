<html>
  <head>

  <style>
  
  @import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);
}
@import url(https://fonts.googleapis.com/css?family=Titillium+Web:300);
.fa-2x {
font-size: 2em;
}
.fa {
position: relative;
display: table-cell;
width: 60px;
height: 36px;
text-align: center;
vertical-align: middle;
font-size:20px;
}


.main-menu:hover,nav.main-menu.expanded {
width:250px;
overflow:visible;
}

.main-menu {
background:#212121;
border-right:1px solid #e5e5e5;
position:absolute;
top:0;
bottom:0;
height:100%;
left:0;
width:60px;
overflow:hidden;
-webkit-transition:width .05s linear;
transition:width .05s linear;
-webkit-transform:translateZ(0) scale(1,1);
z-index:1000;
}

.main-menu>ul {
margin:7px 0;
}

.main-menu li {
position:relative;
display:block;
width:250px;
}

.main-menu li>a {
position:relative;
display:table;
border-collapse:collapse;
border-spacing:0;
color:#999;
 font-family: arial;
font-size: 14px;
text-decoration:none;
-webkit-transform:translateZ(0) scale(1,1);
-webkit-transition:all .1s linear;
transition:all .1s linear;
  
}

.main-menu .nav-icon {
position:relative;
display:table-cell;
width:60px;
height:36px;
text-align:center;
vertical-align:middle;
font-size:18px;
}

.main-menu .nav-text {
position:relative;
display:table-cell;
vertical-align:middle;
width:190px;
  font-family: 'Titillium Web', sans-serif;
}

.main-menu>ul.logout {
position:absolute;
left:0;
bottom:0;
}

.no-touch .scrollable.hover {
overflow-y:hidden;
}

.no-touch .scrollable.hover:hover {
overflow-y:auto;
overflow:visible;
}

a:hover,a:focus {
text-decoration:none;
}

nav {
-webkit-user-select:none;
-moz-user-select:none;
-ms-user-select:none;
-o-user-select:none;
user-select:none;
}

nav ul,nav li {
outline:0;
margin:0;
padding:0;
}
.main-menu li:hover>a,nav.main-menu li.active>a,.dropdown-menu>li>a:hover,.dropdown-menu>li>a:focus,.dropdown-menu>.active>a,.dropdown-menu>.active>a:hover,.dropdown-menu>.active>a:focus,.no-touch .dashboard-page nav.dashboard-menu ul li:hover a,.dashboard-page nav.dashboard-menu ul li.active a {
color:#fff;
background-color:#5fa2db;
}
.area {
    margin:auto;
background: #fff;
width: 100%;

height: 100%;
}
@font-face {
  font-family: 'Titillium Web';
  font-style: normal;
  font-weight: 300;
  src: local('Titillium WebLight'), local('TitilliumWeb-Light'), url(http://themes.googleusercontent.com/static/fonts/titilliumweb/v2/anMUvcNT0H1YN4FII8wpr24bNCNEoFTpS2BTjF6FB5E.woff) format('woff');
}

body{
    margin:0;
padding:0;  
}
  
  </style>
 
  </head>
  <body>
  <div class="area">

  <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    
    <script type="text/javascript">




        var markers = [
    {
        "title": 'Aksa Beach',
        "lat": '19.1759668',
        "lng": '72.79504659999998',
        "description": 'Aksa Beach is a popular beach and a vacation spot in Aksa village at Malad, Mumbai.'
    },
    {
        "title": 'Juhu Beach',
        "lat": '19.0883595',
        "lng": '72.82652380000002',
        "description": 'Juhu Beach is one of favourite tourist attractions situated in Mumbai.'
    },
    {
        "title": 'Girgaum Beach',
        "lat": '18.9542149',
        "lng": '72.81203529999993',
        "description": 'Girgaum Beach commonly known as just Chaupati is one of the most famous public beaches in Mumbai.'
    },
    {
        "title": 'Jijamata Udyan',
        "lat": '18.979006',
        "lng": '72.83388300000001',
        "description": 'Jijamata Udyan is situated near Byculla station is famous as Mumbai (Bombay) Zoo.'
    },
    {
        "title": 'Sanjay Gandhi National Park',
        "lat": '19.2147067',
        "lng": '72.91062020000004',
        "description": 'Sanjay Gandhi National Park is a large protected area in the northern part of Mumbai city.'
    }
    ];
        window.onload = function () {
            LoadMap();
        }
        function LoadMap() {


            $.getJSON( "http://10.0.0.8:8000/api/mechanics", function( json ) {
                var content  = JSON.parse(JSON.stringify(json));
    //console.log(content[0])


    var mapOptions = {
                center: new google.maps.LatLng( parseFloat(content[0].latitude),  parseFloat(content[0].longitude)),
                zoom:15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var latlngbounds = new google.maps.LatLngBounds();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);

    for (let x in content) {
  
  console.log(content[x].latitude+ "" + content[x].longitude);

  //var data = content[i]
                var myLatlng = new google.maps.LatLng( parseFloat(content[x].latitude),  parseFloat(content[x].longitude));
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: content[x].name
                });
                (function (marker, content) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        console.log("Tel: " +content.phone);
                        infoWindow.setContent("<div style = 'width:200px;min-height:40px'> <p> Name: " + content.name + " "+content.surname+"</p> <p>Email: " + content.email + "</p> <p>Phone: " + content.phone + "</p></div>");
                        infoWindow.open(map, marker);
                    });
                })(marker, content[x]);
                latlngbounds.extend(marker.position);
}
            
 });

        }
    </script>
    <div id="dvMap" style="width: 100%; height: 100%">
    </div>
    <script async
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJppjTdU4P2t9qs-tW-VCdd6GJcJqr-NA">
</script>
  </div>
  
  
  <nav class="main-menu">
            <ul>
                <li>
                    <a href="#">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">
                            Dashboard
                        </span>
                    </a>
                  
                </li>
                <li class="has-subnav">
                    <a href="#">
                    <i class="fas fa-user-ninja  fa-2x"></i>
                        <span class="nav-text">
                            Profile
                        </span>
                    </a>
                    
                </li>
               
            </ul>

            <ul class="logout">
                <li>
                   <a href="#">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                            Logout
                        </span>
                    </a>
                </li>  
            </ul>
        </nav>
  </body>
    </html>