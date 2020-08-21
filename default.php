<!DOCTYPE html>
<html>
<head>
<link href='css/fullcalendar.css' rel='stylesheet' />
<script src='js/jquery-1.9.1.min.js'></script>
<script src='js/jquery-ui-1.10.2.custom.min.js'></script>
<script src='js/fullcalendar.min.js'></script>
<script>

	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
		var calendar = $('#calendar').fullCalendar({
			editable: true,
			events:"events.php",
			selectable: true,
			selectHelper: true,
			select: function(start, end, allDay) {
			   var title = prompt('Etkinlik Adını Giriniz:');

			 if (title) {
			     start = $.fullCalendar.formatDate(start, "yyyy-MM-dd HH:mm:ss");
			     end = $.fullCalendar.formatDate(end, "yyyy-MM-dd HH:mm:ss");
			
             $.ajax({
			     url: 'add_events.php',
			     data: 'title='+ title+'&start='+ start +'&end='+ end ,
			     type: "POST",
			     success: function(json) {
			     alert('Etkinlik Girme Başarılı');
			     }
			 });
			
             calendar.fullCalendar('renderEvent',
			 {
                title: title,
                start: start,
                end: end,
                allDay: allDay
			 },
		    	 true // make the event "stick"
			 );
			 }
		    	 calendar.fullCalendar('unselect');
			},
		
                editable: true,
                eventDrop: function(event, delta) {
                start = $.fullCalendar.formatDate(event.start, "yyyy-MM-dd HH:mm:ss");
                end = $.fullCalendar.formatDate(event.end, "yyyy-MM-dd HH:mm:ss");
		
        
        	 $.ajax({
                url: 'update_events.php',
                data: 'title='+ event.title+'&start='+ start +'&end='+ end +'&id='+ event.id ,
                type: "POST",
			     success: function(json) {
			     alert("Düzenlendi");
			     }
			 });
			},
			eventResize: function(event) {
			 start = $.fullCalendar.formatDate(event.start, "yyyy-MM-dd HH:mm:ss");
			 end = $.fullCalendar.formatDate(event.end, "yyyy-MM-dd HH:mm:ss");
			 
                $.ajax({
                    url: 'update_events.php',
                    data: 'title='+ event.title+'&start='+ start +'&end='+ end +'&id='+ event.id ,
                type: "POST",
                    success: function(json) {
                    alert("Tamamdır.");
                }
			 });

			}
			
		});
		
	});

</script>
<style>

	body {
		margin-top: 40px;
		text-align: center;
		font-size: 14px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		}

	#calendar {
		width: 900px;
		margin: 0 auto;
		}

</style>
</head>
<body>
<div id='calendar'></div>
</body>
</html>