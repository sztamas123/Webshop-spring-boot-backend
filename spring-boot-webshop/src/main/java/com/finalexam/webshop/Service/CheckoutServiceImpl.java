package com.finalexam.webshop.Service;

import com.finalexam.webshop.Dao.CustomerRepository;
import com.finalexam.webshop.Dto.PaymentInformation;
import com.finalexam.webshop.Dto.Purchase;
import com.finalexam.webshop.Dto.PurchaseResponse;
import com.finalexam.webshop.Entity.Customer;
import com.finalexam.webshop.Entity.Order;
import com.finalexam.webshop.Entity.OrderItem;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.*;

@Service
public class CheckoutServiceImpl implements CheckoutService {

    private final CustomerRepository customerRepository;

    public CheckoutServiceImpl(CustomerRepository customerRepository, @Value("${stripe.key.secret}") String secretKey) {
        this.customerRepository = customerRepository;
        Stripe.apiKey = secretKey;
    }

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

    @Override
    public PaymentIntent createPaymentIntent(final PaymentInformation paymentInformation) throws StripeException {
        List<String> paymentMethodTypes = new ArrayList<>();
        paymentMethodTypes.add("card");
        Map<String, Object> params = new HashMap<>();
        params.put("amount", paymentInformation.getAmount());
        params.put("currency", paymentInformation.getCurrency());
        params.put("payment_method_types", paymentMethodTypes);
        params.put("description", "Your Spring boot and Angular webshop purchase!");
        params.put("receipt_email", paymentInformation.getEmailReceipt());

        return PaymentIntent.create(params);
    }

    private String generateTrackingNumber() {
        return UUID.randomUUID().toString();
    }
}
