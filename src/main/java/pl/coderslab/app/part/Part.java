package pl.coderslab.app.part;


import javax.persistence.*;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "parts")
public class Part {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty
    private String type;
    @NotEmpty
    private String name;
    @NotEmpty
    private String catalogNumber;
    @DecimalMin("1")
    private int quantity;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCatalogNumber() {
        return catalogNumber;
    }

    public void setCatalogNumber(String catalogNumber) {
        this.catalogNumber = catalogNumber;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantityPerOrder) {
        this.quantity = quantityPerOrder;
    }

    @Override
    public String toString() {
        return "Part{" +
                "name='" + name + '\'' +
                '}';
    }
}
