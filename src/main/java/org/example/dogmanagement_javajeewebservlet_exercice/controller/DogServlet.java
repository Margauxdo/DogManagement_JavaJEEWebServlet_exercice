package org.example.dogmanagement_javajeewebservlet_exercice.controller;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.dogmanagement_javajeewebservlet_exercice.model.Dog;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "dogServlet", value = "/dog/*")
public class DogServlet extends HttpServlet {

    private List<Dog> dogs;

    @Override
    public void init(ServletConfig config) throws ServletException {
        dogs = new ArrayList<>();
        //dogs.add(new Dog(1, "Milou","caniche", LocalDate.parse("2020-05-03")));
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //req.getRequestDispatcher("/WEB-INF/dog/list.jsp").forward(req, resp);

        String pathInfo = req.getPathInfo().substring(1);
        req.setAttribute("dogs", dogs);
        switch (pathInfo) {

            case "list":
                showAll(req,resp);
                break;
            case "form":
                showForm(req,resp);
                break;

            case "description":
                showDetails(req,resp);
                break;


        }



        }

        protected void showAll(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
            req.setAttribute("dogs", dogs);
            req.getRequestDispatcher("/WEB-INF/dog/list.jsp").forward(req, resp);

        }
        protected void showForm(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/dog/form.jsp").forward(req, resp);
        }

        protected void showDetails(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/dog/description.jsp").forward(req, resp);
        }

    }

