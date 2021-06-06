<%@ page import="sort.T_Sort" %>
<%@ page import="ascending.A_Sort" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lab Activity 8</title>
</head>
<body>
<h1><%= "Sorted Arrays" %></h1>
<br/>
<%
    T_Sort t = new T_Sort();
    String[] stringInputs = request.getParameter("names").split(", ");
    int[] intInputs = new int[stringInputs.length];
    int intIndex=0;
    for(String s: stringInputs)
        intInputs[intIndex++] = Integer.parseInt(s);
%>
<table border="1px">
    <tr>
        <td>Ascending</td>
        <%for(int s: A_Sort.a_sort(intInputs)){%>
            <td><%=s%></td>
        <%}%>
    </tr>
    <tr>
        <td>Descending</td>
        <%for(int s: t.d_sort(intInputs)){%>
            <td><%=s%></td>
        <%}%>
    </tr>
</table>
</body>
</html>