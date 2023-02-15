package com.devsuperior.dslearnbds.services;

import com.devsuperior.dslearnbds.repositories.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;
    private static final Logger LOGGER = LoggerFactory.getLogger(UserService.class);

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository
                    .findByEmail(username)
                    .orElseThrow(()-> {
                        LOGGER.error("Usuário não encontrado: ".concat(username));
                        throw new UsernameNotFoundException("Email não encontrado!");
                    });
    }
}
