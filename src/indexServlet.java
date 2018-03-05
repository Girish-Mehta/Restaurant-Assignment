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
	// variable to store id of restaurant
	private int id;
	// variable to store name of restaurant
	private String name;
	// variable to store address of restaurant
	private String address;
	// variable to store rating of restaurant
	private double rating;
	// variable to store votes of restaurant
	private int votes;
	private String fileName = "/home/sapient/Girish/Projects/Restaurant-Search/fav.json";
	private int count;


	@Override
	public void doGet(HttpServletRequest req,HttpServletResponse res)  throws ServletException,IOException  {
		// json parser to parse result
		JSONParser parser = new JSONParser();
		// json object to store favorites
		JSONObject favorites = new JSONObject();
		// json array to store restaurants
		JSONArray restaurants = new JSONArray();
		// json object to store individual restaurant details
		JSONObject restaurant = new JSONObject();

		String result = "";
		// if request operation is putFav then add into fav list
		if(req.getParameter("op").equals("putFav")) {
			int flag = 0;
			// get count of fav list elemetns
			this.count = 0;
			// get details of restaurant
			this.id = Integer.parseInt(req.getParameter("restId"));
			this.name = req.getParameter("restName");
			this.address = req.getParameter("add");
			this.rating = Double.parseDouble(req.getParameter("rating"));
			this.votes = Integer.parseInt(req.getParameter("votes"));
			// create output obejct
			PrintWriter pw = res.getWriter();

			try{
				// read and parse file
				Object object = parser.parse(new FileReader(this.fileName));
				favorites = (JSONObject) object;
				// get current count from file
				this.count = Integer.parseInt(String.valueOf(favorites.get("count")));
				// if count if = 10 then list full, flag up
				if(this.count == 10) {
					flag = 2;
				}
				// get restaurant details
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
				// if no issues till here, write into json file
				count++;
				favorites.put("count", this.count);
				restaurant.put("id", this.id);
				restaurant.put("name", this.name);
				restaurant.put("address", this.address);
				restaurant.put("rating", this.rating);
				restaurant.put("votes", this.votes);
				// add restaurant to the array
				restaurants.add(restaurant);
				favorites.put("restaurants", restaurants);
				// send status back to jsp page
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
			// if operation is getFav
			try{
				// read json file
				Object object = parser.parse(new FileReader(this.fileName));
				favorites = (JSONObject) object;
				this.count = Integer.parseInt(String.valueOf(favorites.get("count")));
				restaurants = (JSONArray) favorites.get("restaurants");
				// iterate through every restaurant
				for(int looper = 0; looper < this.count; looper++) {
					restaurant = (JSONObject) restaurants.get(looper);
					result = String.valueOf(restaurant.get("id"))+restaurant.get("name")+restaurant.get("address")+restaurant.get("rating")+restaurant.get("votes");
				}
				res.setContentType("application/json");
			    res.setCharacterEncoding("UTF-8");
			} catch(Exception e) {
				e.printStackTrace();
			}
			// send favorites list to jsp page
			res.getWriter().write(favorites.toJSONString());
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
