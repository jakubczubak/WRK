package pl.coderslab.app.order;

import pl.coderslab.app.customer.Customer;

import javax.persistence.*;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToOne
    private Customer customer;

    private String color;
    private String logo;
    private String adapter;
    private String bell;
    private String brakePads;
    private String details;
}
