package cn.niit.group5.controller;

import cn.niit.group5.entity.Exchange;
import cn.niit.group5.entity.Reply;
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

    @GetMapping(value = "getExchangeList")
    public List<Exchange>getExchangeListByMyId()
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
}
