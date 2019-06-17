package com.example.springbootapp.proj1;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name  = "products_material", schema = "gblr0gFrsL")
public class product {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name= "id")
    private int id;

    public int getId() {
        return this.id;
    }
    public void setId(int id) {
        this.id = id;
    }

 
    @Column(name= "text_box")
    private String text_box;


    public String getText_box() {
    	return this.text_box;
    }
    public void setText_box(String text_box) {
    	this.text_box = text_box;
    }

    
    @Column(name= "type")
    private int type;

    public int getType() {
        return this.type;
    }
    public void setType(int type) {
        this.type = type;
    }


 
    @Column(name= "request_qty")
    private int request_qty;


    public int getRequest_qty() {
    	return this.request_qty;
    }
    public void setRequest_qty(int request_qty) {
    	this.request_qty = request_qty;
    }

     
    
    


}