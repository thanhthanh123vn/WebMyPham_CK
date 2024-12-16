package object.cart;

import object.Product;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

public class Cart {

Map<Integer,ProductCart> cart = new HashMap<>();
public boolean put(Product product) {
    if(cart.containsKey(product.getId())) {
        update(product.getId(),1+cart.get(product.getId()).getCount());



        return false;

    }
    cart.put(product.getId(),convert(product));
    return true;
}


public boolean remove(int id) {
    if(cart.containsKey(id)) {
        cart.remove(id);
        return true;
    }
    return false;
}

    public ProductCart update(int id, int quantity) {
         AtomicReference<ProductCart> updatedProduct = new AtomicReference<>();
        cart.forEach((pid,productCart) -> {
            if (id == productCart.getId()) {
                productCart.setCount(quantity);
                updatedProduct.set(productCart); // Cập nhật giá trị trong mảng
            }
        });
        return updatedProduct.get(); // Trả về sản phẩm đã cập nhật hoặc null nếu không tìm thấy
    }
public List<ProductCart> getList() {
    return new ArrayList<>(cart.values());
}
public int totalCount(int id){
    return cart.get(id).getCount();
}
    public double totalCart() {
        AtomicReference<Double> total = new AtomicReference<>(0.0);

        cart.forEach((pid, productCart) -> {
            total.updateAndGet(current -> current + productCart.getCount() * productCart.getPrice());
        });

        return total.get();
    }

    public ProductCart convert(Product p){
    ProductCart cart = new ProductCart();
    cart.setId(p.getId());
    cart.setPrice(p.getPrice());
    cart.setName(p.getName());
    cart.setCount(1);
    cart.setImage(p.getImage());
    cart.setDetail(p.getDetail());

    return cart;


}
}
