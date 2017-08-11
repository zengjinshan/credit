package com.tansun.easycare.framework.httpspider;

import com.tansun.easycare.framework.util.CreditPropertyUtil;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.AllClientPNames;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by admin on 2017/6/8.
 */
@Service("enterpriseCredit")
public class EnterpriseCredit {

    static CookieStore cookieStore = null;

    private String[] cookieNames = null;

    private String[] cookieValues = null;

    private String[] domains = null;

    private String[] paths = null;

    private int[] versions = null;

    private static Logger logger = Logger.getLogger(EnterpriseCredit.class);

    public void setCookies(HttpClient client) {
        if (cookieValues == null)
            return;

        CookieStore cstore = new BasicCookieStore();
        for (int i = 0; i < cookieNames.length; i++) {
            BasicClientCookie cookie = new BasicClientCookie(cookieNames[i], cookieValues[i]);
            cookie.setVersion(versions[i]);
            cookie.setDomain(domains[i]);
            cookie.setPath(paths[i]);

            cstore.addCookie(cookie);
        }
        ((AbstractHttpClient) client).setCookieStore(cstore);

        return;
    }

    public void getCookies(HttpClient client) {
        if (client == null)
            return;
        List cookies = ((AbstractHttpClient) client).getCookieStore().getCookies();

        if (cookies.isEmpty()) {
            logger.info("cookies None");
        } else {
            cookieNames = new String[cookies.size()];
            cookieValues = new String[cookies.size()];
            domains = new String[cookies.size()];
            paths = new String[cookies.size()];
            versions = new int[cookies.size()];
            for (int i = 0; i < cookies.size(); i++) {
                versions[i] = ((Cookie) cookies.get(i)).getVersion();
                cookieNames[i] = ((Cookie) cookies.get(i)).getName();
                cookieValues[i] = ((Cookie) cookies.get(i)).getValue();
                domains[i] = ((Cookie) cookies.get(i)).getDomain();
                paths[i] = ((Cookie) cookies.get(i)).getPath();
            }
        }
    }

    /**
     * 将cookie保存到静态变量中供后续调用
     *
     * @param httpResponse
     */
    public static void setCookieStore(HttpResponse httpResponse) {
        System.out.println("----setCookieStore");
        cookieStore = new BasicCookieStore();
        // JSESSIONID
        String setCookie = httpResponse.getFirstHeader("Set-Cookie").getValue();
        String JSESSIONID = setCookie.substring("JSESSIONID=".length(),
                setCookie.indexOf(";"));
        logger.info("JSESSIONID:" + JSESSIONID);
        // 新建一个Cookie
        BasicClientCookie cookie = new BasicClientCookie("JSESSIONID", JSESSIONID);
        cookie.setVersion(0);
        cookie.setDomain("domain");
        cookie.setPath("/xxx");
        cookieStore.addCookie(cookie);
        List<Cookie> cookies = cookieStore.getCookies();
        Cookie cookie1 = cookies.get(cookies.size() - 1);
        cookie1.getValue();
    }

    /**
     * 企业登录人行
     *
     * @param username
     * @param password
     * @return
     */
    public String login(String username, String password, String orgCode) {
        HttpClient httpClient = new DefaultHttpClient();
        String loginresult = null;
        try {
            httpClient.getParams().setIntParameter(CoreConnectionPNames.SO_TIMEOUT, Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("SO_TIMEOUT")));
            HttpPost httppost = new HttpPost(CreditPropertyUtil.instance.getPropertyValue("credit.enterprise.login.page"));
            List nvps = new ArrayList();
            nvps.add(new BasicNameValuePair("userid", username));
            nvps.add(new BasicNameValuePair("password", password));
            nvps.add(new BasicNameValuePair("orgCode", orgCode));
            httppost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));
            long b = System.currentTimeMillis();
            HttpResponse response = httpClient.execute(httppost);
            HttpEntity resEntity = response.getEntity();
            loginresult = EntityUtils.toString(resEntity);
            System.out.println("登录爬取返回结果===========："+loginresult);
            if (loginresult.indexOf("帐号被停用") != -1) {
                logger.error(username + " user is disabled!");
                loginresult = "6666";
            } else if (loginresult.indexOf("用户不存在") != -1) {
                logger.error(username + " user not exist!");
                loginresult = "7777";
            } else if (loginresult.indexOf("口令错误") != -1) {
                logger.error(username + " Password mismatched! password=" + password);
                loginresult = "8888";
            } else if (loginresult.indexOf("用户被锁定") != -1) {
                logger.error(username + " user locked!");
                loginresult = "9999";
            } else if (loginresult.indexOf("密码已经过期") != -1) {
                logger.error(username + " faild  密码已经过期!");
                loginresult = "1001";
            } else if (loginresult.indexOf("首次登录或密码被重置") != -1) {
                logger.error(username + "login failed 首次登录或密码被重置!");
                loginresult = "1002";
            } else {
                loginresult = "0000";
                this.getCookies(httpClient);
            }
            long e = System.currentTimeMillis();
            logger.info("Login for:[" + username + "time spend =" + (e - b));
            EntityUtils.consume(resEntity);
            httppost.abort();
        } catch (Exception e) {
            logger.error("login: connection fail");
            logger.error(e.getMessage(),e);
            loginresult = "0404";
        } finally {
            httpClient.getConnectionManager().shutdown();
        }
        return loginresult;
    }


    public String enterpriseSearch(Map<String, Object> map) {
        HttpClient httpclient = new DefaultHttpClient();
        String creditResult = null;
        logger.info("查询开始");
        try {
            this.setCookies(httpclient);
            httpclient.getParams().setIntParameter(CoreConnectionPNames.SO_TIMEOUT, Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("SO_TIMEOUT")));
            httpclient.getParams().setIntParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("CONNECTION_TIMEOUT")));
            HttpPost httppost = new HttpPost(CreditPropertyUtil.instance.getPropertyValue("credit.enterprise.search.page"));//http://11.156.206.11:8001/credituniontest/queryAction.do

            List nvps = new ArrayList();
            nvps.add(new BasicNameValuePair("attribute", "0"));
            nvps.add(new BasicNameValuePair("corpno", "1"));
            nvps.add(new BasicNameValuePair("creditcode", ""));
            nvps.add(new BasicNameValuePair("displayreason", "1"));
            nvps.add(new BasicNameValuePair("dsregino", ""));
            nvps.add(new BasicNameValuePair("frgcorpno", ""));
            nvps.add(new BasicNameValuePair("gsregino", ""));
            nvps.add(new BasicNameValuePair("loancardno", map.get("loancardcode")+""));
            nvps.add(new BasicNameValuePair("offline", null));
            nvps.add(new BasicNameValuePair("radioValue", "0"));
            nvps.add(new BasicNameValuePair("regitypecode", ""));
            nvps.add(new BasicNameValuePair("searchreason", map.get("searchReasonCode")+""));
            nvps.add(new BasicNameValuePair("searchType", "1"));
            nvps.add(new BasicNameValuePair("type", "20"));
            httppost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));

            long b = System.currentTimeMillis();
            HttpResponse response = httpclient.execute(httppost);

            HttpEntity resEntity = response.getEntity();
            logger.info("企业查询结束===========================");
            if (resEntity != null) {
                int reportsize = Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("credit.report.size"));//10000000
                //int reportsize = Integer.parseInt("10000000");
                int tot = 0;
                InputStream in = resEntity.getContent();
                ByteArrayOutputStream baos = null;
                try {
                    baos = new ByteArrayOutputStream();
                    byte[] buf = new byte[1024];
                    int idx = -1;
                    while ((idx = in.read(buf)) != -1) {
                        baos.write(buf, 0, idx);
                        tot += idx;
                        if (tot > reportsize) {
                            creditResult = "1402";
                            logger.info(":信用报告超过解析上限");
                            break;
                        }
                    }
                    if (!"1402".equals(creditResult)) {
                        creditResult = new String(baos.toByteArray(), "gbk");
                        //logger.info("查询结果====================:" + creditResult);
                    }
                } catch (Exception e) {
                    logger.error("获取人行征信报告异常：" + e);
                } finally {
                    if (baos != null)
                        baos.close();
                    if (in != null) {
                        in.close();
                    }
                }

            }

            EntityUtils.consume(resEntity);
            long e = System.currentTimeMillis();
            httppost.abort();
        } catch (IOException e) {
            logger.error(e);
            return "0404";
        } finally {
            // When HttpClient instance is no longer needed,
            // shut down the connection manager to ensure
            // immediate deallocation of all system resources
            httpclient.getConnectionManager().shutdown();
        }

		/*if (creditResult.indexOf("个人征信系统中没有此人的征信记录") != -1) {
            logger.info("Cann't find credit report:["+userName+"---"+certNo+"]");
			return "1403";
		} else {
			return creditResult;
		}*/
        return creditResult;
    }


    public String enterpriseSearch2(Map<String, String> map, String uri) {
        DefaultHttpClient httpclient = new DefaultHttpClient();
        String creditResult = null;
        logger.info("查询开始");
        try {
            this.setCookies(httpclient);
            httpclient.getParams().setIntParameter(CoreConnectionPNames.SO_TIMEOUT, Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("SO_TIMEOUT")));
            httpclient.getParams().setIntParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("CONNECTION_TIMEOUT")));
            uri = uri.substring(uri.lastIndexOf(File.separator) + 1);
            String rhUrl = CreditPropertyUtil.instance.getPropertyValue("credit.enterprise.search.page2") +"/"+ uri;
            logger.info("访问人行地址===============;" + rhUrl);
            HttpResponse response = null;
            List nvps = new ArrayList();
            Set<String> strings = map.keySet();
            logger.info("访问人行参数==============================================：");
            String str = "";
            HttpPost httppost = null;
            //HttpGet get=null;
            for (String s : strings) {
                logger.info("key=" + s + "=====value=" + map.get(s));
                nvps.add(new BasicNameValuePair(s, map.get(s)));
            }
            httppost = new HttpPost(rhUrl);//http://11.156.206.11:8001/credituniontest/queryAction.do
            //HttpPost httppost = new HttpPost("http://11.156.206.11:8001/credituniontest/blurqueryAction.do");
            httppost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));
            long b = System.currentTimeMillis();
            response = httpclient.execute(httppost);
            int status = response.getStatusLine().getStatusCode();
            if(status==302){
                httppost.abort();
                Header location = response.getFirstHeader("Location");
                String value = location.getValue();
                logger.info("链接重定向地址："+value);
                httppost=new HttpPost(value);
                httppost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));
                response = httpclient.execute(httppost);
            }
            HttpEntity resEntity = response.getEntity();
            logger.info("企业查询结束===========================");
            if (resEntity != null) {
                int reportsize = Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("credit.report.size"));//10000000
                //int reportsize = Integer.parseInt("10000000");
                int tot = 0;
                InputStream in = resEntity.getContent();
                ByteArrayOutputStream baos = null;
                try {
                    baos = new ByteArrayOutputStream();
                    byte[] buf = new byte[1024];
                    int idx = -1;
                    while ((idx = in.read(buf)) != -1) {
                        baos.write(buf, 0, idx);
                        tot += idx;
                        if (tot > reportsize) {
                            creditResult = "1402";
                            logger.info(":信用报告超过解析上限");
                            break;
                        }
                    }
                    if (!"1402".equals(creditResult)) {
                        creditResult = new String(baos.toByteArray(), "gbk");
                        //logger.info("查询结果====================:" + creditResult);
                    }
                } catch (Exception e) {
                    logger.error("获取人行征信报告异常：" + e);
                } finally {
                    if (baos != null)
                        baos.close();
                    if (in != null) {
                        in.close();
                    }
                }

            }

            EntityUtils.consume(resEntity);
            long e = System.currentTimeMillis();
            httppost.abort();
        } catch (IOException e) {
            logger.error(e);
            return "0404";
        } finally {
            httpclient.getConnectionManager().shutdown();
        }
        return creditResult;
    }


    public InputStream enterpriseSearch3(Map<String, String> map, String uri) {
        DefaultHttpClient httpclient = new DefaultHttpClient();
        String creditResult = null;
        InputStream in=null;
        logger.info("查询开始");
        try {
            HttpHost proxy = new HttpHost(CreditPropertyUtil.instance.getPropertyValue("credit.person.login.proxyip"),
                    Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("credit.person.login.proxyport")));
            this.setCookies(httpclient);
            System.out.println("查询的cookie为："+cookieValues[cookieValues.length-1]);
            System.out.println("cookie共有："+cookieValues.length+"个=======分别为:"+cookieValues);
            httpclient.getParams().setIntParameter(CoreConnectionPNames.SO_TIMEOUT, Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("SO_TIMEOUT")));
            httpclient.getParams().setIntParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("CONNECTION_TIMEOUT")));
            uri = uri.substring(uri.lastIndexOf(File.separator) + 1);
            String rhUrl = CreditPropertyUtil.instance.getPropertyValue("credit.enterprise.search.page2") +"/"+ uri;
            logger.info("访问人行地址===============;" + rhUrl);
            HttpResponse response = null;
            List nvps = new ArrayList();
            Set<String> strings = map.keySet();
            logger.info("访问人行参数==============================================：");
            String str = "";
            HttpPost httppost = null;
            HttpGet get=null;
            for (String s : strings) {
                logger.info("key=" + s + "=====value=" + map.get(s));
                nvps.add(new BasicNameValuePair(s, map.get(s)));
            }
            str = EntityUtils.toString(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));
            get=new HttpGet(rhUrl+"?"+str);
            logger.info("下载链接============="+rhUrl+"?"+str);
            long b = System.currentTimeMillis();
            response = httpclient.execute(get);
            int status=response.getStatusLine().getStatusCode();
            logger.info("请求返回状态码=============================："+status);
            HttpEntity resEntity = response.getEntity();
            logger.info("企业查询结束===========================");
        /*    if (resEntity != null) {
                int reportsize = Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("credit.report.size"));//10000000
                //int reportsize = Integer.parseInt("10000000");
                int tot = 0;
                InputStream in = resEntity.getContent();
                ByteArrayOutputStream baos = null;
                try {
                    baos = new ByteArrayOutputStream();
                    byte[] buf = new byte[1024];
                    int idx = -1;
                    while ((idx = in.read(buf)) != -1) {
                        baos.write(buf, 0, idx);
                        tot += idx;
                        if (tot > reportsize) {
                            creditResult = "1402";
                            logger.info(":信用报告超过解析上限");
                            break;
                        }
                    }
                    if (!"1402".equals(creditResult)) {
                        creditResult = new String(baos.toByteArray(), "gbk");
                        //logger.info("查询结果====================:" + creditResult);
                    }
                } catch (Exception e) {
                    logger.error("获取人行征信报告异常：" + e);
                } finally {
                    if (baos != null)
                        baos.close();
                    if (in != null) {
                        in.close();
                    }
                }

            }*/

            //EntityUtils.consume(resEntity);
            in=resEntity.getContent();
            long e = System.currentTimeMillis();
            get.abort();
         /*   if(method.equalsIgnoreCase("POST")){
                httppost.abort();
            }*/
          /*  if(method.equalsIgnoreCase("GET")){
                get.abort();
            }*/
        } catch (IOException e) {
            logger.error(e);
        } finally {
            // When HttpClient instance is no longer needed,
            // shut down the connection manager to ensure
            // immediate deallocation of all system resources
            httpclient.getConnectionManager().shutdown();
        }

		/*if (creditResult.indexOf("个人征信系统中没有此人的征信记录") != -1) {
			logger.info("Cann't find credit report:["+userName+"---"+certNo+"]");
			return "1403";
		} else {
			return creditResult;
		}*/
        return in;
    }
}
