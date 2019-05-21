package cn.niit.group5.controller;

import cn.niit.group5.entity.Collection;
import cn.niit.group5.entity.Exchange;
import cn.niit.group5.entity.Reply;
import cn.niit.group5.mapper.CollectionMapper;
import cn.niit.group5.mapper.ExchangeMapper;
import cn.niit.group5.mapper.ReplyMapper;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping(value = "/api/exchange")
@Api(tags = "交流模块")
public class ExchangeController {
    @Autowired
    private ExchangeMapper exchangeMapper;
    @Autowired
    private ReplyMapper replyMapper;
    @Autowired
    private CollectionMapper collectionMapper;

    @ApiOperation(value = "所有交流列表")
    @GetMapping(value = "getExchangeList")
    public List<Exchange> getExchangeListByMyId()
    {
        return exchangeMapper.getExchangeList();
    }
/*
*
* 发布一条交流
*
*/
    @ApiOperation(value = "发表交流")
    @PostMapping(value = "/add")
    public ResponseResult addExchange(
            @RequestParam(required = true) int userId,
            @RequestParam(required = true) String content
    ){
        Exchange exchange=new Exchange();
        exchange.setUserId(userId);
        exchange.setContent(content);
        exchange.setCreateTime(new Date());
        exchangeMapper.insertExchange(exchange);
        return ResponseResult.success(exchange.getId());
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
        reply.setReplyTime(new Date());
        replyMapper.insertComment1(reply);
        return ResponseResult.success(reply.getId());
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
        @GetMapping(value = "getMyExchangeList/{userId}")
         public List<Exchange>getMyExchangeList(@PathVariable int userId)
        {
            return exchangeMapper.getExchangeListByUserId(userId);
        }

}
