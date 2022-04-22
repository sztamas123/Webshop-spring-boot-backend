package com.finalexam.webshop.Controller;

import com.finalexam.webshop.Dto.PaymentInformation;
import com.finalexam.webshop.Dto.Purchase;
import com.finalexam.webshop.Dto.PurchaseResponse;
import com.finalexam.webshop.Service.CheckoutService;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.logging.Logger;


@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/checkout")
public class CheckoutController {
    private Logger logger = Logger.getLogger(getClass().getName());

    @Autowired
    private CheckoutService checkoutService;

    @PostMapping("/purchase")
    public PurchaseResponse createOrder(@RequestBody Purchase purchase) {
        PurchaseResponse purchaseResponse = checkoutService.createOrder(purchase);

        return purchaseResponse;
    }

    @PostMapping("/payment-intent")
    public ResponseEntity<String> createPaymentIntent(@RequestBody PaymentInformation paymentInformation) throws StripeException {
        PaymentIntent paymentIntent = checkoutService.createPaymentIntent(paymentInformation);
        String payment = paymentIntent.toJson();
        logger.info("amount: " + paymentInformation.getAmount());

        return new ResponseEntity<>(payment, HttpStatus.OK);
    }
}
