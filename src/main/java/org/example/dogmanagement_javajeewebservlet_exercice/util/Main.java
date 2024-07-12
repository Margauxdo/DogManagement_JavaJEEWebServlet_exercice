package org.example.dogmanagement_javajeewebservlet_exercice.util;

import org.example.dogmanagement_javajeewebservlet_exercice.IHM.GlobalIHM;
import org.example.dogmanagement_javajeewebservlet_exercice.repository.DogRepository;

public class Main {
   public static void main(String[] args) {
        DogRepository dogRepo = new DogRepository();

        GlobalIHM globalIHM = new GlobalIHM();
        globalIHM.start();
    }
}
