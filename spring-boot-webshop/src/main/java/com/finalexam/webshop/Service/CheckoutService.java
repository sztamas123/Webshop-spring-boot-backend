package com.finalexam.webshop.Service;

import com.finalexam.webshop.Dto.PaymentInformation;
import com.finalexam.webshop.Dto.Purchase;
import com.finalexam.webshop.Dto.PurchaseResponse;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;
import org.springframework.web.bind.annotation.CrossOrigin;

public interface CheckoutService {
    PurchaseResponse createOrder(Purchase purchase);

    PaymentIntent createPaymentIntent(PaymentInformation paymentInformation) throws StripeException;
}
