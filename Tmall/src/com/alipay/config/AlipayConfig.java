package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
	//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

		// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
		public static String app_id = "2016110200786850";
		
		// 商户私钥，您的PKCS8格式RSA2私钥
	    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCkbyPiknpjGFxKQLP7p09jg+Rl1gKCgVc+ur2n9Cf/UXQIfm80P8YpMEss9EbCTgiLkBMlaRdWadfG4O+9OeWOWayKgUN0klyygiG3yQcQLXm2uSuS5B6bsxddTjbV9f0wj1xrw+ABHYrVWwfyDuGf+4N6DzUR31yF97yb/1L9oO5MJP6p7eiuGgIwv0aWV/L5Lx+OSweNeOJB3fTHo9rx9xk3GunW4kPmYU54n0SSBbPaPrqaGdrU+kgYUWa/ydHbj/K1a5qSX9L+r6863tQJdet4U2HQN5QbLEaSTXckpSbL01KyQqrYVFHnWcy60y/EI2A3NWk5mn46aDmNBjDPAgMBAAECggEAHDTcaP9Lczg4jJwww5hdq+pyAW4GnDBnsOEDq43cVpW4W8Skesf9zA72tk1o3efY22fpgN9YG4CofPsU5NbLo/GKAXBPC+4XbJ+Z/RbE2WeTm16ENPxgq8C630yNZ4J83hmZdvrwsABLUnH9GO6okXLpiMSXC+vOyURH3FKd/9eVnvPePCAE6c0rrdoVP2zMdrDhSwp4FmD2MLi9TdE7FBWpTYvh2zegmbxYRGKwLPpxq33aY3d5MgvTtqVH2W7ZdHW9uMOXCtn+Fk53tiHdlRkbrQQMzAU4M3MjA4DgMV/ZYt/8qMOxar0MZIe5ddfKVf61CzOFpAKCcETUlDm/AQKBgQD4G0jiVzCaJL1gw3/6qDkc0nC4uSNtLwwf/+l/elwbNd+mzQLYVfpQCUz0OWmnNgik8o4FellRNilnt3CXpvPQCFbvX94kPW5uQ2bIsYC8Y8WrIlB9enuMDTzCieXLw28/9feRIR2tTTYUZGMvpSVntOE9zy1zeIfn5IqL7Q3xQQKBgQCpqmGppROK4sMGMPP8+AxB35L/xP3/ACvkVNWUQj8e76zvRGcN7RVoviJJ7PtOZP30TyFihgvCptqVLOPwsR4VD2dq7yQUOJdgztsYQaVrhDLC6AetorPfx1u3b9Y13y7TPDV8x3hJC3L4kX0x4piZhN+ZpC5hKAsETiPjEaOODwKBgGTOkTqFupWmv9uFE4bAuxPe3TXw41gFeaO20yScjrfvl8OqILHNnTrPzJieizMJXVHHy7SmFYxNuV0Ox4yWpRGtkcUI6rVG0Iu0jxqUJH5m+3WhJ5sUHQa2ii1w4hF8gsM2KTSqg+haKtL2Ruag7yXH9IyslQcJvg6WaUSZOMUBAoGAAjqfz9fAWvnBsCoiendTyeXDC6Mt5xS8fuJyb+Ey7RgfAIG4jOFJf7fHwYrgflYrU/NaL+4s52DDzGPrlrTs/T/XjvsXUUCxFG+DR11NbA0vkYn0194kWNNIrC9G9Cw7dED9Pudr+CGzX/qhV29vq8yoF1+l0FbzVhoktI39xRcCgYAf4b/4KoDI15bch0AhqzNyQb2tX1IUv5NhZNnQj8Xoa4G+JTIHN9pLLMVPhGCSTz+G0wVzEP16Xw+Cwnou9x5vEwTZjsD0dvJpEv9ZWQ1nBwYAd2V9X2K54+T58NRFOqfQXH9Msz3HTjVl1LRrSpTRP1bsBzpKqsXlMcKEv7GKPQ==";
		
		// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
	    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApG8j4pJ6YxhcSkCz+6dPY4PkZdYCgoFXPrq9p/Qn/1F0CH5vND/GKTBLLPRGwk4Ii5ATJWkXVmnXxuDvvTnljlmsioFDdJJcsoIht8kHEC15trkrkuQem7MXXU421fX9MI9ca8PgAR2K1VsH8g7hn/uDeg81Ed9chfe8m/9S/aDuTCT+qe3orhoCML9Gllfy+S8fjksHjXjiQd30x6Pa8fcZNxrp1uJD5mFOeJ9EkgWz2j66mhna1PpIGFFmv8nR24/ytWuakl/S/q+vOt7UCXXreFNh0DeUGyxGkk13JKUmy9NSskKq2FRR51nMutMvxCNgNzVpOZp+Omg5jQYwzwIDAQAB";

	 // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
		public static String notify_url = "http://localhost:8080/Tmall/notify_url.do";

		// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
		public static String return_url = "http://localhost:8080/Tmall/order.do";
		// 签名方式
		public static String sign_type = "RSA2";
		
		// 字符编码格式
		public static String charset = "utf-8";
		
		// 支付宝网关
		public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
		
		// 支付宝网关
		public static String log_path = "C:\\";


	//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

