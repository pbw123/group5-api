package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.*;
import cn.niit.group5.entity.dto.CollectDTO;
import cn.niit.group5.entity.dto.PageDTO;
import cn.niit.group5.mapper.CollectionMapper;
import cn.niit.group5.mapper.ExchangeMapper;
import cn.niit.group5.mapper.ImgMapper;
import cn.niit.group5.mapper.QuestionMapper;
import cn.niit.group5.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;

@Service
public class ExchangeServiceImp {

    @Autowired
    private QuestionMapper questionMapper;

    public ResponseResult updateQuestion(String content, String createTime) {
        Question question = new Question();
        question.setContent(content);
        question.setCreateTime(Timestamp.valueOf(createTime));
        int i = questionMapper.updateQuestion(question);
        if (i == 1)
            return ResponseResult.success();
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    @Autowired
    private ExchangeMapper exchangeMapper;
    @Autowired
    private CollectionMapper collectionMapper;
    @Autowired
    private ImgMapper imgMapper;

    public ResponseResult exchangeDetail(Integer id, Integer userId) {
        Exchange exchange = exchangeMapper.getExchangeDetailById(id);
        String column = "exchange_id";
        String replyColumn = "reply_id";
//        点赞量
        int likeNumber = exchangeMapper.getExchangeLikeNumber(column, id);
        exchange.setLike(likeNumber);
//        该登录用户是否已经点赞
        Like likeOrNo = exchangeMapper.isLikeOrNo(userId, column, id);
        if (likeOrNo == null || likeOrNo.getStatus() == 1) {
            exchange.setIsLike(1);
        } else {
            exchange.setIsLike(0);
        }
//        收藏数量
        int number = collectionMapper.getExchangeNumber(column, id);
        exchange.setCollectNumber(number);
//        该登录用户是否收藏了
        Collection collection = collectionMapper.getCollectionById(userId, column, id);
        if (collection == null || collection.getStatus() == 1) {
            exchange.setStatus(1);
        } else {
            exchange.setStatus(0);
        }
//        问题的图片
        exchange.setImgs(imgMapper.selectImgByExchangeId(exchange.getId()));
//        List<String>list=new ArrayList<>();
//        list.add(exchange.getImg());
//        exchange.setImgs(list);
        exchange.setTime(StringUtil.getDateString(exchange.getCreateTime()));

        List<Reply> replies = exchange.getReplies();
        for (Reply reply : replies) {
            Timestamp replyTime = reply.getReplyTime();
            if (reply != null)
                reply.setTime(StringUtil.getDateString(replyTime));
//            评论的点赞数量
            int number1 = exchangeMapper.getExchangeLikeNumber(replyColumn, reply.getId());
            reply.setLike(number1);
//            该登录用户是否点赞了评论
            Like likeOrNo1 = exchangeMapper.isLikeOrNo(userId, replyColumn, reply.getId());
            if (likeOrNo1 == null || likeOrNo1.getStatus() == 1)
                reply.setIsLike(1);
            else
                reply.setIsLike(0);
        }
        return ResponseResult.success(exchange);
    }

    public ResponseResult getMyAllList(Integer userId, Integer currPage, Integer pageSize) {
        String column = "exchange_id";
        List<Exchange> exchangeList = exchangeMapper.getExchangeListByUserId(userId);
        PageDTO pageDTO = PageUtil.pageListDemo(currPage, pageSize, exchangeList);
        List<Exchange> dtoList = pageDTO.getList();
        for (Exchange exchange : dtoList) {
            exchange.setImgs(imgMapper.selectImgByExchangeId(exchange.getId()));
            Timestamp createTime = exchange.getCreateTime();
            if (createTime != null)
                exchange.setTime(StringUtil.getDateString(createTime));
            int likeNumber = exchangeMapper.getExchangeLikeNumber(column, exchange.getId());
            exchange.setLike(likeNumber);
        }
        return ResponseResult.succ(dtoList, pageDTO.getSize());
    }

    public ResponseResult getAllList(Integer userId, Integer currPage, Integer pageSize) {
        List<Exchange> lists = exchangeMapper.getExchangeList();
        PageDTO page = PageUtil.pageListDemo(currPage, pageSize, lists);
        List<Exchange> exchangeList = page.getList();
        String column = "exchange_id";
        String replyColumn = "reply_id";
        for (Exchange exchange : exchangeList) {
            exchange.setImgs(imgMapper.selectImgByExchangeId(exchange.getId()));
//           List<String>list=new ArrayList<>();
//           list.add(exchange.getImg());
//           list.add(exchange.getImg());
//            exchange.setImgs(list);
            exchange.setTime(StringUtil.getDateString(exchange.getCreateTime()));
            int likeNumber = exchangeMapper.getExchangeLikeNumber(column, exchange.getId());
            exchange.setLike(likeNumber);
            List<Reply> replies = exchange.getReplies();
            if (replies != null) {
                for (Reply reply : replies) {
                    Timestamp replyTime = reply.getReplyTime();
                    int number = exchangeMapper.getExchangeLikeNumber(replyColumn, reply.getId());
                    reply.setLike(number);
                    if (replyTime != null)
                        reply.setTime(StringUtil.getDateString(replyTime));
                }
            }
            int number = collectionMapper.getExchangeNumber(column, exchange.getId());
            exchange.setCollectNumber(number);
            if (userId != null) {
                //        该登录用户是否已经点赞
                Like likeOrNo = exchangeMapper.isLikeOrNo(userId, column, exchange.getId());
                if (likeOrNo == null || likeOrNo.getStatus() == 1) {
                    exchange.setIsLike(1);
                } else {
                    exchange.setIsLike(0);
                }
            }
        }
        return ResponseResult.succ(exchangeList, page.getSize());
    }

    //首次点赞就插入记录，否则切换状态
    public ResponseResult checkLike(Integer userId, String column, Integer exchangeId) {
        Like likeOrNo;
        likeOrNo = exchangeMapper.isLikeOrNo(userId, column, exchangeId);
        CollectDTO collectDTO = new CollectDTO();
        collectDTO.setStatus(1);
        collectDTO.setMsg("未点赞");
        if (likeOrNo == null) {
            int i = exchangeMapper.addLike(column, userId, exchangeId);
            if (i == 1) {
                collectDTO.setStatus(0);
                collectDTO.setMsg("已点赞");
            }
            return ResponseResult.success(collectDTO);
        } else {
            int i = exchangeMapper.updateStatus(likeOrNo.getStatus(), likeOrNo.getId());
            if (i == 1) {
                likeOrNo = exchangeMapper.isLikeOrNo(userId, column, exchangeId);
                Integer s = likeOrNo.getStatus();
                if (s == 1) {
                    return ResponseResult.success(collectDTO);
                } else {
                    collectDTO.setStatus(0);
                    collectDTO.setMsg("已点赞");
                    return ResponseResult.success(collectDTO);

                }
            }
        }
        return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }

    public ResponseResult addExchange(Integer userId, String content, String address,
                                      String[] imgs) {

        //        List<String> imgList = JSONArray.parseArray(imgs, String.class);
        Exchange exchange = new Exchange();
        exchange.setUserId(userId);
        exchange.setContent(content);
        exchange.setAddress(address);
        exchange.setCreateTime(new Timestamp(System.currentTimeMillis()));
        int i = exchangeMapper.insertExchange(exchange);
        if (i == 1) {
            if (imgs != null) {
                for (String image : imgs) {
                    Img img = new Img();
                    img.setExchangeId(exchange.getId());
                    img.setImgUrl(image);
                    imgMapper.insertExchangeImg(img);
                    System.out.println(image);
                }
            }
        }
        return ResponseResult.success();
    }
}
