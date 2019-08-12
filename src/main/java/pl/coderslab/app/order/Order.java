package pl.coderslab.app.order;

import pl.coderslab.app.brakeCaliper.BrakeCaliper;
import pl.coderslab.app.customer.Customer;

import javax.persistence.*;
import java.util.List;

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
    private boolean active;
    @ElementCollection
    private List<String> galvanicCoating;
    private String brakeLines;
    private String carBrand;
    private String carModel;
    private String axies;


    public String getAxies() {
        return axies;
    }

    public void setAxies(String axies) {
        this.axies = axies;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(String carBrand) {
        this.carBrand = carBrand;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public String getBrakeLines() {
        return brakeLines;
    }

    public void setBrakeLines(String brakeLines) {
        this.brakeLines = brakeLines;
    }

    public List<String> getGalvanicCoating() {
        return galvanicCoating;
    }

    public void setGalvanicCoating(List<String> powloka) {
        this.galvanicCoating = powloka;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public BrakeCaliper getBrakeCaliper() {
        return brakeCaliper;
    }

    public void setBrakeCaliper(BrakeCaliper brakeCaliper) {
        this.brakeCaliper = brakeCaliper;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getAdapter() {
        return adapter;
    }

    public void setAdapter(String adapter) {
        this.adapter = adapter;
    }

    public String getBell() {
        return bell;
    }

    public void setBell(String bell) {
        this.bell = bell;
    }

    public String getBrakePads() {
        return brakePads;
    }

    public void setBrakePads(String brakePads) {
        this.brakePads = brakePads;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
