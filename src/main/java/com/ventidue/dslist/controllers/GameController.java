package com.ventidue.dslist.controllers;

import com.ventidue.dslist.dto.GameMinDTO;
import com.ventidue.dslist.services.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/games")
public class GameController {

    @Autowired
    private GameService gameService;

    @GetMapping
    public List<GameMinDTO> findAll() {
        return gameService.findAll();
    }

    @GetMapping
    public GameMinDTO findById(Long id) {
        return gameService.findById(id);
    }
}
