package com.sellerNet.backManagement.controller.imApp;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.entity.VersionSys;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.VersionService;
import com.sellerNet.backManagement.utils.JsonUtils;
import com.sellerNet.backManagement.utils.MatrixToImageWriter;

@RestController
@RequestMapping("api/qr")
public class QRController extends BaseController {
	  @Resource
	  private AppUserOneService appUserOneService;
		@Resource
		private VersionService versionService;
	  
	@RequestMapping(value = "payQRCode.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void payQRCode(String content, HttpServletRequest request,
			HttpServletResponse response) {
		try {
			MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
			Map hints = new HashMap();
			hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
			BitMatrix bitMatrix = multiFormatWriter.encode(content,
					BarcodeFormat.QR_CODE, 400, 400, hints);
			MatrixToImageWriter.writeToStream(bitMatrix, "png",
					response.getOutputStream());

			response.getOutputStream().flush();
			response.getOutputStream().close();
		} catch (WriterException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 生成用户二维码
	 * @param content
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "userQRCode.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void payQRCode(HttpServletRequest request,
			HttpServletResponse response,Integer userId) {
		try {
		    Map map1 = new HashMap();
		    map1.put("type","userType");
			map1.put("userId",userId);
		    String jsonString = JsonUtils.toJson(map1);
			MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
			Map hints = new HashMap();
			hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
			BitMatrix bitMatrix = multiFormatWriter.encode(jsonString,BarcodeFormat.QR_CODE, 300, 300, hints);
			MatrixToImageWriter.writeToStream(bitMatrix, "png",response.getOutputStream());
			response.getOutputStream().flush();
			response.getOutputStream().close();
		} catch (WriterException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "groupQRCode.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void groupQRCode(HttpServletRequest request,
			HttpServletResponse response,String groupId) {
		
		try {
			 Map map = new HashMap();
			    map.put("type","groupType");
				map.put("groupId", groupId);
			    String jsonString = JsonUtils.toJson(map);
			MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
			Map hints = new HashMap();
			hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
			BitMatrix bitMatrix = multiFormatWriter.encode(jsonString,BarcodeFormat.QR_CODE, 300, 300, hints);
			MatrixToImageWriter.writeToStream(bitMatrix, "png",response.getOutputStream());
			response.getOutputStream().flush();
			response.getOutputStream().close();
		} catch (WriterException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "downQRCode.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void downQRCode(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			VersionSys ap =versionService.get(1L);
			    String jsonString =ap.getIosPath();
			MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
			Map hints = new HashMap();
			hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
			BitMatrix bitMatrix = multiFormatWriter.encode(jsonString,BarcodeFormat.QR_CODE, 300, 300, hints);
			MatrixToImageWriter.writeToStream(bitMatrix, "png",response.getOutputStream());
			response.getOutputStream().flush();
			response.getOutputStream().close();
		} catch (WriterException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value = "downQRCodeIosUrl.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String downQRCodeIosUrl(HttpServletRequest request,
			HttpServletResponse response) {
			VersionSys ap =versionService.get(1L);
			String jsonString =ap.getIosPath();
			return jsonString;
	}
	
	@RequestMapping(value = "downQRCode2.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public void downQRCode2(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			VersionSys ap =versionService.get(1L);
			    String jsonString ="http://47.104.133.167:8080/im/"+ap.getAndroidPath();
			MultiFormatWriter multiFormatWriter = new MultiFormatWriter();
			Map hints = new HashMap();
			hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
			BitMatrix bitMatrix = multiFormatWriter.encode(jsonString,BarcodeFormat.QR_CODE, 300, 300, hints);
			MatrixToImageWriter.writeToStream(bitMatrix, "png",response.getOutputStream());
			response.getOutputStream().flush();
			response.getOutputStream().close();
		} catch (WriterException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value = "downQRCodeAndroidUrl.do", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String downQRCodeAndroidUrl(HttpServletRequest request,
			HttpServletResponse response) {
			VersionSys ap =versionService.get(1L);
			String jsonString ="http://47.104.133.167:8080/im/"+ap.getAndroidPath();
			return jsonString;
	}
}
