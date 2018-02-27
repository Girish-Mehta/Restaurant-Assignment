import javax.servlet.http.*;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.*;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class indexServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1916628259052119014L;
	private ArrayList<String> restArray;
	private ArrayList<ArrayList<String>> output;
	
	public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  {  
//		res.setContentType("text/html");    
//		PrintWriter pw = res.getWriter();
//		pw.println("Working");
//		JSONParser parser = new JSONParser();
//		try {
//			Object obj = parser.parse(req.getParameter("jsonObj"));
//			JSONArray result = (JSONArray)obj;
//			restArray.add((String) result.get(0));
//	        JSONObject rests = (JSONObject)result.get(3);
//	        for(int i = 0 ; i < 5; i++) {
//	        	JSONObject det = (JSONObject)result.get(5);
//	        	restArray.add((String)det.get(0));
//	        	det= (JSONObject)result.get(8);
//	        	restArray.add((String)det.get(0));
//	        	restArray.add((String)det.get(3));
//	        	output.add(restArray);
//	        }
//		} catch(ParseException pe) {
//			pw.println("Could not parse JSON");
//		}
	}
	

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("Posting");
   
    	
    	StringBuilder stringBuilder = new StringBuilder();
    	BufferedReader bufferedReader = null;
    	try {
    	  InputStream inputStream = request.getInputStream();
    	  if (inputStream != null) {
    	   bufferedReader = new BufferedReader(new InputStreamReader(
    	inputStream));
    	   char[] charBuffer = new char[128];
    	   int bytesRead = -1;
    	   while ((bytesRead = bufferedReader.read(charBuffer)) > 0) {
    	    stringBuilder.append(charBuffer, 0, bytesRead);
    	   }
    	  } else {
    	   stringBuilder.append("");
    	  }
    	} catch (IOException ex) {
    	  throw ex;
    	} finally {
    	  if (bufferedReader != null) {
    	   try {
    	    bufferedReader.close();
    	   } catch (IOException ex) {
    	    throw ex;
    	   }
    	  }
    	}
    	String jsonObj = stringBuilder.toString();
    	System.out.println(jsonObj);
//    	PrintWriter pw = response.getWriter();
    	JSONParser parser = new JSONParser();
    	try {
			Object obj = parser.parse(jsonObj);
			JSONArray result = (JSONArray)obj;
			restArray.add((String) result.get(0));
	        JSONObject rests = (JSONObject)result.get(3);
	        for(int i = 0 ; i < 5; i++) {
	        	JSONObject det = (JSONObject)result.get(5);
	        	restArray.add((String)det.get(0));
	        	det= (JSONObject)result.get(8);
	        	restArray.add((String)det.get(0));
	        	System.out.println((String)det.get(0));
	        	restArray.add((String)det.get(3));
	        	output.add(restArray);
	        }
		} catch(ParseException pe) {
//			pw.println("Could not parse JSON");
		}
    	System.out.println("Completed");
    	
//    	System.out.println(request.));
    	
    	
//     	var response= JSON.stringify(result);
//    	request.open("POST", "http://localhost:8081/Restaurant-Search/indexServlet?jdata" , true);
//    	request.send(response);        			

    	
    	request.getRequestDispatcher("/fav.jsp").forward(request, response);
    }
}
