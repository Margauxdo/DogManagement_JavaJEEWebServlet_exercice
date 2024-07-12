package org.example.dogmanagement_javajeewebservlet_exercice.model;

import java.time.LocalDate;

public class Dog {
    private int id;
    private String name;
    private String breed;
    private LocalDate dateOfBirth;

    public Dog(int id, String name, String breed, LocalDate dateOfBirth) {
        this.id = id;
        this.name = name;
        this.breed = breed;
        this.dateOfBirth = dateOfBirth;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getBreed() {
        return breed;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }
}
