package com.test.web;

import com.test.model.TradeItem;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Kenny on 2017/1/5.
 */
@Controller
@RequestMapping(value = "/TradeSelect")
public class TradeSelect {
    private static final Logger logger = LoggerFactory.getLogger(TradeSelect.class);
    private TradeItem tradeItem;
    private List<TradeItem> list;

    public TradeSelect() {
        tradeItem = new TradeItem(30001, "Test_Trade");
        list = new ArrayList<>();
        list.add(tradeItem);
    }

    @RequestMapping(method = RequestMethod.GET)
    public String moduleSelect(Map model){
        logger.debug("Page TradeSelect requested at " + Home.class.toString());
        model.put("tradeList", list);
        return "trade-select";
    }

}
