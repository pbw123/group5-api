package cn.niit.group5.controller;

import cn.niit.group5.entity.Collection;
import cn.niit.group5.entity.Exchange;
import cn.niit.group5.entity.Reply;
import cn.niit.group5.mapper.CollectionMapper;
import cn.niit.group5.mapper.ExchangeMapper;
import cn.niit.group5.mapper.ImgMapper;
import cn.niit.group5.mapper.ReplyMapper;
import cn.niit.group5.util.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;
import java.util.List;

@RestController
@RequestMapping(value = "/api/exchange")
@Client
@Api(tags = "3.交流模块")
public class ExchangeController {
    @Autowired
    private ExchangeMapper exchangeMapper;
    @Autowired
    private ReplyMapper replyMapper;
    @Autowired
    private CollectionMapper collectionMapper;
    @Autowired
    private ImgMapper imgMapper;


    @ApiOperation(value = "所有交流列表")
    @GetMapping(value = "getExchangeList")
    public ResponseResult getExchangeListByMyId()
    {
        List<Exchange> exchangeList=exchangeMapper.getExchangeList();

        for (Exchange exchange:exchangeList){
            exchange.setImgs(imgMapper.selectImgByExchangeId(exchange.getId()));
            exchange.setTime(StringUtil.getDateString(exchange.getCreateTime()));
            List<Reply> replies = exchange.getReplies();
           if (replies!=null)
           {
               for (Reply reply:replies)
               {
                   String time = StringUtil.getDateString(reply.getReplyTime());
                   if (time!=null)
                   reply.setTime(time);
               }
           }
        }
       return ResponseResult.success(exchangeList);
    }
/*
*
* 发布一条交流
*
*/
    @ApiOperation(value = "发表交流")
    @PostMapping(value = "/add")
    public ResponseResult addExchange(
            @RequestParam(required = true) Integer userId,
            @RequestParam(required = true) String content,
            MultipartFile file
    ){
        Exchange exchange=new Exchange();
        exchange.setUserId(userId);
        exchange.setContent(content);
        exchange.setCreateTime(new Timestamp(System.currentTimeMillis()));
        if (file!=null)
        {
            String imgUrl = UploadImg.ossUpload(file);
            exchange.setImg(imgUrl);
        }
        exchangeMapper.insertExchange(exchange);
        return ResponseResult.success();
    }

    /*
     * 发表评论
     * */
    @ApiOperation(value = "在交流中发表评论")
    @PostMapping(value = "/reply")
    public ResponseResult replyExchange(
            @RequestParam(required = true) int userId,
            @RequestParam(required = true) String content,
            @RequestParam(required = true)  byte exchangeId
    ){
        Reply reply=new Reply();
        reply.setIsExchangeReply(1);
        reply.setUserId(userId);
        reply.setContent(content);
        reply.setExchangeId(exchangeId);
        reply.setReplyTime(new Timestamp(System.currentTimeMillis()));
        replyMapper.insertComment1(reply);
        return ResponseResult.success();
    }

    //  收藏交流
    @ApiOperation(value = "收藏交流")
    @PostMapping(value = "/collectExchange")
    public ResponseResult CollectExchange(
            @RequestParam(required = true) int userId,
            @RequestParam(required = true) int exchangeId
    ){
        Collection collection=new Collection();
        collection.setUserId(userId);
        collection.setExchangeId(exchangeId);
        collectionMapper.collectExchange(collection);
        return ResponseResult.success();
    }
        @ApiOperation(value = "我的交流",notes = "我的交流列表,传入我的用户id")
        @GetMapping(value = "getMyExchangeList")
         public ResponseResult getMyExchangeList(Integer userId)
        {
            List<Exchange> exchangeList=exchangeMapper.getExchangeListByUserId(userId);
            for(Exchange exchange:exchangeList){
                exchange.setImgs(imgMapper.selectImgByExchangeId(exchange.getId()));
                exchange.setTime(StringUtil.getDateString(exchange.getCreateTime()));
            }
            return ResponseResult.success(exchangeList);
        }
    @ApiOperation(value = "交流详情",notes = "传入该交流的id")
    @GetMapping(value = "/getExchangeDetailById")
    public ResponseResult getExchangeDetail(
            Integer id
    ){
        Exchange exchange=exchangeMapper.getExchangeDetailById(id);
        exchange.setImgs(imgMapper.selectImgByExchangeId(exchange.getId()));
        exchange.setTime(StringUtil.getDateString(exchange.getCreateTime()));
        List<Reply> replies = exchange.getReplies();
        for (Reply reply:replies)
        {
            reply.setTime(StringUtil.getDateString(reply.getReplyTime()));
        }
        return ResponseResult.success(exchange);
    }


        @ApiOperation(value = "删除我的交流文章",notes = "需要传入该交流文章的id")
        @GetMapping(value = "deleteExchange")
         public ResponseResult deleteExchange(Integer id)
        {
            if (exchangeMapper.deleteMyExchange(id)==1)
            {
                return new  ResponseResult(StatusConst.SUCCESS, MsgConst.SUCCESS);
            }else {
                return new ResponseResult(StatusConst.ERROR, MsgConst.FAIL);
            }
        }

}
