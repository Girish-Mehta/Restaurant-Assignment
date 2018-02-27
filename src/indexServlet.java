import javax.servlet.http.*;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.nio.file.Path;
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
	private int id;
	private String name;
	private String address;
	private double rating;
	private int votes;
	private String fileName = "/home/sapient/Girish/Projects/Restaurant-Search/fav.json";
	private int count;

	
	@Override
	public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  {  
		int flag = 0;
		
		this.count = 0;
		this.id = Integer.parseInt(req.getParameter("restId"));
		this.name = req.getParameter("restName");
		this.address = req.getParameter("add");
		this.rating = Double.parseDouble(req.getParameter("rating"));
		this.votes = Integer.parseInt(req.getParameter("votes"));
		
		JSONParser parser = new JSONParser();

		PrintWriter pw = res.getWriter();

		JSONObject favorites = new JSONObject();
		JSONArray restaurants = new JSONArray();
		JSONObject restaurant = new JSONObject();

		try{
			Object object = parser.parse(new FileReader(this.fileName));
			favorites = (JSONObject) object;
			this.count = Integer.parseInt(String.valueOf(favorites.get("count")));
			restaurants = (JSONArray) favorites.get("restaurants");
			// if id exists, do not add and return error
			for(int looper = 0; looper < this.count; looper++) {
				restaurant = (JSONObject) restaurants.get(looper);
				if(String.valueOf(restaurant.get("id")).equals(String.valueOf(this.id))) {
					flag = 1;
					break;
				}
			}
			restaurant.clear();
		} catch(Exception e) {
			e.printStackTrace();
		}
			
		if(flag == 0) {
			count++;
			favorites.put("count", this.count);
			restaurant.put("id", this.id);
			restaurant.put("name", this.name);
			restaurant.put("address", this.address);
			restaurant.put("rating", this.rating);
			restaurant.put("votes", this.votes);	
			
			restaurants.add(restaurant);
			favorites.put("restaurants", restaurants);			
			
			try(FileWriter fw = new FileWriter(fileName)) {			
				fw.write(favorites.toJSONString());
			} catch(Exception e) {
				pw.write("Unable to write json");
			}			
		} else {
			System.out.println("Already exists");
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}







//private ArrayList<String> restArray;
//private ArrayList<ArrayList<String>> output;
//
//public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  {  
////	res.setContentType("text/html");    
////	PrintWriter pw = res.getWriter();
////	pw.println("Working");
////	JSONParser parser = new JSONParser();
////	try {
////		Object obj = parser.parse(req.getParameter("jsonObj"));
////		JSONArray result = (JSONArray)obj;
////		restArray.add((String) result.get(0));
////        JSONObject rests = (JSONObject)result.get(3);
////        for(int i = 0 ; i < 5; i++) {
////        	JSONObject det = (JSONObject)result.get(5);
////        	restArray.add((String)det.get(0));
////        	det= (JSONObject)result.get(8);
////        	restArray.add((String)det.get(0));
////        	restArray.add((String)det.get(3));
////        	output.add(restArray);
////        }
////	} catch(ParseException pe) {
////		pw.println("Could not parse JSON");
////	}
//
//}
//
//
//@Override
//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//	//    	PrintWriter pw = response.getWriter();
////	JSONParser parser = new JSONParser();
////	try {
////		Object obj = parser.parse(jsonObj);
////		JSONArray result = (JSONArray)obj;
////		restArray.add((String) result.get(0));
////        JSONObject rests = (JSONObject)result.get(3);
////        for(int i = 0 ; i < 5; i++) {
////        	JSONObject det = (JSONObject)result.get(5);
////        	restArray.add((String)det.get(0));
////        	det= (JSONObject)result.get(8);
////        	restArray.add((String)det.get(0));
////        	System.out.println((String)det.get(0));
////        	restArray.add((String)det.get(3));
////        	output.add(restArray);
////        }
////	} catch(ParseException pe) {
////		pw.println("Could not parse JSON");
////	}
////	System.out.println("Completed");
//	
////	System.out.println(request.));
//	
//	
//// 	var response= JSON.stringify(result);
////	request.open("POST", "http://localhost:8081/Restaurant-Search/indexServlet?jdata" , true);
////	request.send(response);        			
//
//	
////	request.getRequestDispatcher("/fav.jsp").forward(request, response);
//}