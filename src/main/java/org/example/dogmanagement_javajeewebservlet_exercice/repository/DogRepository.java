package org.example.dogmanagement_javajeewebservlet_exercice.repository;


import org.example.dogmanagement_javajeewebservlet_exercice.model.Dog;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.List;


public class DogRepository {

    private SessionFactory sessionFactory;
    private Session session;

    public DogRepository() {
        /*TODO verifier sessionfactorySingleton*/
        Session SessionFactorySingleton = null;
        sessionFactory = SessionFactorySingleton.getSessionFactory();
    }

    public Dog createDog(Dog dog) {
        try {
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.save(dog);
            session.getTransaction().commit();
            return dog;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }finally {
            session.close();
        }
        return null;
    }

    public Dog findDogById(int id) {
        try{
            session = sessionFactory.openSession();
            session.beginTransaction();
            Dog dog = session.find(Dog.class, id);
            session.getTransaction().commit();
            return dog;
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }finally {
            session.close();
        }
        return null;
    }

   public List<Dog> findAllDogs() {
        try{
            session = sessionFactory.openSession();
            session.beginTransaction();
            //Query<Dog>query = session.createQuery("from Dog", Dog.class);
            session.getTransaction().commit();
            //return dogs;
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }finally {
            session.close();
        }
    return null;
    }

    public Dog updateDog(Dog dog) {
        try{
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.update(dog);
            session.getTransaction().commit();
            return dog;

        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            session.close();

        }
 return null;
    }
    public void deleteDog(int id) {
        try{
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.delete(findDogById(id));
            session.getTransaction().commit();

        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            session.close();
        }
    }
}

