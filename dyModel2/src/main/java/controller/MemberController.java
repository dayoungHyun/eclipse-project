package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.dymemberDAO;
import kic.mskim.MskimRequestMapping;
import kic.mskim.RequestMapping;
import model.dymember;

@WebServlet("/member/*")
public class MemberController extends MskimRequestMapping{
	HttpSession session;
	
	@Override
	   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      session=request.getSession();
	      System.out.println("service");
	      super.service(request, response);
	   }
	@RequestMapping("index")
	   public String index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      return "/view/index.jsp";   
	   }
	
	@RequestMapping("home")
	   public String home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      return "/view/member/home.jsp";   
	   }
	@RequestMapping("join")
	   public String join(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   return "/view/member/join.jsp";
	   }
	@RequestMapping("joinPro")
	   public String joinPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException {

		      request.setCharacterEncoding("utf-8");
		      String id = request.getParameter("id");
		      String password = request.getParameter("password");
		      String name = request.getParameter("name");
		      int birthyear = Integer.parseInt(request.getParameter("birthyear"));
		      int birthmonth = Integer.parseInt(request.getParameter("birthmonth"));
		      int birthdate = Integer.parseInt(request.getParameter("birthdate"));
		      int gender = Integer.parseInt(request.getParameter("gender"));
		      String email = request.getParameter("email");
		      String phone = request.getParameter("phone");
		      
		      //1. 드라이버셋팅
		      Class.forName("oracle.jdbc.OracleDriver"); //자료 있는지 확인
		      
		      dymemberDAO dao = new dymemberDAO();
		      dymember dy = new dymember();
		      dy.setId(id);
		      dy.setPassword(password);
		      dy.setName(name);
		      dy.setBirthyear(birthyear);
		      dy.setBirthmonth(birthmonth);
		      dy.setBirthdate(birthdate);
		      dy.setGender(gender);
		      dy.setEmail(email);;
		      dy.setPhone(phone);
		      
		      int num = dao.insertMember(dy);
		      
		      String msg="";
		      String url="";
		      System.out.println(num);
		      if(num>0){
			         msg=name+"님의 회원가입이 완료되었습니다.";
			         url="login";
			      }else{
			         msg="회원가입이 실패하였습니다.";
			         url="join";
			      }
			      
			      request.setAttribute("msg", msg);
			      request.setAttribute("url", url);
			      
			      return "/view/alert.jsp";
			   
		   }
	 @RequestMapping("joinInfo")
	   public String joinInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
	      String id = (String)session.getAttribute("id");
	      dymemberDAO dao = new dymemberDAO();
	      dymember dy = dao.getMember(id);
	      
	      request.setAttribute("dy", dy);

	      return "/view/member/joinInfo.jsp";   
	   }
	@RequestMapping("login")
	   public String login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      return "/view/member/login.jsp";   
	   }
	@RequestMapping("logout")
	   public String logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		   session.invalidate(); 
		   request.setAttribute("msg", "로그아웃 되었습니다");
		   request.setAttribute("url", "index");
		   return "/view/alert.jsp";
		  
	   }
	@RequestMapping("loginPro")
	   public String loginPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   request.setCharacterEncoding("utf-8");
		   
		   String id = request.getParameter("id");
		   String password = request.getParameter("password");
		   //Connection 객체 
		   dymemberDAO  dao = new dymemberDAO(); //DTO bean
		   String msg=id +"님이 로그인 하셨습니다";
		   String url="home   ";
		   dymember dy = dao.getMember(id);
		     if (dy!=null) {
		   	if (password.equals(dy.getPassword())) {
		   		session.setAttribute("id", id);
		   	} else {
		   		msg="비밀번호가 맞지 않습니다";
		   		url="login";	}
		   } else {
		   	msg="id를 확인 하세요";	url="login";}
		   
		     
		   request.setAttribute("msg", msg);
		   request.setAttribute("url", url);
		   return "/view/alert.jsp";
	   }
	@RequestMapping("memberUpdateForm")
	   public String memberUpdateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		   String id = (String)session.getAttribute("id");
		   dymemberDAO dao = new dymemberDAO();
		   dymember dy = dao.getMember(id);
		   System.out.println(dy);
		   request.setAttribute("dy", dy);
		   return "/view/member/memberUpdateForm.jsp";
	   }
	@RequestMapping("memberUpdatePro")
	   public String memberUpdatePro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   request.setCharacterEncoding("utf-8");
		   
		   String id = (String) session.getAttribute("id");
		   String password = request.getParameter("password");
		   String name = request.getParameter("name");
		   int birthyear = Integer.parseInt(request.getParameter("birthyear"));
		   int birthmonth = Integer.parseInt(request.getParameter("birthmonth"));
		   int birthdate = Integer.parseInt(request.getParameter("birthdate"));
		   int gender = Integer.parseInt(request.getParameter("gender"));
		   String phone = request.getParameter("phone");
		   String email = request.getParameter("email");
		  
		   dymemberDAO dao = new dymemberDAO();
		   dymember dy = new dymember();
		   dymember dydb = dao.getMember(id);

		   dy.setId(id);
		   dy.setPassword(password);
		   dy.setName(name);
		   dy.setBirthyear(birthyear);
		   dy.setBirthmonth(birthmonth);
		   dy.setBirthdate(birthdate);
		   dy.setGender(gender);
		   dy.setPhone(phone);
		   dy.setEmail(email);
		   String msg = "";
		   String url = "memberUpdateForm";

		   if (dydb!=null){
		   	if (dydb.getPassword().equals(password)){
		   		msg="수정 하였습니다.";
		   		dao.updateMember(dy);
		   		url="joinInfo";
		   	} else {
		   		msg="비밀번호가 틀렸습니다.";
		   	}

		   }else {
		   	msg="수정 할 수 없습니다.";
		   }

		   request.setAttribute("msg", msg);
		   request.setAttribute("url", url);
		   return "/view/alert.jsp";
	   }
	 @RequestMapping("memberDeleteForm")
	   public String memberDeleteForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      return "/view/member/memberDeleteForm.jsp";
	   }
	 @RequestMapping("memberDeletePro")
	   public String memberDeletePro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      request.setCharacterEncoding("utf-8");
	      
	      String id = (String) session.getAttribute("id");
	      String password = request.getParameter("password");
	      dymemberDAO dao = new dymemberDAO();
	      dymember dydb = dao.getMember(id);

	      String msg = "";
	      String url = "memberDeleteForm";

	      if (dydb!=null){
	         if (dydb.getPassword().equals(password)) {
	            msg="탈퇴 하였습니다";
	            session.invalidate();
	            dao.deleteMember(id);   
	            url="login";
	         } else {
	            msg="비밀번호가 틀렸습니다";
	         }
	         
	         
	      } else {
	         msg="탈퇴 할 수 없습니다";
	      }
	      
	      request.setAttribute("msg", msg);
	      request.setAttribute("url", url);
	      
	      return "/view/alert.jsp";
	   }
	 @RequestMapping("memberPassForm")
	   public String memberPassForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      return "/view/member/memberPassForm.jsp";
	 }
	 @RequestMapping("memberPassPro")
	   public String memberPassPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		   String id = (String) session.getAttribute("id");
		   String password = request.getParameter("password");
		   String chgpass = request.getParameter("chgpass");

		   dymemberDAO dao = new dymemberDAO();
		   dymember dydb = dao.getMember(id);
		   

		   String msg = "";
		   String url = "memberPassForm";

		   if (dydb!=null){
		   	if (dydb.getPassword().equals(password)){
		   		msg="비밀번호를 수정 하였습니다.";
		   		session.invalidate();
		   		dao.chgPassMember(id, chgpass); 
		   		url="login";
		   	} else {
		   		msg="비밀번호가 틀렸습니다.";
		   	}

		   }else {
		   	msg="탈퇴 할 수 없습니다.";
		   }
		   request.setAttribute("msg", msg);
		   request.setAttribute("url", url);
		      
		   return "/view/alert.jsp";
		      
	   }
	 @RequestMapping("memberList")
	   public String memberList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       
		   dymemberDAO dao = new dymemberDAO();
		   List<dymember> li = dao.memberList();
		   request.setAttribute("li", li);
		   return "/view/member/memberList.jsp";
	   }
			

}
