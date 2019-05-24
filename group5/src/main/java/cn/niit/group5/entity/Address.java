package cn.niit.group5.entity;

import java.io.Serializable;
import java.util.List;

public class Address implements Serializable {
    private Integer id;

    private String address;

    private Integer isDelete;

    private Module module;

    private ModuleAddress moduleAddress;


    private List<Module> modules;



    private List<News>  HotNews;



    private List<Video> videos;

    private static final long serialVersionUID = 1L;
    public List<News> getHotNews() {
        return HotNews;
    }

    public void setHotNews(List<News> hotNews) {
        HotNews = hotNews;
    }  public List<Video> getVideos() {
        return videos;
    }

    public void setVideos(List<Video> videos) {
        this.videos = videos;
    }
    public List<Module> getModules() {
        return modules;
    }

    public void setModules(List<Module> modules) {
        this.modules = modules;
    }


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