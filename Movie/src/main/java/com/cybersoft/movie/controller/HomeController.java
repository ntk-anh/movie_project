package com.cybersoft.movie.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cybersoft.movie.pojo.LoaiPhim;
import com.cybersoft.movie.pojo.Phim;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/home")
public class HomeController {

	@GetMapping("")
	public ModelAndView home() {
		ModelAndView andView = new ModelAndView("home");

		/* lấy đường dẫn từ api để hiện lên giao diện */
		String response = getDataTypeGet("http://localhost:8081/phim");
		System.out.println(response);
		/**/

		/* dùng jackson parse api lấy được về kiểu đối tượng */
		ObjectMapper mapper = new ObjectMapper();		
		try {
			//mapper đọc DL từ chuỗi sang json
			Phim[] phims = mapper.readValue(response, Phim[].class);
			
			//parse xong đẩy DL ra giao diện
			andView.addObject("phims", phims);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/**/
		
		/*tương tự khi gọi api tại đường dẫn /loaiphim*/
		ObjectMapper mapper2 = new ObjectMapper();
		String responseCategory = getDataTypeGet("http://localhost:8081/loaiphim");
		try {
			LoaiPhim[] loaiPhims = mapper2.readValue(responseCategory, LoaiPhim[].class);
			andView.addObject("loaiPhims", loaiPhims);
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/**/
		
		return andView;
	}

	private String getDataTypeGet(String url) {
		// lấy DL json trả ra
		StringBuilder responseData = new StringBuilder();
		try {
			// mở kết nối tới /phim
			URL newUrl = new URL(url);// khai báo sử dụng đường dẫn
			HttpURLConnection connection = (HttpURLConnection) newUrl.openConnection();// mở kết nối tại newUrl=> đẩy DL
																						// đi/lấy DL về

			// định phương thức get
			connection.setRequestMethod("GET");

			// lấy inputstream (DL trả về từ URL) từ đường dẫn
			// đọc DL từ inputstream
			// dùng bufferreader tạo bộ nhớ đệm tăng tốc độ đọc(ví dụ xem youtube thì mất
			// wifi)
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(connection.getInputStream()));

			// đưa DL vào trong stringbuilder
			// line đại diện cho từng dòng data đọc đc (ví dụ json trả ra ở postman)
			String line = "";
			while ((line = bufferedReader.readLine()) != null) {
				responseData.append(line);
			}

			// đóng kết nối khi dùng inputstream, outputstream
			bufferedReader.close();

		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// phải trả ra dạng chuỗi
		return responseData.toString();
	}
}
