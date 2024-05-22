package api.management.Dormitory.repositories;

import api.management.Dormitory.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Long>{

}
