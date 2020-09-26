package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.userdao;
import com.newjavaweb.User;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("textml;charset=utf-8");
        userdao dao=new userdao();
		java.util.List<User> list= new ArrayList<User>();
		String p[] = new String[3];//获得条件
    	String s[] = new String[3];//获得内容
    	String g[] = new String[3];//获得关系
    	String f[] = new String[3];//获得精确或者模糊
    	String number = null;

    	//String number1 = null;
    	number=request.getParameter("number1");
    	//number1=request.getParameter("number2");
    	int n = Integer.parseInt(number);//接收条件的个数
    	//int n1 = Integer.parseInt(number1);//   յĹ ϵ ĸ   
    	for(int i=1;i<=n;i++)
    	{
    		p[i]= (String) request.getParameter("s"+i);
    		s[i]=(String)request.getParameter("shuru"+i);
    		f[i]=(String)request.getParameter("c"+i);
    		
    		System.out.println("精确还是模糊   "+f[i]);
    		System.out.println("条件   "+p[i]);
    		System.out.println("输入    "+s[i]);
    		
    		if(p[i].equals("名字"))
    		{
    			p[i] = "name";
    		}
    		else if(p[i].equals("学生编号"))
    		{
    			p[i] = "id";
    		}else if(p[i].equals("出生年月"))
    		{
    			p[i] = "chusheng";
    		}
    		
    		
    	}
    	
    	for(int i=1;i<n;i++)
    	{
    		g[i]=(String) request.getParameter("g"+i);
    		if(g[i].equals("且")) {
    			g[i]="and";
    		}else if(g[i].equals("或")) {
    			g[i]="or";
    		}
    		
    		System.out.println("且或"+g[i]);
    	}
    	
    	String sql="where ";
    	for(int i=1;i<n;i++)
    	{
    		if(s[i].equals(""))
    		{
    			continue;
    		}
    		if(f[i].equals("精确"))
    		{
    			sql=sql+p[i]+"='"+s[i]+"'"+" "+g[i]+" ";
    		}else if(f[i].equals("模糊"))
    		{
    			sql=sql+p[i]+" "+"LIKE"+" "+"'%"+s[i]+"%'"+" "+g[i]+" ";
    		}
    		
    	}
    	
    	if(f[n].equals("精确")) 
    	{
    		sql = sql + p[n]+"="+"'"+s[n]+"'";	
    	}
    	
    	else {
    		sql = sql + p[n]+" "+"LIKE"+" "+"'%"+s[n]+"%'";	
    	}
//	}
    	if(n==1&&s[1].equals(""))
    	{
    		System.out.println("什么也没传！");
    		sql="";
    	}
    	list = dao.loadview(sql);
	    	
	    	if(list.size()!=0) {
	    	request.setAttribute("course11",list); 
			request.setAttribute("message", "查询成功");
			request.getRequestDispatcher("selectmore_show.jsp").forward(request,response);
	    	}
	    	else {
	    		request.setAttribute("message", "查询失败。不存在此为学生");
	    		request.getRequestDispatcher("selectmore.jsp").forward(request,response);
	    	}
//    	HttpSession session = request.getSession();
//		session.setAttribute("tiaojian", list);
////	    	int servletid=1;
////    		request.setAttribute("list", list);
////    		request.setAttribute("servletid", servletid);
//    	try {
////    		request.getRequestDispatcher("/admin/123.jsp").forward(request, response);
//			response.sendRedirect(request.getContextPath()+"ow.jsp");
//		} catch (IOException e) {
//			// TODO  Զ    ɵ  catch   
//			e.printStackTrace();
//		} 
		
		
	}
		
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
