package api.management.Dormitory.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Entity
@Table(name = "app_for_living")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class AppForLiving {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "date_of_app")
    private Date dateOfApp;
    @Column(name = "request_status")
    private String requestStatus;
    @Column(name = "id_student")
    private Long idStudent;

    @ManyToOne
    @JoinColumn(name = "id_student", insertable = false, updatable = false)
    private Student student;
}
