package pl.coderslab.app.brakeCaliper;

import pl.coderslab.app.part.Part;

import javax.persistence.*;
import java.util.List;
@Entity
@Table(name = "calipers")
public class BrakeCaliper {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @OneToMany
    private List<Part> partList;
}
