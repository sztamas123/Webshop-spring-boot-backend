package com.finalexam.webshop.Dto;

import lombok.Data;

@Data
public class PaymentInformation {
    private int amount;
    private String currency;
    private String emailReceipt;
}
