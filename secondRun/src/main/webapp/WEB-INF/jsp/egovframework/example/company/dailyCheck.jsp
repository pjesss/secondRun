<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.css' rel='stylesheet' />
<link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src="js/moment.min.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js'></script>
<script>

  $(document).ready(function() {

    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,basicWeek,basicDay'
      },
      //defaultDate: '2018-03-12',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: '출석 체크',
          start: '2018-03-01'
        },
        {
            title: '출석 체크',
            start: '2018-03-02'
        },
        {
			title: '출석 체크',
            start: '2018-03-03'
        },
        {
			title: '출석 체크',
            start: '2018-03-04'
        },
        {
			title: '출석 체크',
            start: '2018-03-05'
        },
        {
			title: '출석 체크',
            start: '2018-03-06'
        },
        {
			title: '출석 체크',
            start: '2018-03-07'
        },
        {
			title: '출석 체크',
            start: '2018-03-08'
        },
        {
			title: '출석 체크',
            start: '2018-03-09'
        },
        {
			title: '출석 체크',
            start: '2018-03-10'
        },
        {
			title: '출석 체크',
            start: '2018-03-11'
        },
        {
			title: '출석 체크',
            start: '2018-03-12'
        },
        {
			title: '출석 체크',
            start: '2018-03-13'
        },
        {
			title: '출석 체크',
            start: '2018-03-14'
        },
        {
			title: '출석 체크',
            start: '2018-03-15'
        },
        {
			title: '출석 체크',
            start: '2018-03-16'
        }
      ]
    });

  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }
  
  .fc-event {
	    position: relative;
	    display: block;
	    font-size: 18px;
	    line-height: 3.3;
	    font-weight: 400;
	    border-radius: 0px;
	    border: 1px solid #ff7272;
	}
	.fc-day-grid-event {
		background-color: #ff7272;
	}
	.fc-event-container {
		background-color: #ff7272;
	}
	
	.fc-day-grid-event {
		padding: 0 20px;
	}

</style>
<!-- Main Content -->
<div class="content-wrapper" style="padding-top: 150px; padding-bottom: 150px;">
	<div class="container">
		<div class="section-header">
			<h1>출석 체크</h1>
			<p>매일매일 출석시 다양한 혜택이 팡팡!!</p>
		</div>
		<div id='calendar'></div>
	</div>
</div>