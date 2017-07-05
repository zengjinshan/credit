package com.tansun.easycare.modules.sys.service;

import java.util.Collection;
import java.util.List;

import org.apache.shiro.session.Session;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.security.shiro.session.SessionDAO;
import com.tansun.easycare.core.service.BaseService;
import com.tansun.easycare.modules.sys.entity.Menu;
import com.tansun.easycare.modules.sys.entity.Role;
import com.tansun.easycare.modules.sys.entity.User;

/**
 * 系统管理，安全相关实体的管理类,包括用户、角色、菜单.
 * @author caojianfeng
 * @version 2013-12-05
 */
public interface SystemService extends BaseService {
	
	public SessionDAO getSessionDao();

	//-- User Service --//
	
	/**
	 * 获取用户
	 * @param id
	 * @return
	 */
	public User getUser(String id);

	/**
	 * 根据登录名获取用户
	 * @param loginName
	 * @return
	 */
	public User getUserByLoginName(String loginName);
	
	public Page<User> findUser(Page<User> page, User user);
	
	/**
	 * 无分页查询人员列表
	 * @param user
	 * @return
	 */
	public List<User> findUser(User user);

	/**
	 * 通过部门ID获取用户列表，仅返回用户id和name（树查询用户时用）
	 * @param user
	 * @return
	 */
	public List<User> findUserByOfficeId(String officeId);
	
	public void saveUser(User user);
	
	public void updateUserInfo(User user);
	
	public void deleteUser(User user);
	
	public void updatePasswordById(String id, String loginName, String newPassword);
	
	public void updateUserLoginInfo(User user);
	
	/**
	 * 生成安全的密码，生成随机的16位salt并经过1024次 sha-1 hash
	 */
	public String entryptPassword(String plainPassword);
	
	/**
	 * 验证密码
	 * @param plainPassword 明文密码
	 * @param password 密文密码
	 * @return 验证成功返回true
	 */
	public boolean validatePassword(String plainPassword, String password);
	
	/**
	 * 获得活动会话
	 * @return
	 */
	public Collection<Session> getActiveSessions();
	
	//-- Role Service --//
	
	public Role getRole(String id);

	public Role getRoleByName(String name);
	
	public Role getRoleByEnname(String enname);
	
	public List<Role> findRole(Role role);
	
	public List<Role> findAllRole();
	
	public void saveRole(Role role);

	public void deleteRole(Role role);
	
	public Boolean outUserInRole(Role role, User user);
	
	public User assignUserToRole(Role role, User user);

	//-- Menu Service --//
	
	public Menu getMenu(String id);

	public List<Menu> findAllMenu();
	
	public void saveMenu(Menu menu);

	public void updateMenuSort(Menu menu);

	public void deleteMenu(Menu menu);
	
	/**
	 * 获取Key加载信息
	 */
//	public boolean printKeyLoadMessage();
	
}
