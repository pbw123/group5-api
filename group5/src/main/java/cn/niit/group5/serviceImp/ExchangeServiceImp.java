package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Collection;
import cn.niit.group5.entity.Exchange;
import cn.niit.group5.entity.Question;
import cn.niit.group5.entity.Reply;
import cn.niit.group5.mapper.CollectionMapper;
import cn.niit.group5.mapper.ExchangeMapper;
import cn.niit.group5.mapper.ImgMapper;
import cn.niit.group5.mapper.QuestionMapper;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import cn.niit.group5.util.StringUtil;
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
        Collection collection = collectionMapper.getCollectionById(userId, column, id);
        int number = collectionMapper.getExchangeNumber(column, id);
        exchange.setCollectNumber(number);
        if (collection==null)
        {
            exchange.setStatus(1);
        }else {
            if (collection.getStatus()==1)
                exchange.setStatus(1);
            else
                exchange.setStatus(0);
        }
        exchange.setImgs(imgMapper.selectImgByExchangeId(exchange.getId()));
        exchange.setTime(StringUtil.getDateString(exchange.getCreateTime()));
        List<Reply> replies = exchange.getReplies();
        for (Reply reply : replies) {
            reply.setTime(StringUtil.getDateString(reply.getReplyTime()));
        }
        return ResponseResult.success(exchange);
    }

}
