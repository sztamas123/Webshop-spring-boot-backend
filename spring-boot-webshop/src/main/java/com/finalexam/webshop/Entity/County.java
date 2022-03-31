package com.finalexam.webshop.Entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "county")
@Data
public class County {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;
}
