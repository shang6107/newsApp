package com.cxgc.news_app.core.aspect;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author 上官炳强
 * @description
 * @since 2018-04-07 / 04:54:23
 */
@ControllerAdvice
public class GloblaExceptionHandler {

    @ExceptionHandler(RuntimeException.class)
    public ModelAndView errorResult(RuntimeException e){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("500");
        modelAndView.addObject("result","error");
        modelAndView.addObject("reason",e.getMessage());
        return modelAndView;
    }

}
