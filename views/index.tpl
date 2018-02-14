<!doctype html>
<html lang="is">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Verkefni 5 - viðburðir</title>
    <link type="text/css" href="/static/stylesheet.css" rel="stylesheet">
</head>
<body>
<h1>Tónleikar</h1>
<div class="main">
    % for x in data['results']:
        <div class="event">
            <h3>{{x['eventDateName']}}</h3>
            <h4>{{x['eventHallName']}}</h4>
            <h4>{{x['dateOfShow'][0:10]}}</h4>
            <img src="{{x['imageSource']}}"></img>
        </div>

    %end
</div>
</body>
</html>