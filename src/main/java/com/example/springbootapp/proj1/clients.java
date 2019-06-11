package com.example.springbootapp.proj1;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "clients", schema = "gblr0gFrsL")
public class clients{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "client_id")
    private int client_id;

	public int getClient_id() {
		return this.client_id;
	}

	public void setClient_id(int client_id) {
		this.client_id = client_id;
	}


	


    @Column(name = "client_name")
    private String client_name;

	public String getClient_name() {
		return this.client_name;
	}

	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}


    @Column(name = "client_trading_name")
    private String client_trading_name;

	public String getClient_trade() {
		return this.client_trading_name;
	}

	public void setClient_trade(String client_trading_name) {
		this.client_trading_name = client_trading_name;
	}


    @Column(name = "client_address")
    private String client_address;

	public String getClient_address() {
		return this.client_address;
	}

	public void setClient_address(String client_address) {
		this.client_address = client_address;
	}


    @Column(name = "client_contact")
    private String client_contact;

	public String getClient_contact() {
		return this.client_contact;
	}

	public void setClient_contact(String client_contact) {
		this.client_contact = client_contact;
	}


    @Column(name = "client_status")
    private String client_status;

	public String getClient_status() {
		return this.client_status;
	}

	public void setClient_status(String client_status) {
		this.client_status = client_status;
	}

	@Column(name = "client_age")
	private int client_age;

	public int getClient_age() {
		return this.client_age;
	}

	public void setClient_age(int client_age) {
		this.client_age = client_age;
	}

	@OneToMany(mappedBy = "cid")
	@JsonIgnore
  private Set<enquiry> enq;

	public Set<enquiry> getEnq() {
		return this.enq;
	}

	public void setEnq(Set<enquiry> enq) {
		this.enq = enq;
	}




    
    public clients() {
    }




}