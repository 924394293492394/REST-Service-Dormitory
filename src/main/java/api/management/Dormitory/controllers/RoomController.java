package api.management.Dormitory.controllers;

import api.management.Dormitory.services.RoomService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;

@Controller
@RequiredArgsConstructor
public class RoomController {

    private final RoomService roomService;
}
