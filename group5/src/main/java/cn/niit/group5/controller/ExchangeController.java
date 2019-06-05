package cn.niit.group5.controller;

import cn.niit.group5.entity.Exchange;
import cn.niit.group5.entity.Reply;
import cn.niit.group5.mapper.ExchangeMapper;
import cn.niit.group5.mapper.ReplyMapper;
import cn.niit.group5.serviceImp.CollectionServiceImp;
import cn.niit.group5.serviceImp.ExchangeServiceImp;
import cn.niit.group5.util.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;

@RestController
@RequestMapping(value = "/api/exchange")
@Client
@Api(tags = "3.交流模块")
public class ExchangeController {
    @Autowired
    private ExchangeMapper exchangeMapper;
    @Autowired
    private ReplyMapper replyMapper;

    @ApiOperation(value = "所有交流列表")
    @GetMapping(value = "getExchangeList")
    public ResponseResult getExchangeListByMyId(@RequestParam(defaultValue = "1") Integer currPage
            , @RequestParam(defaultValue = "10") Integer pageSize) {
        return exchangeServiceImp.getAllList(currPage, pageSize);
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
    ) {
        Exchange exchange = new Exchange();
        exchange.setUserId(userId);
        exchange.setContent(content);
        exchange.setCreateTime(new Timestamp(System.currentTimeMillis()));
        if (file != null) {
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
            @RequestParam(required = true) byte exchangeId
    ) {
        Reply reply = new Reply();
        reply.setIsExchangeReply(1);
        reply.setUserId(userId);
        reply.setContent(content);
        reply.setExchangeId(exchangeId);
        reply.setReplyTime(new Timestamp(System.currentTimeMillis()));
        replyMapper.insertComment1(reply);
        return ResponseResult.success();
    }

    @Autowired
    private CollectionServiceImp collectionServiceImp;

    //  收藏交流
    @ApiOperation(value = "收藏/取消收藏交流")
    @PostMapping(value = "/collectExchange")
    public ResponseResult CollectExchange(
            @RequestParam(required = true) int userId,
            @RequestParam(required = true) int exchangeId
    ) {
        String column = "exchange_id";
        return collectionServiceImp.collectOrNo(userId, column, exchangeId);
    }

    @ApiOperation(value = "我的交流", notes = "我的交流列表,传入我的用户id")
    @GetMapping(value = "getMyExchangeList")
    public ResponseResult getMyExchangeList(Integer userId) {
        return exchangeServiceImp.getMyAllList(userId);
    }

    @Autowired
    private ExchangeServiceImp exchangeServiceImp;

    @ApiOperation(value = "交流详情", notes = "传入该交流的id")
    @GetMapping(value = "/getExchangeDetailById")
    public ResponseResult getExchangeDetail(Integer id, Integer userId) {
        return exchangeServiceImp.exchangeDetail(id, userId);
    }

    @ApiOperation(value = "删除我的交流文章", notes = "需要传入该交流文章的id")
    @GetMapping(value = "deleteExchange")
    public ResponseResult deleteExchange(Integer id) {
        if (exchangeMapper.deleteMyExchange(id) == 1) {
            return new ResponseResult(StatusConst.SUCCESS, MsgConst.SUCCESS);
        } else {
            return new ResponseResult(StatusConst.ERROR, MsgConst.FAIL);
        }
    }

    @ApiOperation(value = "点赞/取消点赞-交流")
    @GetMapping(value = "checkLike")
    public ResponseResult checkLike(Integer userId, Integer exchangeId) {
        String column = "exchange_id";
        return exchangeServiceImp.checkLike(userId, column, exchangeId);
    }
}
