package com.test.model;

import com.sun.istack.internal.Nullable;

/**
 * Created by Kenny on 2017/4/28.
 *
 */
public class TradeXML {

    private String branchID;

    private String tradeID;

    private int tradeXMLSerial;

    private String inputDate;

    private String tradeXMLContent;

    @Nullable
    private String filePath;

    public TradeXML() {}

    public TradeXML(String branchID, String tradeID, int tradeXMLSerial, String inputDate, String tradeXMLContent) {
        this.branchID = branchID;
        this.tradeID = tradeID;
        this.tradeXMLSerial = tradeXMLSerial;
        this.inputDate = inputDate;
        this.tradeXMLContent = tradeXMLContent;
    }

    public String getBranchID() {
        return branchID;
    }

    public void setBranchID(String branchID) {
        this.branchID = branchID;
    }

    public String getTradeID() {
        return tradeID;
    }

    public void setTradeID(String tradeID) {
        this.tradeID = tradeID;
    }

    public int getTradeXMLSerial() {
        return tradeXMLSerial;
    }

    public void setTradeXMLSerial(int tradeXMLSerial) {
        this.tradeXMLSerial = tradeXMLSerial;
    }

    public String getInputDate() {
        return inputDate;
    }

    public void setInputDate(String inputDate) {
        this.inputDate = inputDate;
    }

    public String getTradeXMLContent() {
        return tradeXMLContent;
    }

    public void setTradeXMLContent(String tradeXMLContent) {
        this.tradeXMLContent = tradeXMLContent;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }
}
