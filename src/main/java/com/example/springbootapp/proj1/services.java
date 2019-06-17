package com.example.springbootapp.proj1;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.validation.Valid;

import org.hibernate.annotations.SourceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class services {

    @Autowired
    enquiryRepo enqrepo;

    @Autowired
    orderitemsRepo ordrepo;

    @Autowired
    deliveryRepo delrepo;

    @Autowired
    courierRepo crepo;

    @Autowired
    orderitemsRepo oirepo;

    @Autowired
    returnsRepo rerepo;


    @ResponseBody
    @RequestMapping(value = "/enquiries", method = RequestMethod.GET)
    public List<enquiry> getAllEnqs() {
      List<enquiry> list = enqrepo.findAll();
      return list;
    }

    @ResponseBody 
    @RequestMapping(value = "/materialOrder", method = RequestMethod.GET)
    public List<enquiry> confirmedMaterial() {

        List<enquiry> list = enqrepo.findConfirmed();

        return list;
    }


    @ResponseBody
    @RequestMapping(value = "/materialEnquiry", method = RequestMethod.GET)
    public List<enquiry> pendingMaterial() {

        List<enquiry> list = enqrepo.findPending();

        return list;
    }

    @ResponseBody
    @RequestMapping(value = "/opending", method = RequestMethod.GET)
    public List<orderitems> apiOpending() {

        List<orderitems> list = ordrepo.pendings();

        return list;
    }

    @ResponseBody
    @RequestMapping(value = "/ocancelled", method = RequestMethod.GET)
    public List<orderitems> apiOcancelled() {

        List<orderitems> list = ordrepo.cancelledOrders();

        return list;
    }

        
    @ResponseBody
    @RequestMapping(value = "/productionOrders", method = RequestMethod.GET)
    public List<enquiry> prodorders(){

        List<enquiry> list = enqrepo.findAll();
            
        return list;
    }

    @ResponseBody
    @RequestMapping(value = "/deliveryNotes", method = RequestMethod.GET)
    public List<delivery> getAllDeliveryNotes(){

        List<delivery> list = delrepo.findAll();
            
        return list;
    }


    @ResponseBody
    @RequestMapping(value = "/viewReturnsExchange", method = RequestMethod.GET)
    public List<returns>  returnExchange() {

        
        List<returns> list = rerepo.getAllExchange();

        return list;
    }
  

    @ResponseBody
    @RequestMapping(value = "/viewReturnsRepairs", method = RequestMethod.GET)
    public List<returns>  returnRepairs() {

        
        List<returns> list = rerepo.getAllRepairs();

        return list;
    }
  



}