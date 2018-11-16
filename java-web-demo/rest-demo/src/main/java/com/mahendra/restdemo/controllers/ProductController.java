package com.mahendra.restdemo.controllers;

import javax.websocket.server.PathParam;

import com.mahendra.restdemo.models.Product;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("products")
public class ProductController{
 
    @RequestMapping(value="/find/{id}",method=RequestMethod.GET, produces="application/json")
    public Product findById(@PathParam("id") Integer id){
        Product p = new Product("Random Product", "Some description", 120.2);
        return p;
    }

}