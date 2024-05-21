package api.management.Dormitory.controllers;

import api.management.Dormitory.services.RoomService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequiredArgsConstructor
public class RoomController {

    private final RoomService roomService;

    @GetMapping("/rooms")
    public String rooms(Model model) {
        model.addAttribute("rooms", roomService.listRooms());
        return "rooms";
    }

    @GetMapping("room/{id}")
    public String roomInfo(@PathVariable Long id, Model model) {
        model.addAttribute("room", roomService.getRoomById(id));
        return "room-info";
    }
}
