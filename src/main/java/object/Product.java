package object;

import java.math.BigDecimal;
import java.util.Date;

public class Product {
    private int id;
    private String name;
    private String detail;
    private double price;
    private String image;
    private double priceNew;
    private Date date;
    private int orderProduct;
    private int groupProductId;
    private ProductDetail productDetail =new ProductDetail();

    // Constructor không tham số
    public Product() {}

    // Constructor với tham số
    public Product(int id, String name, String detail, double price, String image, double priceNew, Date date, int orderProduct, int groupProductId) {
        this.id = id;
        this.name = name;
        this.detail = detail;
        this.price = price;
        this.image = image;
        this.priceNew = priceNew;
        this.date = date;
        this.orderProduct = orderProduct;
        this.groupProductId = groupProductId;
    }
    

    public Product(int id, String name, String detail, double price, String image) {
		super();
		this.id = id;
		this.name = name;
		this.detail = detail;
		this.price = price;
		this.image = image;
        this.productDetail  = new ProductDetail();
	}

	// Getter và Setter cho các thuộc tính
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPriceNew() {
        return priceNew;
    }

    public void setPriceNew(double priceNew) {
        this.priceNew = priceNew;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getOrderProduct() {
        return orderProduct;
    }

    public void setOrderProduct(int orderProduct) {
        this.orderProduct = orderProduct;
    }

    public int getGroupProductId() {
        return groupProductId;
    }

    public void setGroupProductId(int groupProductId) {
        this.groupProductId = groupProductId;
    }
public ProductDetail getProductDetail() {
        return this.productDetail;
}
public void setProductDetail(ProductDetail productDetail) {
        this.productDetail = productDetail;
}
    // Phương thức toString để hiển thị thông tin đối tượng Product
    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", detail='" + detail + '\'' +
                ", price=" + price +
                ", image='" + image + '\'' +
                ", priceNew=" + priceNew +
                ", date=" + date +
                ", orderProduct=" + orderProduct +
                ", groupProductId=" + groupProductId +
                '}';
    }
}
