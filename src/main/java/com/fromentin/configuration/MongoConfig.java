package com.fromentin.configuration;

import com.mongodb.DB;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import java.io.IOException;

public class MongoConfig {

    public static void main(String[] args) throws IOException {

        String adress = "localhost";
        int port = 27017;        
        String bdd = "healthbook";
        
        try {
            Runtime rt = Runtime.getRuntime();
            Process pr = rt.exec("C://Program Files/MongoDB/Server/3.4/bin/mongod --dbpath C://Users/Axel/mongo/data/db");
            System.out.println("Processus MongoDB lancé");
            Mongo mongo = new Mongo(adress, port);
            System.out.println("Connexion avec MongoDB établie sur "+adress+":"+port);
            
// GET DB
            DB db = mongo.getDB(bdd);
            System.out.println("Connexion avec la base "+bdd+" établie");
        } catch (MongoException e) {
            e.printStackTrace();
        }
    }
}
