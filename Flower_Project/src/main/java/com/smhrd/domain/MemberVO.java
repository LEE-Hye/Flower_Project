package com.smhrd.domain;

public class MemberVO {
   private String id;
   private String pw;
   private String name;
   private String birth;
   
   
   public MemberVO(String id, String pw, String name, String birth) {
      super();
      this.id = id;
      this.pw = pw;
      this.name = name;
      this.birth = birth;
   }
   


   public MemberVO(String id, String pw) {
	super();
	this.id = id;
	this.pw = pw;
}



public String getId() {
      return id;
   }


   public String getPw() {
      return pw;
   }


   public String getName() {
      return name;
   }


   public String getBirth() {
      return birth;
   }


   
   
   
}