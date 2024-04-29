package api.management.Dormitory.models;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "room")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "capacity")
    private Integer capacity;

    @Column(name = "id_dormitory")
    private Long idDormitory;
}
