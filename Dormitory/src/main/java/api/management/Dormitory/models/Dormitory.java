package api.management.Dormitory.models;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "dormitory")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Dormitory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "address", columnDefinition = "text")
    private String address;
}
