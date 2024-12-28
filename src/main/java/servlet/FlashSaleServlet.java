package servlet;

import dao.ProductsDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import object.Product;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.List;

@WebServlet("/flashSale")
public class FlashSaleServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();

        ProductsDao productsDao = new ProductsDao();
        List<Product> productListFlashSale = productsDao.listProducts();

        for (Product product : productListFlashSale) {
            if (product.getDiscountPercentage() > 0) {
                BigDecimal discountAmount = product.getPrice()
                        .multiply(BigDecimal.valueOf(product.getDiscountPercentage() / 100));
                BigDecimal newPrice = product.getPrice().subtract(discountAmount);
                product.setPriceNew(newPrice); // Cập nhật giá mới
            }
        }

        String jsonResponse = convertProductsToJson(productListFlashSale);
        out.print(jsonResponse);
    }

    private String convertProductsToJson(List<Product> products) {
        StringBuilder json = new StringBuilder("[");
        for (int i = 0; i < products.size(); i++) {
            Product product = products.get(i);
            json.append("{")
                    .append("\"id\":").append(product.getId()).append(",")
                    .append("\"name\":\"").append(product.getName()).append("\",")
                    .append("\"price\":").append(product.getPrice()).append(",")
                    .append("\"priceNew\":").append(product.getPriceNew()).append(",")
                    .append("\"discountPercentage\":").append(product.getDiscountPercentage())
                    .append("}");
            if (i < products.size() - 1) json.append(",");
        }
        json.append("]");
        return json.toString();
    }
}
