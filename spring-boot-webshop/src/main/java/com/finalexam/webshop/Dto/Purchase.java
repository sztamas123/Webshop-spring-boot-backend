package com.finalexam.webshop.Dto;

import com.finalexam.webshop.Entity.Address;
import com.finalexam.webshop.Entity.Customer;
import com.finalexam.webshop.Entity.Order;
import com.finalexam.webshop.Entity.OrderItem;
import lombok.Data;

import java.util.List;

@Data
public class Purchase {
    private Customer customer;
    private Order order;
    private Address shippingAddress;
    private Address billingAddress;
    private List<OrderItem> orderItems;
}
