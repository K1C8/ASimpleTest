package com.test.model;

/**
 * Created by Kenny on 2017/4/26.
 */
public class TradeItem {
    private final int tradeID;
    private final String tradeName;

    public TradeItem(int tradeID, String tradeName) {
        this.tradeID = tradeID;
        this.tradeName = tradeName;
    }

    public int getTradeID() {
        return tradeID;
    }

    public String getTradeName() {
        return tradeName;
    }

//    @Override
//    public boolean equals(Object that) {
//        return EqualsBuilder.reflectionEquals
//    }
}
