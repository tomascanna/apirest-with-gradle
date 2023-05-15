package com.example.API.REST._con.Gradle.services;

import com.example.API.REST._con.Gradle.entities.Localidad;
import com.example.API.REST._con.Gradle.repositories.BaseRepository;
import org.springframework.stereotype.Service;

@Service
public class LocalidadServiceImpl extends BaseServiceImpl<Localidad, Long> implements LocalidadService {
    public LocalidadServiceImpl(BaseRepository<Localidad, Long> baseRepository) {
        super(baseRepository);
    }
}
