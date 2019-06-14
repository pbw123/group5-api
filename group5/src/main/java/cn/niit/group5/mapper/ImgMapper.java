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

 @Select("SELECT * FROM t_img WHERE news_id IS NOT NULL")
 List<Img>getAllNewsImgsList();

//获取供求图片
 @Select("select * from t_img where buy_id=#{0}")
 List<Img>getBuyImgs(Integer id);
//供求添加图片
 int insertBuyImg(Img img);
// 咨询专家添加图片
 int addExpertQuestionImgs(Img img);
//获取专家图片
@Select("select * from t_img where expert_question_id=#{0}")
 List<Img>getExpertImgs(Integer id);

}