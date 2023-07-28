package com.example.boot07;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
   
    @GetMapping("/android/fortue")
    public Map<String, Object> fortune(){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("fortuneToday", "동쪽으로 가면 귀인을 만나요");
        return map;
    }
   
    private List<String> names=new ArrayList<>();
   
    @PostMapping("/android/insert")
    public List<String> insert(String name){
        names.add(name);
        return names;
    }
}
