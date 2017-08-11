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
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by admin on 2017/6/8.
 */
@Service("personCredit")
public class PersonCredit {

    private String[] cookieNames = null;

    private String[] cookieValues = null;

    private String[] domains = null;

    private String[] paths = null;

    private int[] versions = null;

    private static Logger logger = Logger.getLogger(PersonCredit.class);


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
     * 个人登录人行
     * @param username
     * @param password
     * @return
     */
    public String login(String username,String password){
        HttpClient httpClient=new DefaultHttpClient();
        String loginresult = null;
        try{
            httpClient.getParams().setIntParameter(CoreConnectionPNames.SO_TIMEOUT, Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("SO_TIMEOUT")));
            HttpPost httppost = new HttpPost(CreditPropertyUtil.instance.getPropertyValue("credit.person.login.page"));
            List nvps = new ArrayList();
            nvps.add(new BasicNameValuePair("userid", username));
            nvps.add(new BasicNameValuePair("password", password));
            httppost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));
            long b = System.currentTimeMillis();
            HttpResponse response = httpClient.execute(httppost);
            HttpEntity resEntity = response.getEntity();
            loginresult = EntityUtils.toString(resEntity);
            logger.info("登录代码执行完成。结果返回=================："+loginresult);

            if (loginresult.indexOf("帐号被停用")!=-1){
                logger.info(username+ " user is disabled!");
                loginresult = "6666";
            }else if (loginresult.indexOf("用户不存在")!=-1){
                logger.info(username+" user not exist!");
                loginresult = "7777";
            }else if (loginresult.indexOf("口令错误")!= -1){
                logger.info(username+" Password mismatched! password="+password);
                loginresult = "8888";
            }else if (loginresult.indexOf("用户被锁定")!= -1){
                logger.info(username+" user locked!");
                loginresult = "9999";
            }else if(loginresult.indexOf("密码已经过期")!= -1) {
                logger.info(username+" faild  密码已经过期!");
                loginresult = "1001";
            }else if(loginresult.indexOf("首次登录或密码被重置")!= -1) {
                logger.info(username+"login failed 首次登录或密码被重置!");
                loginresult = "1002";
            }else if(loginresult.indexOf("用户名或密码错误")!= -1) {
                logger.info(username+"login failed 用户名或密码错误!");
                loginresult = "1003";
            }else{
                loginresult ="0000";
                this.getCookies(httpClient);
            }
            long e = System.currentTimeMillis();
            logger.info("Login for:["+username  + "time spend =" + (e-b));
            EntityUtils.consume(resEntity);
            httppost.abort();
        }catch (Exception e){
            e.printStackTrace();
            logger.info("login: connection fail");
            loginresult = "0404";
        } finally {
            httpClient.getConnectionManager().shutdown();
        }
        return loginresult;
    }


    public String personSearch(String certType, String certNo, String userName, String reason,String verType,String queryType ){
        HttpClient httpclient = new DefaultHttpClient();
        String creditResult = null;
        logger.info("查询开始");
        try {
            this.setCookies(httpclient);

            httpclient.getParams().setIntParameter(CoreConnectionPNames.SO_TIMEOUT, Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("SO_TIMEOUT")));
            httpclient.getParams().setIntParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("CONNECTION_TIMEOUT")));

            HttpPost httppost = new HttpPost(CreditPropertyUtil.instance.getPropertyValue("credit.person.search.page"));//http://11.156.206.11:8001/credituniontest/queryAction.do
            List nvps = new ArrayList();

            nvps.add(new BasicNameValuePair("username", userName));
            nvps.add(new BasicNameValuePair("certype", certType));
            nvps.add(new BasicNameValuePair("cercode", certNo));
            nvps.add(new BasicNameValuePair("queryreason", reason));
            nvps.add(new BasicNameValuePair("vertype", verType));
            nvps.add(new BasicNameValuePair("idauthflag",queryType));
            nvps.add(new BasicNameValuePair("policetype","0"));
            logger.info("条件：username:"+userName+"  cerType:"+certType+":cercode:"+certNo+"queryreason:"+reason
            +"vertype:"+verType+" idauthflag:"+queryType+"policetype:0");

            httppost.setEntity(new UrlEncodedFormEntity(nvps, HTTP.UTF_8));

            long b = System.currentTimeMillis();
            HttpResponse response = httpclient.execute(httppost);

            logger.info("个人查询结束===========================");

            HttpEntity resEntity = response.getEntity();


            if (resEntity != null) {
                int reportsize = Integer.parseInt(CreditPropertyUtil.instance.getPropertyValue("credit.report.size"));//10000000
                int tot = 0;
                InputStream in = resEntity.getContent();
                ByteArrayOutputStream baos = null;
                try{
                    baos = new ByteArrayOutputStream();
                    byte[] buf = new byte[1024];
                    int idx = -1;
                    while ((idx = in.read(buf)) != -1) {
                        baos.write(buf, 0, idx);
                        tot += idx;
                        if (tot > reportsize){
                            creditResult = "1402";
                            logger.info(certNo+":信用报告超过解析上限");
                            break;
                        }
                    }
                    if (!"1402".equals(creditResult)){
                        creditResult = new String(baos.toByteArray(),"gbk");
                        logger.info("查询结果====================:"+creditResult);
                    }
                }catch(Exception e){
                    logger.info("获取人行征信报告异常："+e);
                }
                finally{
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
            logger.info(e);
            return "0404";
        } finally {
            httpclient.getConnectionManager().shutdown();
        }
        return creditResult;
    }
}
