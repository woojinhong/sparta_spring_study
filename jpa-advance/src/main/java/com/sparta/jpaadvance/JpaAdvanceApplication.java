package com.sparta.jpaadvance;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@EnableJpaAuditing
@SpringBootApplication
public class JpaAdvanceApplication {

    public static void main(String[] args) {
        SpringApplication.run(JpaAdvanceApplication.class, args);
    }

}
