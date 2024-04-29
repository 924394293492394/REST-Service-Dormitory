package api.management.Dormitory.models;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "student")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;
    @Column(name = "group_name")
    private String group;
    @Column(name = "phone")
    private String phone;

    @Column(name = "id_room")
    private Long idRoom;
}
