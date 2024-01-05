package service;

import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements GeneralService<Product> {
    Connection connection = ConnectionCreator.getConnection();

    @Override
    public List<Product> findAll() {
        List<Product> productList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from product");
            System.out.println(preparedStatement); //in ra câu truy vấn.
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                productList.add(new Product(id, name, price));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return productList;
    }

    public List<Product> findAllByShop(int idShop) {
        List<Product> productList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "select p.id, p.name, p.price, p.imageurl, p.description " +
                    "from product p join shopproduct sp on p.id = sp.idproduct where sp.idshop = ?");
            preparedStatement.setInt(1, idShop);
            System.out.println(preparedStatement); //in ra câu truy vấn.
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                String imageurl = rs.getString("imageurl");
                String description = rs.getString("description");
                Product product = new Product(id, name, price, imageurl, description);
                productList.add(product);
                System.out.println(product.toString());
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return productList;
    }

    @Override
    public boolean add(Product product) throws SQLException {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into product(name, price) values (?,?)");
            preparedStatement.setString(1, product.getName());
            preparedStatement.setDouble(2, product.getPrice());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    @Override
    public boolean update(Product product) throws SQLException {
        return false;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from product where id = ?");
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement); //in ra câu truy vấn.
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    @Override
    public Product findById(int id) {
        Product productzz = new Product();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from product where id = ?");
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement); //in ra câu truy vấn.
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                double price = rs.getDouble("price"); // lấy ra classId từ bảng student trong db
                productzz = new Product(id, name, price);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return productzz;
    }

    @Override
    public List<Product> findByName(String name) {
        return null;
    }
}