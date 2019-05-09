package cn.niit.group5.entity;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
    private Integer id;

    private String phoneNumber;

    private String userName;

    private String password;

    private Date regitsterTime;

    private Byte sex;

    private Integer identity;

    private String userAddress;

    private String unitName;

    private Integer plantCategory;

    private String plantSize;

    private Integer checkAll;

    private Integer checkContinuous;

    private Integer score;

    private Byte isForbidden;

    private String educational;

    private String email;

    private String vocation;

    private Byte isDelete;

    private String headUrl;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber == null ? null : phoneNumber.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Date getRegitsterTime() {
        return regitsterTime;
    }

    public void setRegitsterTime(Date regitsterTime) {
        this.regitsterTime = regitsterTime;
    }

    public Byte getSex() {
        return sex;
    }

    public void setSex(Byte sex) {
        this.sex = sex;
    }

    public Integer getIdentity() {
        return identity;
    }

    public void setIdentity(Integer identity) {
        this.identity = identity;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress == null ? null : userAddress.trim();
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName == null ? null : unitName.trim();
    }

    public Integer getPlantCategory() {
        return plantCategory;
    }

    public void setPlantCategory(Integer plantCategory) {
        this.plantCategory = plantCategory;
    }

    public String getPlantSize() {
        return plantSize;
    }

    public void setPlantSize(String plantSize) {
        this.plantSize = plantSize == null ? null : plantSize.trim();
    }

    public Integer getCheckAll() {
        return checkAll;
    }

    public void setCheckAll(Integer checkAll) {
        this.checkAll = checkAll;
    }

    public Integer getCheckContinuous() {
        return checkContinuous;
    }

    public void setCheckContinuous(Integer checkContinuous) {
        this.checkContinuous = checkContinuous;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Byte getIsForbidden() {
        return isForbidden;
    }

    public void setIsForbidden(Byte isForbidden) {
        this.isForbidden = isForbidden;
    }

    public String getEducational() {
        return educational;
    }

    public void setEducational(String educational) {
        this.educational = educational == null ? null : educational.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getVocation() {
        return vocation;
    }

    public void setVocation(String vocation) {
        this.vocation = vocation == null ? null : vocation.trim();
    }

    public Byte getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Byte isDelete) {
        this.isDelete = isDelete;
    }

    public String getHeadUrl() {
        return headUrl;
    }

    public void setHeadUrl(String headUrl) {
        this.headUrl = headUrl == null ? null : headUrl.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", phoneNumber=").append(phoneNumber);
        sb.append(", userName=").append(userName);
        sb.append(", password=").append(password);
        sb.append(", regitsterTime=").append(regitsterTime);
        sb.append(", sex=").append(sex);
        sb.append(", identity=").append(identity);
        sb.append(", userAddress=").append(userAddress);
        sb.append(", unitName=").append(unitName);
        sb.append(", plantCategory=").append(plantCategory);
        sb.append(", plantSize=").append(plantSize);
        sb.append(", checkAll=").append(checkAll);
        sb.append(", checkContinuous=").append(checkContinuous);
        sb.append(", score=").append(score);
        sb.append(", isForbidden=").append(isForbidden);
        sb.append(", educational=").append(educational);
        sb.append(", email=").append(email);
        sb.append(", vocation=").append(vocation);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", headUrl=").append(headUrl);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}