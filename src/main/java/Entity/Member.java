package Entity;

public class Member {
    private String uname;
    private String password;
    private String email;
    private String phone;
    private String money;
    private String isBlocked;
    private String umberOrders;

    public Member(String uname, String email, String phone, String money, String isBlocked, String umberOrders) {
        this.uname = uname;
        this.email = email;
        this.phone = phone;
        this.money = money;
        this.isBlocked = isBlocked;
        this.umberOrders = umberOrders;
    }

    public Member(String uname, String password, String email, String phone) {
        this.uname = uname;
        this.password = password;
        this.email = email;
        this.phone = phone;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public String getIsBlocked() {
        return isBlocked;
    }

    public void setIsBlocked(String isBlocked) {
        this.isBlocked = isBlocked;
    }

    public String getUmberOrders() {
        return umberOrders;
    }

    public void setUmberOrders(String umberOrders) {
        this.umberOrders = umberOrders;
    }

    @Override
    public String toString() {
        return "Member{" +
                "uname='" + uname + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", money='" + money + '\'' +
                ", isBlocked='" + isBlocked + '\'' +
                ", umberOrders='" + umberOrders + '\'' +
                '}';
    }
}


