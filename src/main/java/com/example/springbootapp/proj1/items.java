package com.example.springbootapp.proj1;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name  = "itemlist", schema = "gblr0gFrsL")
public class items {

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

 
    @Column(name= "productname")
    private String productname;


    public String getProductname() {
    	return this.productname;
    }
    public void setProductname(String productname) {
    	this.productname = productname;
    }


   
    
 
    
    


}