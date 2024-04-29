package api.management.Dormitory.models;

import jakarta.persistence.*;
import lombok.*;

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
    //динам дата
    @Column(name = "date_of_app")
    private Date dateOfApp;
    //реализовать выборку (отклоненные, принятые и находящиеся на рассмотрении заявки)
    @Column(name = "request_status")
    private String requestStatus;

    @Column(name = "id_student")
    private Long idStudent;
}
