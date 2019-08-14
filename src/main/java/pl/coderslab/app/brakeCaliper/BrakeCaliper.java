package pl.coderslab.app.brakeCaliper;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.HashMap;
import java.util.Map;

@Entity
@Table(name = "brakeCalipers")
public class BrakeCaliper {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotEmpty
    private String name;
    @ElementCollection
    @JoinTable(name = "BrakecaliperParts")
    @Column(name = "Quantity")
    private Map<String, String> partName = new HashMap<String, String>();


    public Map<String, String> getPartName() {
        return partName;
    }

    public void setPartName(Map<String, String> contactMap) {
        this.partName = contactMap;
    }

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

    @Override
    public String toString() {
        return "BrakeCaliper{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", partName=" + partName +
                '}';
    }
}
