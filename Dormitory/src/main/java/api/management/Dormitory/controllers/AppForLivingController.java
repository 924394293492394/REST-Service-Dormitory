package api.management.Dormitory.controllers;

import api.management.Dormitory.models.AppForLiving;
import api.management.Dormitory.services.AppForLivingService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
@RequiredArgsConstructor
public class AppForLivingController {

    private final AppForLivingService appForLivingService;

    @GetMapping("/appforlivings")
    public String appForLivings(Model model) {
        model.addAttribute("appforlivings", appForLivingService.listAppForLivings());
        return "appforlivings";
    }

    @GetMapping("/appforliving/create/new")
    public String appForLivingCreate() {
        return "appforliving-create";
    }

    @GetMapping("appforliving/{id}")
    public String appForLivingInfo(@PathVariable Long id, Model model) {
        model.addAttribute("appforliving", appForLivingService.getAppForLivingById(id));
        return "appforliving-info";
    }

    @GetMapping("/appforliving/edit/{id}")
    public String appForLivingEdit(@PathVariable Long id, Model model) {
        model.addAttribute("appforliving", appForLivingService.getAppForLivingById(id));
        return "appforliving-edit";
    }

    @PostMapping("/appforliving/create")
    public String createAppForLiving(@RequestBody AppForLiving appForLiving) {
        appForLivingService.createAppForLiving(appForLiving);
        return "redirect:/students";
    }

    @PostMapping("/appforliving/update/{id}")
    public String updateAppForLiving(@PathVariable Long id, @RequestBody AppForLiving appForLiving) {
        appForLivingService.updateAppForLiving(id, appForLiving);
        return "redirect:/appforliving/" + id;
    }

    @PostMapping("/appforliving/delete/{id}")
    public String deleteAppForLiving(@PathVariable Long id) {
        appForLivingService.deleteAppForLiving(id);
        return "redirect:/appforlivings";
    }

}
