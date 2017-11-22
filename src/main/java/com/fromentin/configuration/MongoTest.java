package com.fromentin.configuration;

import java.net.UnknownHostException;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoException;
import java.io.IOException;

public class MongoTest {

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
// GET COLLECTION
            DBCollection collectionUser = db.getCollection("users");
            
            System.out.println("Nettoyage de la collection USER en cours...");
            DBCursor cr = collectionUser.find();
            while (cr.hasNext()) {
                collectionUser.remove(cr.next());
            }
            System.out.println("Nettoyage terminé");

//INSERT documents with two fields id and datacol
            BasicDBObject user1 = new BasicDBObject();
            user1.put("username", "axedeskso");
            user1.put("password", "31031993");
            user1.put("role", "ADMINISTRATEUR");
            user1.put("firstname", "Axel");
            user1.put("surname", "FROMENTIN");
            user1.put("dateNaissance", "31 mars 1993");
            user1.put("lieuNaissance", "Villeneuve d'Ascq");
            collectionUser.insert(user1);

            BasicDBObject user2 = new BasicDBObject();
            user2.put("username", "tlsIsisAndore");
            user2.put("password", "123456789");
            user2.put("role", "ADMINISTRATEUR");
            user2.put("firstname", "Vincent");
            user2.put("surname", "EYCHENNE");
            user2.put("dateNaissance", "31 mars 1993");
            user2.put("lieuNaissance", "Andorre");
            collectionUser.insert(user2);
            
            BasicDBObject user3 = new BasicDBObject();
            user3.put("username", "ctlg");
            user3.put("password", "123456789");
            user3.put("role", "ADMINISTRATEUR");
            user3.put("firstname", "Pau");
            user3.put("surname", "GARCIA GOZALVEZ");
            user3.put("dateNaissance", "01-01-1990");
            user3.put("lieuNaissance", "Barcelona");
            collectionUser.insert(user3);


//GET all documents in collection
            DBCursor cursor = collectionUser.find();
            System.err.println("COLLECTION USER");
            while (cursor.hasNext()) {
                System.out.println(cursor.next());
            }
        } catch (MongoException e) {
            e.printStackTrace();
        }
    }
}
