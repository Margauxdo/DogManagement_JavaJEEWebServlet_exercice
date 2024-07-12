package org.example.dogmanagement_javajeewebservlet_exercice.model;

import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


import java.time.LocalDate;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Dog {
    private int id;
    private String name;
    private String breed;
    private LocalDate dateOfBirth;


}
