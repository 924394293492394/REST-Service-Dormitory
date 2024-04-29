package api.management.Dormitory.services;

import api.management.Dormitory.repositories.RoomRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class RoomService {

    private final RoomRepository roomRepository;
}
