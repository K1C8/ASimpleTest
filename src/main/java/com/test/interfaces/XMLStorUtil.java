package com.test.interfaces;

import com.test.model.TradeXML;

import java.util.ArrayList;

/**
 * Created by Kenny on 2017/4/27.
 */
public interface XMLStorUtil {

    //TODO: Alter method type of getFile() and parameter of storeFile(xxx);
    boolean storeFile(String branchID, String tradeID, String tradeXMLSerial, String content);

    //findByBranchID when using
    ArrayList<TradeXML> findByBranch();

    //findByTradeID when using Mongo
    ArrayList<TradeXML> findByTrade();

    //findByTradeXMLSerial
    ArrayList<TradeXML> findBySerial();

    ArrayList<String> getFileList();

}
