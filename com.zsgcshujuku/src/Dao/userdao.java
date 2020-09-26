package Dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;

import util.DBUtil;
import com.newjavaweb.User;

public class userdao {
	
	public boolean add(User user) {
		String sql = "insert into text(name,shenfen,jiguan,dianhua,chusheng,zhuanye,beizhu)"
				+ "values('"  + user.getName() + "','" + user.getShenfen()+ "','" + user.getJiguan()  + "','" + user.getDianhua()+ "','" + user.getChusheng()+ "','" + user.getZhuanye()+ "','" +  user.getBeizhu()+ "')";
		Connection conn = DBUtil.getConn();//���÷����������ݿ�
		Statement state = null;//����һ��Statement������ִ�о�̬��SQL���
		//Statement�������Ѿ��������ݿ������Ϸ��;�̬��SQL���
		boolean f = false;
		int a = 0 ;
		
		try {       //���Ӵ������ڵĴ���
			state = conn.createStatement();//����������
			a = state.executeUpdate(sql);
			//ִ��ָ���ĸ������SQl��䣬�����ز������������ֵ
		} catch (Exception e) {     //�������
			e.printStackTrace();
		} finally {
			//�ر�z	����
			DBUtil.close(state, conn);
		}
		
		if (a > 0) {
			f = true;
		}
		return f;
	}
	
	
	public static List<User> loadview(String sql) {
		// TODO Auto-generated method stub
		String sql1="select * from text "+ sql;
		List<User> list =new ArrayList<User>();
		Connection con=null;
		PreparedStatement psts=null;
		ResultSet rs=null;
			try 
			{
				con=DBUtil.getConn();
				//String sql="select * from course";
				psts=con.prepareStatement(sql1);
				rs=psts.executeQuery();//��¼���صĽ��
				while(rs.next()) 
				{
				
					String name=rs.getString("name");
					String shenfen=rs.getString("shenfen");
					String jiguan=rs.getString("jiguan");
					String dianhua=rs.getString("dianhua");
					String chusheng=rs.getString("chusheng");
					String zhuanye=rs.getString("zhuanye");
					String beizhu=rs.getString("beizhu");
					
					User yi=new User(name,shenfen,jiguan,dianhua,chusheng,zhuanye,beizhu);
					list.add(yi);
				}
			
				DBUtil.close(rs, psts, con);
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			} 

		return list;
	}
		//return null;

	
	
	
	public String find(String name)
	{
		String sql = "select * from text where ";
		if (name!= "") {
			sql += "name like '" + name +"'";
		}
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		String username2="@";
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				
				username2 = rs.getString("name");
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
		return username2;
	}
	
	
	
	
	
	
	
	
	
	
	
	public String search(String name) {
		String sql = "select * from text where ";
		if (name!= "") {
			sql += "name like '%" + name + "%'";
		}
		
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		String name2 = "@";
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				
				name2 = rs.getString("name");
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
		
		return name2;
	}
	
	
	public String search1(String name,String id,String chusheng) {
		String sql="";
		if (name!= "") {
			sql = "select * from text where name like '%" + name + "%'";
		}
		else if(id!="")
		{
			int wen=Integer.parseInt(id);
			 sql = "select * from text where id  like '%" + wen + "%'";
		}
		else if(chusheng!="")
		{
			 sql = "select * from text where chusheng like '%" + chusheng + "%'";
		}
		
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs = null;
		String name2 = "@";
		try {
			state = conn.createStatement();
			rs = state.executeQuery(sql);
			while (rs.next()) {
				
				name2 = rs.getString("name");
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, state, conn);
		}
		
		return name2;
	}
	
	public List<User> examine(String name1) throws ServletException, IOException {
		String sql = "select * from text where ";
		if (name1!= "") {
			sql += "name like '%" + name1 + "%'";
		}
		System.out.println(name1+"  ����dao");
		List<User> list1 = new ArrayList<>();
		Connection conn = DBUtil.getConn();
		Statement state = null;
		ResultSet rs1 = null;
		try {
			state = conn.createStatement();
			rs1 = state.executeQuery(sql);
			while (rs1.next()) {
			String name=rs1.getString("name");
			System.out.println(name+"   ����dao2");
			String shenfen=rs1.getString("shenfen");
			String jiguan=rs1.getString("jiguan");
			String dianhua=rs1.getString("dianhua");
			String chusheng=rs1.getString("chusheng");
			String zhuanye=rs1.getString("zhuanye");
			String beizhu=rs1.getString("beizhu");
			User bean2 = new User(name,shenfen,jiguan,dianhua,chusheng,zhuanye,beizhu);
            list1.add(bean2);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs1, state, conn);
		}
		return list1;
	}
	
	public List<User>  theall() {
        String sql = "select * from text";//ȫ��
         List<User> list = new ArrayList<>();
        Connection conn = DBUtil.getConn();
        Statement state = null;
         ResultSet rs = null;
        try {
             state = conn.createStatement();
             rs = state.executeQuery(sql);
           User bean = null;
             while (rs.next()) {
                 String name = rs.getString("name");
                 String shenfen = rs.getString("shenfen");
                 String jiguan = rs.getString("jiguan");
                 String dianhua = rs.getString("dianhua");
                 String chusheng= rs.getString("chusheng");
                 String zhuanye = rs.getString("zhuanye");
                 String beizhu = rs.getString("beizhu");
                 bean = new User(name,shenfen,jiguan,dianhua,chusheng,zhuanye,beizhu);
                 list.add(bean);
            }
         } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(rs, state, conn);
         }
        return list;
    }
	
	
	
	
	public boolean delete (String  name) {
	     boolean f = false;
		 String sql = "delete from text where name='" + name + "'";
		 Connection conn = DBUtil.getConn();
		 Statement state = null;
		 int a = 0;      
		 try {
		  state = conn.createStatement();
		  a = state.executeUpdate(sql);
		      } catch (SQLException e) {
		             e.printStackTrace();
		      }
		      finally {
		      DBUtil.close(state, conn);
		     }
		        
		       if (a > 0) {
		             f = true;
		         }
		         return f;
		    }


	
	 public User getUserbyzhanghu(String name5) {
		         String sql = "select * from text where name ='" + name5 + "'";
		         Connection conn = DBUtil.getConn();
		         Statement state = null;
		         ResultSet rs = null;
		         User user3 = null;
		         try {
		            state = conn.createStatement();
		           rs = state.executeQuery(sql);
		           while (rs.next()) {
		                 String name = rs.getString("name");
		                 String shenfen = rs.getString("shenfen");
		                 String jiguan = rs.getString("jiguan");
		                 String dianhua = rs.getString("dianhua");
		                 String chusheng= rs.getString("chusheng");
		                 String zhuanye = rs.getString("zhuanye");
		                 String beizhu = rs.getString("beizhu");
		                 user3= new User(name,shenfen,jiguan,dianhua,chusheng,zhuanye,beizhu);
		           }
		          } catch (Exception e) {
		             e.printStackTrace();
		          } finally {
		             DBUtil.close(rs, state, conn);
		          }
		          return user3;
		     }

	public boolean update(User user,String zh) 
		{
			String sql="update text set name='" + user.getName() + "',shenfen='" + user.getShenfen() + "',jiguan='" + user.getJiguan() + "',dianhua='" + user.getDianhua() + "',chusheng='" + user.getChusheng() + "',zhuanye='" + user.getZhuanye() + "',beizhu='" + user.getBeizhu() + "' where name='" + zh + "'";
			 Connection conn = DBUtil.getConn();
		        Statement state = null;
		        boolean f = false;
		        int a = 0;

		        try {
		            state = conn.createStatement();
		            a = state.executeUpdate(sql);
		        } catch (SQLException e) {
		            e.printStackTrace();
		        } finally {
		            DBUtil.close(state, conn);
		        }
		        
		        if (a > 0) {
		            f = true;
		        }
		        return f;
		}
}
