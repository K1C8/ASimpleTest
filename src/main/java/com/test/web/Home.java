package com.test.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Kenny on 2016/12/31.
 */
@Controller
@RequestMapping(value = "/")
public class Home {
    private static final Logger logger = LoggerFactory.getLogger(Home.class);

    private static String JSP_FILE_PATH = "/WEB-INF/jsp";


    public Home() {
    }

//    @RequestMapping(value = "/ModuleSelect")
//    public String moduleSelect() {
//        logger.debug("ModuleSelect requested at " + Home.class.toString());
//
//        return "module-select";
//    }

//	@RequestMapping(value = "/IndexCtrl/XmlTable")
//	public String xmlTable() {
//		logger.debug("XmlTable requested at " + IndexCtrl.class.toString());
//
//		return "xml-table";
//	}

//    @RequestMapping(value = "/hello")
//    public String hello() {
//        logger.debug("Hello requested at " + Home.class.toString());
//        return "test";
//    }

    @RequestMapping(method = RequestMethod.GET)
    public String helloBlank() {
        logger.debug("Root page requested at " + Home.class.toString());
        return "test";
    }
}
