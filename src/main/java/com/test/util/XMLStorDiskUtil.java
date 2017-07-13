package com.test.util;

import com.google.gson.Gson;
import com.test.interfaces.XMLStorUtil;
import com.test.model.TradeXML;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.LineIterator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by Kenny on 2017/4/28.
 */
public class XMLStorDiskUtil implements XMLStorUtil {

    private static final Logger logger = LoggerFactory.getLogger(XMLStorDiskUtil.class);

    private static final String TAG = XMLStorDiskUtil.class.toString();

    private String directory;

    private static String indexFile = "file_index.json";

    private TradeXML[] tradeXMLs;

    public XMLStorDiskUtil(String directory) {
        if (null == directory)
            this.directory = "./";
        else this.directory = directory;

    }


    public String getDirectory() {
        return directory;
    }

    public void setDirectory(String directory) {
        this.directory = directory;
    }

    @Override
    public boolean storeFile(String branchID, String tradeID, String tradeXMLSerial, String content) {

        return false;
    }

    @Override
    public ArrayList<TradeXML> findByBranch() {
        return null;
    }

    @Override
    public ArrayList<TradeXML> findByTrade() {
        return null;
    }

    @Override
    public ArrayList<TradeXML> findBySerial() {
        return null;
    }

    public ArrayList<String> getFileList() {
        ArrayList<String> list = new ArrayList<>();
        list.add("SHIROU_CHIKAN!!!");
        if (directory.length() < 1) {
            logger.error("A blank directory was set as directory to get XML files.");
            return null;
        }
        File dirFile;
        File[] files;
        int mid;
        String fileNameExt;
        try {
            logger.error("Directory " + directory + " is being processed.");
            dirFile = new File(directory);
            tradeXMLs = test(directory);
            int filesCount = dirFile.listFiles().length;
            files = dirFile.listFiles();
            for (File file : files) {
                logger.debug("Trying to open file " + file.getAbsolutePath());
                if (!file.isFile())
                    continue;
                mid = file.getName().lastIndexOf(".");
                if (mid < 0)
                    continue;
                else {
                    fileNameExt = file.getName().substring(mid + 1);
                }
                if (fileNameExt.equals("xml")) {
                    String tmpString = readFile(file);
                    tmpString = tmpString.substring(0, 12);
                    list.add(tmpString);
                }
            }
            for (TradeXML xml: tradeXMLs) {
                list.add(xml.getBranchID());
            }
        } catch (Exception e) {
            logger.error(TAG + " exception catched: " + e.toString());
        }

        return list;
    }

    public TradeXML[] test(String path){
        path += "/file_index.json";
        String fileDescrptr = null;
        File file = new File(path);
        try {
            fileDescrptr = readFile(file);
        } catch (IOException e) {
            logger.error(TAG + " IOException catched: " + e.toString());
            return null;
        }
        Gson gson = new Gson();
        TradeXML[] xmls = null;
        if (null != fileDescrptr) {
            xmls = gson.fromJson(fileDescrptr, TradeXML[].class);
            logger.debug(TAG + " successfully populated TradeXMLs from disk file.");
            return xmls;
        } else {
            logger.warn(TAG + " read file descriptor failed.");
            return null;
        }
    }

    //TODO: revise and utilize this method.
    public String readFile(File path) throws IOException {
        StringBuilder result = new StringBuilder();
        LineIterator content = null;
        if (!path.isDirectory()) {
            String encode = "utf-8";
            content = FileUtils.lineIterator(path, encode);
        } else {
            return null;
        }
        try {
            while (content.hasNext()) {
                result.append(content.nextLine());
            }
        } finally {
            LineIterator.closeQuietly(content);
        }
        return result.toString();
    }

}
