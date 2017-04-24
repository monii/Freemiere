<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>TimeSlider Demo</title>
	<meta name="description" content="TimeSlider Plugin for jQuery">
	<meta name="keywords" content="timeslider, time-slider, time slider, rangeslider, range-slider, range slider, jquery, javascript">
	<link rel="stylesheet" href="resources/vendor/jquery/jquery-ui/jquery-ui.css">
	<link href="resources/vendor/timeSlider/css/timeslider.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<h3 id="version"></h3>
	<div style="margin: 50px 30px;">
		<p>With standard options</p>
		<p>Zoom 1...48 hours:</p>
        <div id="zoom-slider123" style="width:300px;margin-bottom:10px;"></div>
		<div id="slider123" class="time-slider"></div>
	</div>
	<div style="margin: 50px 30px;">
		<p>Using milliseconds</p>
		<p>Zoom 1...48 hours:</p>
        <div id="zoom-slider456" style="width:300px;margin-bottom:10px;"></div>
		<div id="slider456" class="time-slider" style="width: 65%"></div>
	</div>
	<p id="messages"></p>
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/jquery/jquery-ui/jquery-ui.js"></script>
	<script src="resources/vendor/timeSlider/js/timeslider.js"></script>
	<script type="text/javascript">
        var current_time = (new Date()).getTime() + ((new Date()).getTimezoneOffset() * 60 * 1000 * -1);
		$(document).ready(function () {
			(function () {
				$('#version').text('Version: '+ $.fn.TimeSlider.VERSION);
				$('#zoom-slider123').slider({
					min: 1,
					max: 48,
					value: 24,
					step: 0.2,
					slide: function(event, ui) {
						$('#slider123').TimeSlider({hours_per_ruler: ui.value});
					}
				});

				$('#zoom-slider456').slider({
					min: 1,
					max: 48,
					value: 9,
					step: 0.2,
					slide: function(event, ui) {
						$('#slider456').TimeSlider({hours_per_ruler: ui.value});
					}
				});

				$('#slider123').TimeSlider({
					start_timestamp: current_time - 3600 * 12 * 1000,
					show_ms: true,
					hours_per_ruler: 0.33,
					init_cells: [
						{
                            '_id': 'c1',
                            'start': (current_time - (3600 * 5.4 * 1000) + 1234),
                            'stop': current_time - 3600 * 3.2 * 1000,
                            'style': {
                                'background-color': '#76C4FF'
                            }
                        },
						{
                            '_id': 'c2',
                            'start': (current_time - (3600 * 2.1 * 1000))
                        }
					]
				});

				$('#slider456').TimeSlider({
					update_timestamp_interval: 10,
					update_interval: 10,
					show_ms: true,
					hours_per_ruler: 1,
					graduation_step: 6,
					start_timestamp: current_time - 3600 * 7 * 1000,
					init_cells: [
						{'_id': 'c1', 'start': (current_time - (3600 * 6.2 * 1000) + 5678), 'stop': current_time - 3600 * 4.8 * 1000},
						{'_id': 'c2', 'start': (current_time - (3600 * 3.1 * 1000) + 864), 'stop': current_time}
					]
				});
		    })();
		});
	</script>
</body>
</html>