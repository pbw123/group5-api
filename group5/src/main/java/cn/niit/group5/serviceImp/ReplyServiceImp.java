package cn.niit.group5.serviceImp;

import cn.niit.group5.mapper.ReplyMapper;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImp {

    @Autowired
    private ReplyMapper replyMapper;

    public ResponseResult delReplyById(Integer id) {
        int i = replyMapper.delReply(id);
        if (i == 1)
            return new ResponseResult(StatusConst.SUCCESS,"删除成功");
        else
            return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
    }
}
