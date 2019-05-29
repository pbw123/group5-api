package cn.niit.group5.entity;

import java.io.Serializable;
import java.sql.Timestamp;

public class User implements Serializable {
    private Integer id;

    private String phoneNumber;

    private String userName;

    private String password;

    private Timestamp regitsterTime;

    private String time;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    private String sex;

    //身份/人员类别
    private String identity;

    //    用户地址
    private String userAddress;
    //工作地址
    private String unitAddress;

    //单位名称
    private String unitName;

    //种植种类
    private String plantCategory;

    //    种植范围
    private String plantSize;

    //总签到次数
    private Integer checkAll;

    //连续签到次数
    private Integer checkContinuous;

    //    总积分
    private Integer score;

    //    是否禁用
    private Integer status;

    //    学历/教育背景
    private String educational;

    private String email;

    //行业类型
    private String vocation;

    private Byte isDelete;

    private String headUrl;

    private static final long serialVersionUID = 1L;

    public void setRegitsterTime(Timestamp regitsterTime) {
        this.regitsterTime = regitsterTime;
    }

    public Timestamp getRegitsterTime() {
        return regitsterTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getUnitAddress() {
        return unitAddress;
    }

    public void setUnitAddress(String unitAddress) {
        this.unitAddress = unitAddress;
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




    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public String getPlantCategory() {
        return plantCategory;
    }

    public void setPlantCategory(String plantCategory) {
        this.plantCategory = plantCategory;
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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", regitsterTime=" + regitsterTime +
                ", time='" + time + '\'' +
                ", sex='" + sex + '\'' +
                ", identity='" + identity + '\'' +
                ", userAddress='" + userAddress + '\'' +
                ", unitAddress='" + unitAddress + '\'' +
                ", unitName='" + unitName + '\'' +
                ", plantCategory='" + plantCategory + '\'' +
                ", plantSize='" + plantSize + '\'' +
                ", checkAll=" + checkAll +
                ", checkContinuous=" + checkContinuous +
                ", score=" + score +
                ", status=" + status +
                ", educational='" + educational + '\'' +
                ", email='" + email + '\'' +
                ", vocation='" + vocation + '\'' +
                ", isDelete=" + isDelete +
                ", headUrl='" + headUrl + '\'' +
                '}';
    }
}