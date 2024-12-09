package klu.maps;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MapController {
@GetMapping("/displayMap")
public String index() 
{
return "map";
}
}

