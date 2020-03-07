<%--
  Created by IntelliJ IDEA.
  User: ekmul
  Date: 3/6/2020
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="InputSighting">
    <div class="form-group">
        <label for="locationInput">Location</label>
        <input type="text" class="form-control" id="locationInput" name="location" placeholder="Enter location"/>

        <label for="dateTime">Time</label>
        <input type="datetime-local" class="form-control" id="dateTime" name="dateTime" placeholder="Enter Date and Time"/>

        <label for="species">Species</label>
        <select id="species" name="species">
            <option value="ruby-throated">ruby-throated</option>
            <option>b</option>
            <option>c</option>
            <option>d</option>
        </select>
    </div>
</form>

</body>
</html>
