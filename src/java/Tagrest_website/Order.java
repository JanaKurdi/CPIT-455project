package Tagrest_website;

public class Order {

    private int product_id;
    public int feedback;
    private int total_products;
    private double total_cost;

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getFeedback() {
        return feedback;
    }

    public void setFeedback(int feedback) {
        this.feedback = feedback;
    }

    public int getTotal_products() {
        return total_products;
    }

    public void setTotal_products(int total_products) {
        this.total_products = total_products;
    }

    public double getTotal_cost() {
        return total_cost;
    }

    public void setTotal_cost(double total_cost) {
        this.total_cost = total_cost;
    }
    
    

    public int Edit_order() {

        return 0;

    }

    public void Cancel_order() {

    }

    public void Confirm_order() {

    }

    public String Send_feedback() {

        return null;

    }

    public void View_feedback() {

    }

}
