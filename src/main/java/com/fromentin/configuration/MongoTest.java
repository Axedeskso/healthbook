/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fromentin.configuration;

import java.net.UnknownHostException;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoException;

public class MongoTest {

    public static void main(String[] args) {

        try {
            Mongo mongo = new Mongo("localhost", 27017);
// GET DB
            DB db = mongo.getDB("healthbook");
// GET COLLECTION
            DBCollection collection = db.getCollection("user");
//INSERT documents with two fields id and datacol
            BasicDBObject doc = new BasicDBObject();
            doc.put("username", "axedeskso");
            doc.put("password", "31031993");
            doc.put("role", "ADMINISTRATEUR");
            doc.put("firstname", "Axel");
            doc.put("surname", "FROMENTIN");
            doc.put("dateNaissance", "31 mars 1993");
            doc.put("lieuNaissance", "Villeneuve d'Ascq");
            collection.insert(doc);

            BasicDBObject doc2 = new BasicDBObject();
            doc2.put("username", "tlsIsisAndore");
            doc2.put("password", "123456789");
            doc2.put("role", "ADMINISTRATEUR");
            doc2.put("firstname", "Vincent");
            doc2.put("surname", "EYCHENNE");
            doc2.put("dateNaissance", "31 mars 1993");
            doc2.put("lieuNaissance", "Andorre");
            collection.insert(doc2);

//GET all documents in collection
            DBCursor cursor = collection.find();
            while (cursor.hasNext()) {
                System.out.println(cursor.next());
            }
        } catch (MongoException e) {
            e.printStackTrace();
        }
    }
}
