package servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.newjavaweb.User;
import Dao.userdao;


import java.util.List;
/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	static String wen;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    userdao dao = new userdao();
    
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		if ("add".equals(method)) 
		{
			add(req, resp);
		} 
		else if("search".equals(method)) 
		{
			search(req, resp);
		} 
		else if("examine".equals(method))
		{
			examine(req,resp);
		}
		else if("delete".equals(method))
		{
			delete(req,resp);
		}
		else if("allall".equals(method))
		{
			allall(req,resp);
		}
		else if("look".equals(method))
		{
			look(req,resp);
		}
		else if("update".equals(method))
		{
			update(req,resp);
		}
		else if("deletecheck".equals(method))
		{
			deletecheck(req,resp);
		}
		else if("examine33".equals(method))
		{
			examine33(req,resp);
		}
	}
	
	
	private void search(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		
		String zhanghu = req.getParameter("zhanghu");
		String psw = req.getParameter("psw");
		String rpassword = dao.search(zhanghu);
		String yanzheng1=req.getParameter("code");
		String yanzheng=(String)req.getSession().getAttribute("code");

		if(!yanzheng1.equals(yanzheng))
		{
			req.setAttribute("message", "验证码错误");
			req.getRequestDispatcher("login.jsp").forward(req,resp);
		}
		
		if(psw.equals(rpassword)) {
			//JOptionPane.showMessageDialog(null,"登陆成功！");
			req.setAttribute("message", "登陆成功！");
			req.getRequestDispatcher("NewFile.jsp").forward(req,resp);
		}
		else {
			//JOptionPane.showMessageDialog(null,"账号不存在或密码错误！");
			req.setAttribute("message", "账号不存在或密码错误！");
			req.getRequestDispatcher("login.jsp").forward(req,resp);
		}	
	}
	
	
	private void add(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		// TODO Auto-generated method stub
		String name = req.getParameter("name");
		System.out.println(name+"   增加的收");
		String shenfen=req.getParameter("shenfen");
		String jiguan=req.getParameter("jiguan");
		String dianhua=req.getParameter("dianhua");
		String chusheng=req.getParameter("chusheng");
		String zhuanye=req.getParameter("zhuanye");
		String beizhu=req.getParameter("beizhu");
		User user= new User(name,shenfen,jiguan,dianhua,chusheng,zhuanye,beizhu);
		
		String rusername = dao.find(name);
		
		if(!name.equals(rusername)) {
			dao.add(user);
			
			req.setAttribute("message", "添加成功!");
			req.getRequestDispatcher("UserServlet?method=allall").forward(req, resp);
		}else {
			
			req.setAttribute("message", "账户重复，请重新输入!");
			req.getRequestDispatcher("zc.jsp").forward(req, resp);
		}
	}

	
	
	private void deletecheck(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		req.setCharacterEncoding("utf-8");
		String name =req.getParameter("name4");
		String rusername = dao.find(name);
		if(!name.equals(rusername)) 
		{
			req.setAttribute("message", "用户不存在请重新输入");
			req.getRequestDispatcher("delete.jsp").forward(req, resp);
			return;
		}
		List<User> Thething1 =dao.examine(name);
		req.setAttribute("Thething1", Thething1);
		req.getRequestDispatcher("deletecheck2.jsp").forward(req, resp);
	}

	
	
	private void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		     req.setCharacterEncoding("utf-8");
		     String name =req.getParameter("name");
             boolean wen=dao.delete(name);
             if(wen)
             {
            	 req.setAttribute("message", "删除成功！");
    		     req.getRequestDispatcher("delete1.jsp").forward(req,resp);
             }
             else
             {
            	 req.setAttribute("message", "此用户不存在，删除失败");
    		     req.getRequestDispatcher("delete.jsp").forward(req,resp);
             }
		     
		  }
	
	
	
	private void examine(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		req.setCharacterEncoding("utf-8");
		String name =req.getParameter("name3");
		String id=req.getParameter("id3");
		String chusheng =req.getParameter("chusheng3");
	    System.out.println("jicbwieciw"+id);
		String rusername=dao.search1(name,id,chusheng);
		
		if(name.equals("@")) 
		{
			req.setAttribute("message", "用户不存在请重新输入");
			
			
	   req.getRequestDispatcher("Examine.jsp").forward(req, resp);
			return;
		}
		List<User> Thething =dao.examine(rusername);
		req.setAttribute("Thething", Thething);
		req.getRequestDispatcher("examine1.jsp").forward(req, resp);
	}
	private void examine33(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		req.setCharacterEncoding("utf-8");
		String name =req.getParameter("name");
		System.out.println(name+"  这是真的");
		List<User> Thething2 =dao.examine(name);
		System.out.println(Thething2+"   我去");
		req.setAttribute("Thething2", Thething2);
		req.getRequestDispatcher("examine2.jsp").forward(req, resp);
	}
	
	
	private void allall(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		 req.setCharacterEncoding("utf-8");
		 List<User> allthing = dao.theall();
		 req.setAttribute("allthing", allthing);
		 req.getRequestDispatcher("checkall.jsp").forward(req,resp);
	}
	private void look(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		req.setCharacterEncoding("utf-8");
	    String name5 = req.getParameter("name5");
	    wen=name5;
	    String q1=dao.find(name5);
	    if(q1.equals("@"))
	    {
	    	req.setAttribute("message", "此用户不存在，不能进行修改");
	    	req.getRequestDispatcher("updatesome.jsp").forward(req,resp);
	    	return;
	    }
		User user3 = dao.getUserbyzhanghu(name5);
		req.setAttribute("user3", user3);
		req.getRequestDispatcher("updatesome1.jsp").forward(req,resp);
	}
	
	private void update(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException
	{
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("name6");
		String shenfen=req.getParameter("shenfen6");
		String jiguan=req.getParameter("jiguan6");
		String dianhua=req.getParameter("dianhua6");
		String chusheng=req.getParameter("chusheng6");
		String zhuanye=req.getParameter("zhuanye6");
		String beizhu=req.getParameter("beizhu6");
		
		User user= new User(name,shenfen,jiguan,dianhua,chusheng,zhuanye,beizhu);	
		dao.update(user,name);
		req.setAttribute("message", "修改成功");
		req.getRequestDispatcher("updatesome2.jsp").forward(req,resp);
	}
}