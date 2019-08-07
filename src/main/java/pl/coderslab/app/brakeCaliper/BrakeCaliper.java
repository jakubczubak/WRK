package pl.coderslab.app.brakeCaliper;

import pl.coderslab.app.part.Part;

import javax.persistence.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Entity
@Table(name = "calipers")
public class BrakeCaliper {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    @javax.persistence.OneToMany(cascade = CascadeType.ALL)
    @javax.persistence.MapKey(name = "name")
    private Map<String,Part> qtyToPart = new HashMap<String,Part>();


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Map<String, Part> getQtyToPart() {
        return qtyToPart;
    }

    public void setQtyToPart(Map<String, Part> qtyToPart) {
        this.qtyToPart = qtyToPart;
    }
}
