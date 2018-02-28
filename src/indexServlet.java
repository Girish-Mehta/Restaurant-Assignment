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
		JSONParser parser = new JSONParser();

		JSONObject favorites = new JSONObject();
		JSONArray restaurants = new JSONArray();
		JSONObject restaurant = new JSONObject();

		String result = "";
		if(req.getParameter("op").equals("putFav")) {
			int flag = 0;
			this.count = 0;
			this.id = Integer.parseInt(req.getParameter("restId"));
			this.name = req.getParameter("restName");
			this.address = req.getParameter("add");
			this.rating = Double.parseDouble(req.getParameter("rating"));
			this.votes = Integer.parseInt(req.getParameter("votes"));
			

			PrintWriter pw = res.getWriter();


			try{
				Object object = parser.parse(new FileReader(this.fileName));
				favorites = (JSONObject) object;
				this.count = Integer.parseInt(String.valueOf(favorites.get("count")));
				if(this.count == 10) {
					flag = 2;
				}
				restaurants = (JSONArray) favorites.get("restaurants");
				// if id exists, do not add and return error
				for(int looper = 0; looper < this.count; looper++) {
					restaurant = (JSONObject) restaurants.get(looper);
					if(String.valueOf(restaurant.get("id")).equals(String.valueOf(this.id))) {
						flag = 1;
						break;
					} else {
						// create new json object
						restaurant = new JSONObject();
					}
				}
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
					res.setContentType("application/text");
				    res.setCharacterEncoding("UTF-8");
					res.getWriter().write("Added to Favorites List");
				} catch(Exception e) {
					pw.write("Unable to write json");
				}			
			} else if(flag == 1){
				res.setContentType("application/text");
			    res.setCharacterEncoding("UTF-8");
				res.getWriter().write("Already in Fav List");
			} else if(flag == 2) {
				res.setContentType("application/text");
			    res.setCharacterEncoding("UTF-8");
				res.getWriter().write("Favorite List full");
			}
		} else if(req.getParameter("op").equals("getFav")) {
			try{
				Object object = parser.parse(new FileReader(this.fileName));
				favorites = (JSONObject) object;
				this.count = Integer.parseInt(String.valueOf(favorites.get("count")));
				restaurants = (JSONArray) favorites.get("restaurants");
				for(int looper = 0; looper < this.count; looper++) {
					restaurant = (JSONObject) restaurants.get(looper);
					result = String.valueOf(restaurant.get("id"))+restaurant.get("name")+restaurant.get("address")+restaurant.get("rating")+restaurant.get("votes");
				}
				res.setContentType("application/json");
			    res.setCharacterEncoding("UTF-8");
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			res.getWriter().write(favorites.toJSONString());
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}