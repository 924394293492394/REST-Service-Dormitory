package api.management.Dormitory.repositories;

import api.management.Dormitory.models.Room;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomRepository extends JpaRepository<Room, Long> {

}
