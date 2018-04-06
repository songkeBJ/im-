package com.alipay.util;

/**说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */
public class AlipayConfig {
		// ↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

		// 支付宝网关
		public static String gateway = "https://openapi.alipay.com/gateway.do";
		
		// APPID
		public static String app_id = "2018012602080690";

		// 商户的私钥,需要PKCS8格式，RSA公私钥生成：https://doc.open.alipay.com/doc2/detail.htm?spm=a219a.7629140.0.0.nBDxfy&treeId=58&articleId=103242&docType=1

		public static String private_key = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAJ7XAuk14og6E9NUkE8xSOkz8O7uuz0v0PW5BDbJ0AEBAa6JFhHFTXDIgFPEYnvWSZV/MmEIYbtCp/vN2+gnW9H6lH6MR0gNG0EZ7czqZnwFWJ5mWWtNHOy4HGPcB3pARbMZHJHChb1lATWJg4Kdz/ZL836tq1nVXIBAKKYP1pk0270m6ZnxNxQrRV5XD5tPfagaC1LkhdbEzI6SWzY3OVCq0lFpN0sg5OZS53rQFPh59UM/8gIJuJUe+QgJ3sfeiKlTi1Rr7jUPntq259Asqi93iX/iBLZGqyca0W46g/26trsNX1tWOU4fJo8AFgaPP7R+JXs91tP5PP6uVnqV7XpRQBgqDqjh6BTzfAgMBAAECggEAYMkCnHpqGg3RuS1Cig1dAnabRKR+qPIBv9Ff8OIyoCm1uh25abNwrYWRX4OlDEDb2usu4BDeKVe40VYnuQB4hr1R1+XHZSv1gIvTUVB42M3/hRPj3l6DyzTqbE232C+gfI7/+pZ6RVTI+3CRYz2p+fWneaLSgSEuiqAEEF5gquzxEtvhdiAJ2yW/ve2evuFfdTIVqWVRsngOLNcFcbVjLO+gGCnxazlYbpxcRFKpQpYtn2KWPSM4PRHtkZMneIjm2BupkoMfvvl9q7adrTsznsrcWzYtpmZKVmohjbw9bJ/guysb7LpYMrY/2Pw6UT/jqwF24VHl+UI5VTGs31Y7SQKBgQDQkhbYCXPGkbj+nJvMdLg6SMRFjK9Q8GrPckyqMNoHQF0h6K5r0335Xl/Z4bgIGyRE0jfoWKTKrVGE4HAeZfUnQe+u2zoYyxzYjD6Wug4g80f7XugaigZO6ksJPtUKZ3Yp+hc0k9BB8pcro8utuCsbLqkMDX5A1LcxGvh2HKBxewKBgQCn/uRnf8G3ZHJYkCr6HQ/llkEgHFRJqBctTwZSqV84yh0kzaOraM6dR01Ti+s/mN3e78SuK7j2AkLbmGwjzTkhIWcrrk0cmLBZDU85JEoXQw9IQKV6rslYp5yw1EgkvX0TLLLrl7Xv0WX6QMzgHOBsWPG2Bz22tBD4qsimgzoq7QKBgQCoJY67HmuzI1oUEmfcXiEEBBQPygqw4xIJKim6b2XmwLIUm0S68yc1OitmOX4nMtJ7lUqzS3uXVkFJMbPSHfqVaqfzvRPKVz1rKy1uUJMBZ4CZm/rdIndRebuCuaABIkX2M4QvxBb6g7vx17xl0fsWj/iDGgG1/Iev1AGJHy0OLwKBgFToE8JnpJ2u68ftHXuJ4rXzyfiTuNn9VbF1pklzBwhpxm8Ka/U/JGYDWoamSgC7ny+E2U/6EyJrJCVelRFHMN+YxU8jah/Q4BgyDN9hgvzczMWEvt4RpvviwuPwdoHzL1rYlZlS9QY/PB5OT/3ZOmgoUAnjAQLtYUJ89qqJ2oVFAoGALyvnGX5KABCBDFATYzjsTZmJj7zQ2cWiy6c8OZW3w1P1uju0m3u+bmjnQooDjDAANCn6Uobh+4rWiBynKEmGhZH+W5a5jIBLIycduqwrglBqp/3R1a3dKwyxNIK0/+LXPKCepG9E0/ZvS32vwEb8ftQbp8qIMtLNqHWrk064Vtc=";

		// 支付宝的公钥，查看地址：https://openhome.alipay.com/platform/keyManage.htm?keyType=partner

		public static String public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiN738Ae5zaGo0HL26L+zXqbvQ3mE6+yBB33DooXuz6wRO+exEcwvzJhCGG7Qqf7zdvoJ1vR+pR+jEdIDRtBGe3M6mZ8BVieZllrTRzsuBxj3Ad6QEWzGRyRwoW9ZQE1iYOCnc/2S/N+ratZ1VyAQCimD9aZNNu9JumZ8TcUK0VeVw+bT32oGgtS5IXWxMyOkls2NzlQqtJRaTdLIOTmUud60BT4efVDP/ICCbiVHvkICd7H3oipU4tUa+41D57atufQLKovd4l/4gS2RqsnGtFuOoP9ura7DV9bVjlOHyaPABYGjz+0fiV7PdbT+Tz+MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDI6d306Q8fIfCOaTXyiUeJHkrIvYISRcc73s3vF1ZT7XN8RNPwJxo8pWaJMmvyTn9N4HQ632qJBVHf8sxHi";

		// 签名方式
		public static String sign_type = "RSA2";

		// 调试用，创建TXT日志文件夹路径，见AlipayCore.java类中的logResult(String sWord)打印方法。
		public static String log_path = "C://";

		// 字符编码格式 目前支持 gbk 或 utf-8
		public static String charset = "utf-8";

		// 接收通知的接口名
		public static String notifyUrl = "/SellerNet/api/alipay/callbacks.do";

		// ↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
	}

//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
