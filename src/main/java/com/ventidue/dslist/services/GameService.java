package com.ventidue.dslist.services;

import com.ventidue.dslist.dto.GameMinDTO;
import com.ventidue.dslist.entities.Game;
import com.ventidue.dslist.repositories.GameRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class GameService {

    @Autowired
    private GameRepository gameRepository;

    public List<GameMinDTO> findAll() {
        return gameRepository.findAll().stream().map(GameMinDTO::new).collect(Collectors.toList());
    }

    public GameMinDTO findById(Long id) {
        Game entity = gameRepository.getOne(id);
        return new GameMinDTO(entity);
    }
}
