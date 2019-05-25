package cn.niit.group5.entity;

import java.io.Serializable;
import java.util.List;

public class Index implements Serializable {
    private  Integer id;
    private List<Module> modules;
    private List<News>  TopNews;
    private List<News> IndexDynamic;
    private List<Video> videos;
    private Question IndexHotQuestion;
    private Exchange IndexHotExchange;

    public List<News> getTopNews() {
        return TopNews;
    }

    public void setTopNews(List<News> topNews) {
        TopNews = topNews;
    }

    public List<News> getIndexDynamic() {
        return IndexDynamic;
    }

    public void setIndexDynamic(List<News> indexDynamic) {
        IndexDynamic = indexDynamic;
    }

    public Question getIndexHotQuestion() {
        return IndexHotQuestion;
    }

    public void setIndexHotQuestion(Question indexHotQuestion) {
        IndexHotQuestion = indexHotQuestion;
    }

    public Exchange getIndexHotExchange() {
        return IndexHotExchange;
    }

    public void setIndexHotExchange(Exchange indexHotExchange) {
        IndexHotExchange = indexHotExchange;
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

    public List<Video> getVideos() {
        return videos;
    }

    public void setVideos(List<Video> videos) {
        this.videos = videos;
    }

}
