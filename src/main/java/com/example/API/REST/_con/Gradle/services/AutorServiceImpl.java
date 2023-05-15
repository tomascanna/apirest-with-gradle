package com.example.API.REST._con.Gradle.services;

import com.example.API.REST._con.Gradle.entities.Autor;
import com.example.API.REST._con.Gradle.repositories.AutorRepository;
import com.example.API.REST._con.Gradle.repositories.BaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.API.REST._con.Gradle.services.BaseServiceImpl;
import com.example.API.REST._con.Gradle.services.AutorService;

@Service
public class AutorServiceImpl extends BaseServiceImpl<Autor, Long> implements AutorService {
    @Autowired
    private AutorRepository autorRepository;

    public AutorServiceImpl(BaseRepository<Autor, Long> baseRepository) {
        super(baseRepository);
    }
}
