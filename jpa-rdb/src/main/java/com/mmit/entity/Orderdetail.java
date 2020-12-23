package com.mmit.entity;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.JoinColumn;

@Entity
public class Orderdetail implements Serializable {

	private static final long serialVersionUID = 1L;
	@EmbeddedId
	private OrderdetailPK id;
	private int subQty;
	private int subPrice;
	
	@ManyToOne
	@JoinColumn(name = "item_id", insertable = false, updatable = false)
	private Item item;
	@ManyToOne
	@JoinColumn(name = "order_id", insertable = false, updatable = false)
	private Orders order;
	
	
	public OrderdetailPK getId() {
		return id;
	}
	public void setId(OrderdetailPK id) {
		this.id = id;
	}
	public int getSubQty() {
		return subQty;
	}
	public void setSubQty(int subQty) {
		this.subQty = subQty;
	}
	public int getSubPrice() {
		return subPrice;
	}
	public void setSubPrice(int subPrice) {
		this.subPrice = subPrice;
	}
	
	
	

}
