package com.alipay.util;

/**说明：云购创聊支付宝相关配置
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */
public class AlipayChatConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    //合作身份者ID，签约账号，以2088开头由16位纯数字组成的字符串，查看地址：https://openhome.alipay.com/platform/keyManage.htm?keyType=partner
    public static String partner = "2088221839669200";

    //商户的私钥,需要PKCS8格式，RSA公私钥生成：https://doc.open.alipay.com/doc2/detail.htm?spm=a219a.7629140.0.0.nBDxfy&treeId=58&articleId=103242&docType=1
    public static String private_key = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKz4UuvbjpvBw1JUblzG6lGQB6aPYsnOB96Ncy87fP10lEjKr/y8H0PS0F76TzUanN9OQt5A6ws0dvtvEUKbrg1e0Jx+uQsg5UoljNb51XcCpHcRPjjcDSX3CWXPhhoXLW0YiwbkLiOAtaw7pGxjJNw36PY3KVJXiOFwxMN+xCVhAgMBAAECgYAeQFgQVBf++cZ1cbrTkx6MIUqVQOKgNN5/d/G7QwY7NdZxXLGm3CgDrq0uz0xnFz50d7WONYBmN0jP9L7qDVxFRMGGa5p8a39IBpgEHWiy688vgK9blbXfZ8Kg/sosVxhFj7VzlY5nKMCHUsdN0YbOB9k2JCW56drRno7d1pgQeQJBANTCrRM4gM5Qk09cEOFz+etpgI3bjaDIvszUb7dCICryNyuVzbymlwETuRJbvhDj2bvmrF4u3EYHt0CYC+mRSgsCQQDQH3bJmaTbRpkiZT6Uz7mmqURUghC9trtJEpf9Tcc9St/7c+vam/JdEMXWXRTdEoTQoS1zwrZmzn/J3vvOEJ3DAkEAqGDxTFbZSW5nRtUb3vFEBtTWEm6BZY+5wK0XRLcmchaDJxFFY1mMBCQxwZ+tifxo4tYp79eyKBIPKyWpt81uBQJBALXlKe6ciAbVNvVmw0FQI5PTkFLDsln8oMcGpyvNlHqvO/8Km3Hepf5MsHvfsmJc0xN8Krtny/8iL3GBn1XEE/0CQD+R7+T0KHQtUJBHFt/mFImovaigDUpCNXS8DhtaHg5MlpKZM0O8nehJA0qizjEZCS+Ic+ElJO8i7kM3XYVoA3U=";

    //支付宝的公钥，查看地址：https://openhome.alipay.com/platform/keyManage.htm?keyType=partner
    public static String alipay_public_key  = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDI6d306Q8fIfCOaTXyiUeJHkrIvYISRcc73s3vF1ZT7XN8RNPwJxo8pWaJMmvyTn9N4HQ632qJBVHf8sxHi/fEsraprwCtzvzQETrNRwVxLO5jVmRGi60j8Ue1efIlzPXV9je9mkjzOmdssymZkh2QhUrCmZYI/FCEa3/cNMW0QIDAQAB";

    // 签名方式
    public static String sign_type = "RSA";

    // 调试用，创建TXT日志文件夹路径，见AlipayCore.java类中的logResult(String sWord)打印方法。
    public static String log_path ="C://";

    // 字符编码格式 目前支持 gbk 或 utf-8
    public static String input_charset = "utf-8";

    // 接收通知的接口名
    public static String service = "/SellerNet/api/alipay/chat/callbacks.do";
    //public static String service = "mobile.securitypay.pay";

    //APPID
    public static String app_id="2017040806596552";

//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
}
