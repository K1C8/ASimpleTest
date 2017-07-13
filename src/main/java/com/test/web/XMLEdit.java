package com.test.web;

import com.test.util.XMLStorDiskUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Map;

/**
 * Created by Kenny on 2017/4/26.
 *
 */
@Controller
@RequestMapping(value = "/XMLEdit")
public class XMLEdit {

    private static final String TAG = XMLEdit.class.toString();

    private static final Logger logger = LoggerFactory.getLogger(XMLEdit.class) ;

    public XMLEdit() {

    }

    @RequestMapping(method = RequestMethod.GET)
    public String xmlEdit(Map model, HttpServletRequest request) {
        logger.debug("xmlEdit requested at " + Home.class.toString());

        String webappRoot = request.getSession().getServletContext().getRealPath("/static");
        XMLStorDiskUtil XMLStorDiskUtil = new XMLStorDiskUtil(webappRoot);
        logger.debug(TAG + ": Directory " + XMLStorDiskUtil.getDirectory() + " is being processed.");
        ArrayList<String> strings = XMLStorDiskUtil.getFileList();

        model.put("xmlList", strings);
        return "xml-edit";
    }
}
