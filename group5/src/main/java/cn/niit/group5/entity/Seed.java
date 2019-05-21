package cn.niit.group5.entity;

import java.io.Serializable;

public class Seed implements Serializable {
    private Integer id;

    private String number;

    private String cropName;

    private String kind;

    private String reviewTime;

    private String isTransgenic;

    private String isExit;

    private String agency;

    private String unitName;

    private String source;

    private String area;

    private String feature;

    private String output;

    private String foster;

    private Integer isDelete;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number == null ? null : number.trim();
    }

    public String getCropName() {
        return cropName;
    }

    public void setCropName(String cropName) {
        this.cropName = cropName == null ? null : cropName.trim();
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind == null ? null : kind.trim();
    }

    public String getReviewTime() {
        return reviewTime;
    }

    public void setReviewTime(String reviewTime) {
        this.reviewTime = reviewTime == null ? null : reviewTime.trim();
    }

    public String getIsTransgenic() {
        return isTransgenic;
    }

    public void setIsTransgenic(String isTransgenic) {
        this.isTransgenic = isTransgenic == null ? null : isTransgenic.trim();
    }

    public String getIsExit() {
        return isExit;
    }

    public void setIsExit(String isExit) {
        this.isExit = isExit == null ? null : isExit.trim();
    }

    public String getAgency() {
        return agency;
    }

    public void setAgency(String agency) {
        this.agency = agency == null ? null : agency.trim();
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName == null ? null : unitName.trim();
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature == null ? null : feature.trim();
    }

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output == null ? null : output.trim();
    }

    public String getFoster() {
        return foster;
    }

    public void setFoster(String foster) {
        this.foster = foster == null ? null : foster.trim();
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", number=").append(number);
        sb.append(", cropName=").append(cropName);
        sb.append(", kind=").append(kind);
        sb.append(", reviewTime=").append(reviewTime);
        sb.append(", isTransgenic=").append(isTransgenic);
        sb.append(", isExit=").append(isExit);
        sb.append(", agency=").append(agency);
        sb.append(", unitName=").append(unitName);
        sb.append(", source=").append(source);
        sb.append(", area=").append(area);
        sb.append(", feature=").append(feature);
        sb.append(", output=").append(output);
        sb.append(", foster=").append(foster);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}