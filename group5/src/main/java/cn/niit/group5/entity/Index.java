package cn.niit.group5.entity;

import java.io.Serializable;
import java.util.List;

public class Index implements Serializable {
    private  Integer id;
    private List<Module> modules;
    private List<News>  HotNews;
    private List<News> Trends;
    private List<Video> videos;


    public List<News> getTrends() {
        return Trends;
    }

    public void setTrends(List<News> trends) {
        Trends = trends;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<Module> getModules() {
        return modules;
    }

    public void setModules(List<Module> modules) {
        this.modules = modules;
    }

    public List<News> getHotNews() {
        return HotNews;
    }

    public void setHotNews(List<News> hotNews) {
        HotNews = hotNews;
    }

    public List<Video> getVideos() {
        return videos;
    }

    public void setVideos(List<Video> videos) {
        this.videos = videos;
    }

}
