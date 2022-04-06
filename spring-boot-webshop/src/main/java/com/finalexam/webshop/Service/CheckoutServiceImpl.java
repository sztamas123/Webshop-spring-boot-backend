package com.finalexam.webshop.Service;

import com.finalexam.webshop.Dao.CustomerRepository;
import com.finalexam.webshop.Dto.Purchase;
import com.finalexam.webshop.Dto.PurchaseResponse;
import com.finalexam.webshop.Entity.Customer;
import com.finalexam.webshop.Entity.Order;
import com.finalexam.webshop.Entity.OrderItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.UUID;

@Service
public class CheckoutServiceImpl implements CheckoutService {

    @Autowired
    private CustomerRepository customerRepository;

    @Override
    @Transactional
    public PurchaseResponse createOrder(final Purchase purchase) {
        Order order = purchase.getOrder();
        String orderTrackingNumber = generateTrackingNumber();
        order.setOrderTrackingNumber(orderTrackingNumber);
        List<OrderItem> orderItems = purchase.getOrderItems();
        orderItems.forEach(order::add);

        order.setBillingAddress(purchase.getBillingAddress());
        order.setShippingAddress(purchase.getShippingAddress());

        Customer customer = purchase.getCustomer();
        String customerEmail = customer.getEmail();
        Customer dbCustomer = customerRepository.findByEmail(customerEmail);
        if(dbCustomer != null) {
            customer = dbCustomer;
        }
        customer.add(order);

        customerRepository.save(customer);
        return new PurchaseResponse(orderTrackingNumber);
    }

    private String generateTrackingNumber() {
        return UUID.randomUUID().toString();
    }
}
