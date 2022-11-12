package com.ecombook.entities;
 
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

 @Entity 
public class Product {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)

private int pId;
private String pName;
@Column(length = 300)
private String pDesc;
private String pPhoto;
private String pPrice;
private String pDiscoutnt;
private String pQuantity;
@ManyToOne
private Category category;


    public Product(int pId, String pName, String pDesc, String pPhoto, String pPrice, String pDiscoutnt, String pQuantity,Category category) {
        this.pId = pId;
        this.pName = pName;
        this.pDesc = pDesc;
        this.pPhoto = pPhoto;
        this.pPrice = pPrice;
        this.pDiscoutnt = pDiscoutnt;
        this.pQuantity = pQuantity;
        this.category=category;
    }

    public Product(String pName, String pDesc, String pPhoto, String pPrice, String pDiscoutnt, String pQuantity,Category category) {
        this.pName = pName;
        this.pDesc = pDesc;
        this.pPhoto = pPhoto;
        this.pPrice = pPrice;
        this.pDiscoutnt = pDiscoutnt;
        this.pQuantity = pQuantity;
        this.category=category;
    }

    public Product() {
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpDesc() {
        return pDesc;
    }

    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    public String getpPhoto() {
        return pPhoto;
    }

    public void setpPhoto(String pPhoto) {
        this.pPhoto = pPhoto;
    }

    public String getpPrice() {
        return pPrice;
    }

    public void setpPrice(String pPrice) {
        this.pPrice = pPrice;
    }

    public String getpDiscoutnt() {
        return pDiscoutnt;
    }

    public void setpDiscoutnt(String pDiscoutnt) {
        this.pDiscoutnt = pDiscoutnt;
    }

    public String getpQuantity() {
        return pQuantity;
    }

    public void setpQuantity(String pQuantity) {
        this.pQuantity = pQuantity;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    

    @Override
    public String toString() {
        return "Product{" + "pId=" + pId + ", pName=" + pName + ", pDesc=" + pDesc + ", pPhoto=" + pPhoto + ", pPrice=" + pPrice + ", pDiscoutnt=" + pDiscoutnt + ", pQuantity=" + pQuantity + '}';
    }

 
    //Price Discount 
    
  
    
}
