package org.example.dogmanagement_javajeewebservlet_exercice.IHM;

import java.util.Scanner;

public class GlobalIHM {
    private Scanner sc;
    private DogIHM dogIhm ;

    public GlobalIHM() {
        sc = new Scanner(System.in);
        dogIhm = new DogIHM();
    }
    public void start(){
        String command;
        while(true){
            System.out.println("--- Main Menu ---");
            System.out.println("1. Dog Management");
            System.out.println("2. Exit");
            command = sc.nextLine();
            switch(command){
                case "1"-> dogIhm.start();
                case "2"->System.exit(0);
                default ->{
                    System.out.println("Invalid command");
                    return;
                }
            }
        }
    }
}
