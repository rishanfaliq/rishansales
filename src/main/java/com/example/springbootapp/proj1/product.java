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

 
    @Column(name= "label")
    private String label;

    public String getLabel() {
        return this.label;
    }
    public void setLabel(String label) {
        this.label = label;
    }


 
    @Column(name= "available")
    private float available;

    public float getAvailable() {
        return this.available;
    }
    public void setAvailable(float available) {
        this.available = available;
    }

    
    


}