package pl.coderslab.app.order;

import pl.coderslab.app.brakeCaliper.BrakeCaliper;
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
    @OneToOne
    private BrakeCaliper brakeCaliper;
    private String color;
    private String logo;
    private String adapter;
    private String bell;
    private String brakePads;
    private String details;
}
