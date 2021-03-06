package com.internousdev.ecsite.dto;

public class MyPageDTO {

	//テーブルカラムに対応したフィールドの宣言
	public String itemName;
	public String totalPrice;
	public String totalCount;
	public String payment;
	public String id;
	public String insert_date;


	//上記のフィールド変数に対応したGetterとSetterの定義
	public String getItemName() {
		return this.itemName;
	}
	public void setItemName(String itemName){
		this.itemName = itemName;
	}

	public String getTotalPrice() {
		return this.totalPrice;
	}
	public void setTotalPrice(String totalPrice){
		this.totalPrice = totalPrice;
	}

	public String getTotalCount() {
		return this.totalCount;
	}
	public void setTotalCount(String totalCount){
		this.totalCount = totalCount;
	}

	public String getPayment() {
		return this.payment;
	}
	public void setPayment(String payment){
		this.payment = payment;
	}

	public String getId() {
		return id;
	}
	public void setId(String id){
		this.id = id;
	}

	public String getInsert_date() {
		return insert_date;
	}
	public void setInsert_date(String insert_date){
		this.insert_date = insert_date;
	}
}
