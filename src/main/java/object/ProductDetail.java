package object;

public class ProductDetail{
    private int id;
    private int productId;
    private String size;
    private String color;
    private String ingredients;
    private String usageInstructions;
    private int stockQuantity;

    // Constructor không tham số
    public ProductDetail() {
    }

    // Constructor có tham số
    public ProductDetail(int id, int productId, String size, String color,
                         String ingredients, String usageInstructions, int stockQuantity) {
        this.id = id;
        this.productId = productId;
        this.size = size;
        this.color = color;
        this.ingredients = ingredients;
        this.usageInstructions = usageInstructions;
        this.stockQuantity = stockQuantity;
    }

    // Getter và Setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public String getUsageInstructions() {
        return usageInstructions;
    }

    public void setUsageInstructions(String usageInstructions) {
        this.usageInstructions = usageInstructions;
    }

    public int getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }

    // ToString method để dễ dàng hiển thị thông tin chi tiết sản phẩm
    @Override
    public String toString() {
        return "ProductDetail [id=" + id + ", productId=" + productId + ", size=" + size + ", color=" + color
                + ", ingredients=" + ingredients + ", usageInstructions=" + usageInstructions + ", stockQuantity="
                + stockQuantity + "]";
    }
}
