package object.cart;

import object.Product;

import java.util.HashMap;
import java.util.Map;

public class Cart {

Map<Integer,ProductCart> cart = new HashMap<>();
public boolean put(Product product) {
    if(cart.containsKey(product.getId())) {

        return false;

    }
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
