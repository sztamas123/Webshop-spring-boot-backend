package com.finalexam.webshop.Service;

import com.finalexam.webshop.Dto.Purchase;
import com.finalexam.webshop.Dto.PurchaseResponse;

public interface CheckoutService {
    PurchaseResponse createOrder(Purchase purchase);
}
