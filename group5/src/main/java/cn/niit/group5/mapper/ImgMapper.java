package cn.niit.group5.mapper;

import cn.niit.group5.entity.Img;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;
@Mapper
@Component
public interface ImgMapper {
   //存储提问内容中的图片
    void insertQuestionImg(Img img);

    //存储交流内容中的图片
    int insertExchangeImg(Img img);
    //通过提问的id遍历出图片数组
    List<Img> selectImgByQuestionId(int questionId);

    //通过交流的id遍历出图片数组
    List<Img> selectImgByExchangeId(int exchangeId);

    //遍历图片
 @Select("SELECT * FROM t_img")
  List<Img> getImg();

//
 @Select("select * from t_img where news_id=#{0}")
 List<Img>getNewsImgsList(Integer newsId);

 @Select("select * from t_img where buy_id=#{0}")
 List<Img>getBuyImgs(Integer id);

 int insertBuyImg(Img img);
}