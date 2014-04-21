package org.mycup.util;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.IOException;

public class Util {

    public static boolean isNullOrEmpty(String s) {
        return s == null || s.equals("");
    }

    public static void forward(ServletRequest request, ServletResponse response, String resource) throws IOException, ServletException {
        request.getRequestDispatcher(resource).forward(request, response);
    }
}