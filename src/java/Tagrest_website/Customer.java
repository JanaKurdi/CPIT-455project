package Tagrest_website;

public class Customer implements User {

    private String Username;
    private String Password;
    private boolean loginStatus;
    private String Customer_Address;
    private String Customer_phone;
    private String Customer_email;

    public Customer() {
    }

    public Customer(String Username, String Password) {
        this.Username = Username;
        this.Password = Password;

    }

    public String getUserName() {
        return Username;
    }

    public void setUserName(String userName) {
        this.Username = userName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        this.Password = password;
    }

    public String getCustomer_Address() {
        return Customer_Address;
    }

    public void setCustomer_Address(String Custm_add) {
        this.Customer_Address = Custm_add;
    }

    public String getCustomer_phone() {
        return Customer_phone;
    }

    public void setCustomer_phone(String Custm_phone) {
        this.Customer_phone = Custm_phone;
    }

    public String getCustomer_email() {
        return Customer_email;
    }

    public void setCustomer_email(String Custm_email) {
        this.Customer_email = Custm_email;
    }

    public boolean isLoginStatus() {
        return loginStatus;
    }

    public void setLoginStatus(boolean loginStatus) {
        this.loginStatus = loginStatus;
    }

    @Override
    public boolean VerifyLogin() {
        return false;
    }

    @Override
    public boolean login(String Username, String Password) {
        boolean state = false;

        if (Username.equals(this.Username) && Password.equals(this.Password)) {
            state = true;
        } else {
            state = false;
        }
        return false;
    }

    public void signup() {

    }
}
