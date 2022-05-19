package com.smhrd.domain;

public class MapVO {
   private String name;
   private String address;
   private String wi;
   private String gy;
   private String flower;
   private String num;
   
   public MapVO(String name, String address, String wi, String gy, String flower, String num) {
      super();
      this.name = name;
      this.address = address;
      this.wi = wi;
      this.gy = gy;
      this.flower = flower;
      this.num = num;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getAddress() {
      return address;
   }

   public void setAddress(String address) {
      this.address = address;
   }

   public String getWi() {
      return wi;
   }

   public void setWi(String wi) {
      this.wi = wi;
   }

   public String getGy() {
      return gy;
   }

   public void setGy(String gy) {
      this.gy = gy;
   }

   public String getFlower() {
      return flower;
   }

   public void setFlower(String flower) {
      this.flower = flower;
   }

   public String getNum() {
      return num;
   }

   public void setNum(String num) {
      this.num = num;
   }
   
   
}