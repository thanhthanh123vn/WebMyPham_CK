package object;

import java.util.List;

public class OrderDetail {
    private String recipientName;
    private String phoneNumber;
    private String address;
    private List<object.Product> productList;
    private int totalQuantity;
    private double totalPrice;

    // Constructor
    public OrderDetail(String recipientName, String phoneNumber, String address, List<object.Product> productList, int totalQuantity, double totalPrice) {
        this.recipientName = recipientName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.productList = productList;
        this.totalQuantity = totalQuantity;
        this.totalPrice = totalPrice;
    }

    // Getters and Setters
    public String getRecipientName() {
        return recipientName;
    }

    public void setRecipientName(String recipientName) {
        this.recipientName = recipientName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<object.Product> getProductList() {
        return productList;
    }

    public void setProductList(List<object.Product> productList) {
        this.productList = productList;
    }

    public int getTotalQuantity() {
        return totalQuantity;
    }

    public void setTotalQuantity(int totalQuantity) {
        this.totalQuantity = totalQuantity;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }



}
