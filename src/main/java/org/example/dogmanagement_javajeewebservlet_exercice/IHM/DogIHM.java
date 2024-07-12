package org.example.dogmanagement_javajeewebservlet_exercice.IHM;

import org.example.dogmanagement_javajeewebservlet_exercice.model.Dog;
import org.example.dogmanagement_javajeewebservlet_exercice.repository.DogRepository;

import java.time.LocalDate;
import java.util.List;
import java.util.Scanner;

public class DogIHM {

    private Scanner sc;
    private DogRepository dogRepository;

    public DogIHM() {
        sc = new Scanner(System.in);
        dogRepository = new DogRepository();
    }

    public void start() {
        String command;
        while (true) {
            System.out.println("--- Dog Management Menu ---");
            System.out.println("1. Add Dog");
            System.out.println("2. Show all dogs");
            System.out.println("3. Find Dog by ID");
            System.out.println("4. Update Dog");
            System.out.println("5. Delete Dog");
            System.out.println("6. Exit");
            command = sc.nextLine();
            switch (command) {
                case "1" -> createDog();
                case "2" -> showAllDogs();
                case "3" -> showDogById();
                case "4" -> updateDog();
                case "5" -> deleteDog();
                default -> {
                    System.out.println("Invalid command");
                    return;
                }
            }
        }
    }

        private void createDog () {
            try {
                System.out.println("--- Create a dog---");
                System.out.println("Enter the name of the dog");
                String name = sc.nextLine();
                System.out.println("enter the breed of the dog");
                String breed = sc.nextLine();
                System.out.println("Enter the date of birth of the dog");
                LocalDate dateOfBirth = LocalDate.parse(sc.nextLine());

                Dog dog = Dog.builder()
                        .name(name)
                        .breed(breed)
                        .dateOfBirth(dateOfBirth)
                        .build();

                dog = dogRepository.createDog(dog);
                System.out.println("dog created" + dog);

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        private void showAllDogs () {
            try {
                System.out.println("--- Show all dogs---");
                List<Dog> dogs = dogRepository.findAllDogs();
                dogs.forEach(System.out::println);
            } catch (Exception e) {
                e.printStackTrace();
            }


        }
        private void showDogById () {
            try {
                System.out.println("--- Show Dog by ID---");
                System.out.println("Enter the ID of the dog");
                int id = Integer.parseInt(sc.nextLine());

                System.out.println(dogRepository.findDogById(id));

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        private void updateDog () {
            try {
                System.out.println("--- Update dog---");
                System.out.println("Enter the ID of the dog");
                int id = Integer.parseInt(sc.nextLine());
                Dog dog = dogRepository.findDogById(id);

                System.out.println("this name is " + dog.getName());
                System.out.println("Enter the name of the dog");
                String name = sc.nextLine();
                dog.setName(name);

                System.out.println("this breed is " + dog.getBreed());
                System.out.println("Enter the breed of the dog");
                String breed = sc.nextLine();
                dog.setBreed(breed);

                System.out.println("this date of the birth is " + dog.getDateOfBirth());
                System.out.println("Enter the birth of the dog");
                LocalDate dateOfBirth = LocalDate.parse(sc.nextLine());
                dog.setDateOfBirth(dateOfBirth);

                dog = dogRepository.updateDog(dog);
                System.out.println("dog updated" + dog);

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        private void deleteDog () {
            try {
                System.out.println("--- Delete dog---");
                System.out.println("Enter the ID of the dog");
                int id = Integer.parseInt(sc.nextLine());
                Dog dog = dogRepository.findDogById(id);
                dogRepository.deleteDog(dog.getId());

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

