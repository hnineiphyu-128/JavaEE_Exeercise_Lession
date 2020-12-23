package com.mmit.entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class OrderdetailPK implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int order_id;
	private int item_id;
	public int getOrderID() {
		return order_id;
	}
	public void setOrderID(int orderID) {
		this.order_id = orderID;
	}
	public int getItemID() {
		return item_id;
	}
	public void setItemID(int itemID) {
		this.item_id = itemID;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + item_id;
		result = prime * result + order_id;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderdetailPK other = (OrderdetailPK) obj;
		if (item_id != other.item_id)
			return false;
		if (order_id != other.order_id)
			return false;
		return true;
	}
	
	
	
	
	
}
