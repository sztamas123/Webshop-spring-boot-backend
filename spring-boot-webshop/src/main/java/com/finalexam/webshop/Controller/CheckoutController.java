package com.finalexam.webshop.Controller;

import com.finalexam.webshop.Dto.Purchase;
import com.finalexam.webshop.Dto.PurchaseResponse;
import com.finalexam.webshop.Service.CheckoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/checkout")
@CrossOrigin("http://localhost:4200")
public class CheckoutController {

    @Autowired
    private CheckoutService checkoutService;

    @PostMapping("/purchase")
    public PurchaseResponse createOrder(@RequestBody Purchase purchase) {
        PurchaseResponse purchaseResponse = checkoutService.createOrder(purchase);

        return purchaseResponse;
    }
}
