package com.example.springbootapp.proj1;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


public interface returnsRepo extends CrudRepository<returns, String>{

    List<returns> findAll();


    @Query("Select r from returns r Where return_type='Repair'")
    public List<returns> getAllRepairs();

    
    @Query("Select r from returns r Where return_type='Refund'")
    public List<returns> getAllRefund();

    
    @Query("Select r from returns r Where return_type='Exchange'")
    public List<returns> getAllExchange();

    
}