package org.pan.simple.util;

import java.util.List;
import java.util.Map;

/**
 * Created by panmingzhi815 on 2014/10/4.
 */
public class ValidateUtil {

    public static boolean isNotNullOrEmpty(String s){
        return s != null && s.length() > 0;
    }

    public static boolean isNotNullOrEmpty(List<?> list){
        return list != null && list.size() > 0;
    }

    public static boolean isNotNullOrEmpty(Map<?,?> map){
        return map != null && map.size() > 0;
    }

}
