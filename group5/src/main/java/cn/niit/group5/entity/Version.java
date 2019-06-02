package cn.niit.group5.entity;

import java.io.Serializable;

public class Version implements Serializable {
    private Integer id;

    private String type;

    private String current;

    private String max;

    private String min;

    private String address;

    private String description;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getCurrent() {
        return current;
    }

    public void setCurrent(String current) {
        this.current = current == null ? null : current.trim();
    }

    public String getMax() {
        return max;
    }

    public void setMax(String max) {
        this.max = max == null ? null : max.trim();
    }

    public String getMin() {
        return min;
    }

    public void setMin(String min) {
        this.min = min == null ? null : min.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", type=").append(type);
        sb.append(", current=").append(current);
        sb.append(", max=").append(max);
        sb.append(", min=").append(min);
        sb.append(", address=").append(address);
        sb.append(", description=").append(description);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}