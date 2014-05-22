<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<sql:query var="rs" dataSource="jdbc/postgres">
select city_id, city, country_id from city where city_id <6
</sql:query>

<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>

  <h2>Results</h2>

<c:forEach var="row" items="${rs.rows}">
    CITY ID <c:out value="${row.city_id}"/> <br/>
    CITY ${row.city}<br/>
    COUNTRY ID ${row.country_id}<br/>
</c:forEach>

  </body>
</html>