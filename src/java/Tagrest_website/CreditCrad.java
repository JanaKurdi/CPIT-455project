package Tagrest_website;

public class CreditCrad {

    private String Bank_Name;
    private String CardNo;
    private String ExpiredDate;
    private int CVVNo;

    public String getBank_Name() {
        return Bank_Name;
    }

    public void setBank_Name(String Bank_Name) {
        this.Bank_Name = Bank_Name;
    }

    public String getCardNo() {
        return CardNo;
    }

    public void setCardNo(String CardNo) {
        this.CardNo = CardNo;
    }

    public String getExpiredDate() {
        return ExpiredDate;
    }

    public void setExpiredDate(String ExpiredDate) {
        this.ExpiredDate = ExpiredDate;
    }

    public int getCVVNo() {
        return CVVNo;
    }

    public void setCVVNo(int CVVNo) {
        this.CVVNo = CVVNo;
    }
    
    public boolean Authorized() {

       

        return false;

       

    }
}
