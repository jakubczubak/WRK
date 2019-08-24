package pl.coderslab.app.order;


import pl.coderslab.app.brakeCaliper.BrakeCaliper;
import pl.coderslab.app.customer.Customer;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @OneToOne
    private Customer customer;
    @OneToOne
    private BrakeCaliper brakeCaliper;
    private String color;
    private String logo;
    private String adapter;
    private String brakeDisc;
    private String bell;
    private String brakePads;
    private String details;
    @ElementCollection
    private List<String> galvanicCoating;
    private String brakeLines;
    private String carBrand;
    private String carModel;
    private String axies;
    @Transient
    private String car;
    private boolean isFinish;
    @Column(name = "created_on")
    private LocalDateTime createdOn;
    @Column(name = "updated_on")
    private LocalDateTime updatedOn;

    public LocalDateTime getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(LocalDateTime createdOn) {
        this.createdOn = createdOn;
    }

    public LocalDateTime getUpdatedOn() {
        return updatedOn;
    }

    public void setUpdatedOn(LocalDateTime updatedOn) {
        this.updatedOn = updatedOn;
    }

    @PrePersist
    public void prePersist() {
        createdOn = LocalDateTime.now();
    }

    @PreUpdate
    public void preUpdate() {
        updatedOn = LocalDateTime.now();
    }

    public boolean isFinish() {
        return isFinish;
    }

    public void setFinish(boolean finish) {
        isFinish = finish;
    }

    public String getBrakeDisc() {
        return brakeDisc;
    }

    public void setBrakeDisc(String brakeDisc) {
        this.brakeDisc = brakeDisc;
    }

    public String getCar() {
        return carBrand + " " + carModel;
    }

    public void setCar(String car) {
        this.car = car;
    }

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

}
