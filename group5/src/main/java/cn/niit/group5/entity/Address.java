package cn.niit.group5.entity;

import java.io.Serializable;

public class Address implements Serializable {
    private Integer id;

    private String address;

    private Integer isDelete;

    private Module module;

    private ModuleAddress moduleAddress;

    private static final long serialVersionUID = 1L;

    public Module getModule() {
        return module;
    }

    public void setModule(Module module) {
        this.module = module;
    }

    public ModuleAddress getModuleAddress() {
        return moduleAddress;
    }

    public void setModuleAddress(ModuleAddress moduleAddress) {
        this.moduleAddress = moduleAddress;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
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
        sb.append(", address=").append(address);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}