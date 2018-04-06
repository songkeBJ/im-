package com.sellerNet.backManagement.push;

import org.json.JSONArray;
import org.json.JSONObject;

import com.sellerNet.backManagement.push.android.AndroidBroadcast;
import com.sellerNet.backManagement.push.android.AndroidGroupcast;
import com.sellerNet.backManagement.push.android.AndroidUnicast;
import com.sellerNet.backManagement.push.ios.IOSBroadcast;
import com.sellerNet.backManagement.push.ios.IOSGroupcast;
import com.sellerNet.backManagement.push.ios.IOSUnicast;

public class UmengUtil {
	private static String appkeyIOS = "5a9a361cb27b0a3d700004d8"; // 应用唯一标识（安卓）
	private static String appMasterSecretIOS = "bymvineugygrfef4hunkxqxydfaihp69"; // 服务器秘钥，用于服务器端调用API请求时对发送内容做签名验证。（安卓）
	private static String appkeyAndroid = "5a957b04f29d9877c90003bd"; // 应用唯一标识（IOS）
	private static String appMasterSecretAndroid = "hyzlk6xrvhsewjebtgyjcabon9xsxbnn"; // 服务器秘钥，用于服务器端调用API请求时对发送内容做签名验证。（IOS）
	private static PushClient client = new PushClient();

	/**
	 * 单播（安卓）
	 * 
	 * @param deviceToken
	 * @param ticker
	 * @param title
	 * @param text
	 * @throws Exception
	 */
	public static void sendAndroidUnicast(String deviceToken, String ticker, String title, String text, String notifyType, String id)
			throws Exception {
		AndroidUnicast unicast = new AndroidUnicast(appkeyAndroid, appMasterSecretAndroid);
		unicast.setDeviceToken(deviceToken); // 表示指定的单个设备
		unicast.setTicker(ticker); // 通知栏提示文字
		unicast.setTitle(title); // 通知标题
		unicast.setText(text); // 通知文字描述
		unicast.goAppAfterOpen(); // 点击"通知"的后续行为，默认为打开app。
		unicast.setDisplayType(AndroidNotification.DisplayType.NOTIFICATION); // 消息类型:notification(通知)、message(消息)
		// unicast.setProductionMode(); //正式模式
		unicast.setTestMode(); // 测试模式
		unicast.setExtraField("notifyType", notifyType); // 通知类型：1-服务，2-需求，3-支付订单，4-余额提现，5-实名认证
		unicast.setExtraField("id", id); // 业务ID，与通知类型对应
		client.send(unicast);
	}

	/**
	 * 组播（安卓）
	 * 
	 * @param ticker
	 * @param title
	 * @param text
	 * @throws Exception
	 */
	public static void sendAndroidGroupcast(String ticker, String title, String text) throws Exception {
		AndroidGroupcast groupcast = new AndroidGroupcast(appkeyAndroid, appMasterSecretAndroid);
		/*
		 * TODO Construct the filter condition: "where": { "and": [
		 * {"tag":"test"}, {"tag":"Test"} ] }
		 */
		JSONObject filterJson = new JSONObject();
		JSONObject whereJson = new JSONObject();
		JSONArray tagArray = new JSONArray();
		JSONObject testTag = new JSONObject();
		JSONObject TestTag = new JSONObject();
		testTag.put("tag", "test");
		TestTag.put("tag", "Test");
		tagArray.put(testTag);
		tagArray.put(TestTag);
		whereJson.put("and", tagArray);
		filterJson.put("where", whereJson);
		System.out.println(filterJson.toString());
		groupcast.setFilter(filterJson);
		groupcast.setTicker(ticker);
		groupcast.setTitle(title);
		groupcast.setText(text);
		groupcast.goAppAfterOpen();
		groupcast.setDisplayType(AndroidNotification.DisplayType.NOTIFICATION);
		groupcast.setProductionMode();
		// groupcast.setTestMode();
		client.send(groupcast);
	}

	/**
	 * 广播（安卓）
	 * 
	 * @param ticker
	 * @param title
	 * @param text
	 * @throws Exception
	 */
	public static void sendAndroidBroadcast(String ticker, String title, String text) throws Exception {
		AndroidBroadcast broadcast = new AndroidBroadcast(appkeyAndroid, appMasterSecretAndroid);
		broadcast.setTicker(ticker); // 通知栏提示文字
		broadcast.setTitle(title); // 通知标题
		broadcast.setText(text); // 通知文字描述
		broadcast.goAppAfterOpen(); // 点击"通知"的后续行为，默认为打开app。
		broadcast.setDisplayType(AndroidNotification.DisplayType.NOTIFICATION); // 消息类型:notification(通知)、message(消息)
		broadcast.setProductionMode(); // 正式模式
		// broadcast.setTestMode(); //测试模式
		broadcast.setExtraField("test", "helloworld");
		client.send(broadcast);
	}

	/**
	 * 单播（IOS）
	 * 
	 * @param deviceToken
	 * @param alert
	 * @throws Exception
	 */
	public static void sendIOSUnicast(String deviceToken, String alert, String text, String notifyType, String id)
			throws Exception {
		IOSUnicast unicast = new IOSUnicast(appkeyIOS, appMasterSecretIOS);
		unicast.setDeviceToken(deviceToken); // 表示指定的单个设备
		unicast.setAlert(alert);
		unicast.setBadge(0);
		unicast.setSound("default");
		// unicast.setProductionMode(); //正式模式
		unicast.setTestMode();
		unicast.setCustomizedField("text", text); // 通知内容
		unicast.setCustomizedField("notifyType", notifyType); // 通知类型：1-服务，2-需求，3-支付订单，4-余额提现，5-实名认证
		unicast.setCustomizedField("id", id); // 业务ID，与通知类型对应
		client.send(unicast);
	}

	/**
	 * 组播（IOS）
	 * 
	 * @param alert
	 * @throws Exception
	 */
	public static void sendIOSGroupcast(String alert) throws Exception {
		IOSGroupcast groupcast = new IOSGroupcast(appkeyIOS, appMasterSecretIOS);
		/*
		 * TODO Construct the filter condition: "where": { "and": [
		 * {"tag":"iostest"} ] }
		 */
		JSONObject filterJson = new JSONObject();
		JSONObject whereJson = new JSONObject();
		JSONArray tagArray = new JSONArray();
		JSONObject testTag = new JSONObject();
		testTag.put("tag", "iostest");
		tagArray.put(testTag);
		whereJson.put("and", tagArray);
		filterJson.put("where", whereJson);
		System.out.println(filterJson.toString());
		groupcast.setFilter(filterJson);
		groupcast.setAlert(alert);
		groupcast.setBadge(0);
		groupcast.setSound("default");
		groupcast.setProductionMode();
		// groupcast.setTestMode();
		client.send(groupcast);
	}

	/**
	 * 广播（IOS）
	 * 
	 * @param alert
	 * @throws Exception
	 */
	public static void sendIOSBroadcast(String alert) throws Exception {
		IOSBroadcast broadcast = new IOSBroadcast(appkeyIOS, appMasterSecretIOS);
		broadcast.setAlert(alert);
		broadcast.setBadge(0);
		broadcast.setSound("default");
		broadcast.setProductionMode(); // 正式模式
		// broadcast.setTestMode(); //测试模式
		broadcast.setCustomizedField("test", "helloworld");
		client.send(broadcast);
	}
}
