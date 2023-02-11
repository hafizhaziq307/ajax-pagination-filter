<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.json.*" %>

<% 
    String draw = request.getParameter("draw");
    int row = Integer.parseInt(request.getParameter("start"));
    int rowperpage = Integer.parseInt(request.getParameter("length"));
    int columnIndex = Integer.parseInt(request.getParameter("order[0][column]"));
    String columnName = request.getParameter("columns["+columnIndex+"][data]");
    String columnSortOrder = request.getParameter("order[0][dir]");
    String searchValue = request.getParameter("search[value]");

    // filter
    String filterByNegeri = request.getParameter("filterByNegeri");

    int totalRecords = 0;
    int totalRecordwithFilter = 0;
    String query = null;
    
    Connection conn = null;
    ResultSet rs = null;

    try {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        conn = DriverManager.getConnection("jdbc:sqlserver://localhost;user=sa;password=admin@234;database=ajaxfilterpagination", "sa", "admin@234");

        // Total records
        query = "SELECT count(*) AS allcount FROM daerah";
        rs = conn.createStatement().executeQuery(query);
        if (rs.next()) {
            totalRecords = rs.getInt("allcount");
        }

        // Total records with filter
        query = "SELECT count(*) AS allcount FROM daerah WHERE nama LIKE '%" + searchValue + "%'";
        if (filterByNegeri != null && !filterByNegeri.equals("")) {
            query += " AND kod_negeri = " + filterByNegeri;
        }
        rs = conn.createStatement().executeQuery(query);
        if (rs.next()) {
            totalRecordwithFilter = rs.getInt("allcount");
        }

        // Fetch records
        query = "SELECT * FROM ("
                + " SELECT ROW_NUMBER() OVER (ORDER BY " + columnName + " " + columnSortOrder + ") rowNum, * FROM daerah"
                + " WHERE nama LIKE '%" + searchValue + "%'";
        if (filterByNegeri != null && !filterByNegeri.equals("")) {
            query += " AND kod_negeri = " + filterByNegeri;
        }
        query += " ) newtbl WHERE newtbl.rowNum BETWEEN " + row + " AND " + (row + rowperpage);

        rs = conn.createStatement().executeQuery(query);
        ResultSetMetaData rsmd = rs.getMetaData();
        int totalColumns = rsmd.getColumnCount(); 

        JSONArray data = new JSONArray();
        while (rs.next()) {
            String id;
            String nama;
            String kod_negeri;
            String kod_daerah;

            id = rs.getString("id");
            nama = rs.getString("nama");
            kod_negeri = rs.getString("kod_negeri");
            kod_daerah = rs.getString("kod_daerah");

            JSONObject record = new JSONObject();
            record.put("id", id);
            record.put("nama", nama);
            record.put("kod_negeri", kod_negeri);
            record.put("kod_daerah", kod_daerah);
            data.put(record);
        }

        // Create the response JSON object
        JSONObject responseJson = new JSONObject();
        responseJson.put("draw", draw);
        responseJson.put("recordsTotal", totalRecords);
        responseJson.put("recordsFiltered", totalRecordwithFilter);
        responseJson.put("data", data);
        responseJson.put("query", query);

        // Close the database conn
        conn.close();

        // Send the response
        response.setContentType("application/json");
        response.getWriter().print(responseJson);

    } catch(Exception ex) {
        out.println("<p>" + ex + "</p>");
    }

    
%>