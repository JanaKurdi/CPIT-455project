package Tagrest_website;

public interface User {

    String Username = null;
    String Password = null;
    //boolean loginState = false;

    public boolean VerifyLogin();

    public boolean login(String Username,String Password);
}
