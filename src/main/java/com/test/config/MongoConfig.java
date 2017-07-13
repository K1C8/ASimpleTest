//package com.test.config;
//
//import com.mongodb.Mongo;
//import com.mongodb.MongoClient;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.mongodb.config.AbstractMongoConfiguration;
//import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;
//
///**
// * Created by Kenny on 2017/4/27.
// */
//@Configuration
//@EnableMongoRepositories("com.test.db")
//public class MongoConfig extends AbstractMongoConfiguration{
//    @Override
//    public Mongo mongo() throws Exception{
//        return new MongoClient();
//    }
//
//    @Override
//    protected String getDatabaseName() {
//        return "XmlsDB";
//    }
//}
