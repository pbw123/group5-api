package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Collection;
import cn.niit.group5.entity.dto.CollectDTO;
import cn.niit.group5.mapper.CollectionMapper;
import cn.niit.group5.util.MsgConst;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CollectionServiceImp {

    @Autowired
    private CollectionMapper collectionMapper;
    public ResponseResult collectNewsOrNo(Integer userId,Integer newsId)
    {
        CollectDTO collectDTO=new CollectDTO();
        Collection collection;
        collection= collectionMapper.getCollectionById(userId, newsId);
        Integer status;
        if (collection==null)
        {
            int index = collectionMapper.addNewsCollect(userId, newsId);
            if (index==1)
            {
                collection = collectionMapper.getCollectionById(userId, newsId);
                 status = collection.getStatus();
                collectDTO.setStatus(status);
                collectDTO.setMsg("已收藏");
                return ResponseResult.success(collectDTO);
            }else {
                return ResponseResult.error(StatusConst.ERROR, MsgConst.FAIL);
            }

        }else {
            status = collection.getStatus();
            Integer id = collection.getId();
                int index = collectionMapper.isNoCollect(id, status);
                if (index==1)
                {
                    collection = collectionMapper.getCollectionById(userId, newsId);
                    status = collection.getStatus();
                    collectDTO.setStatus(status);
                    if (status==1)
                    {
                        collectDTO.setMsg("未收藏");
                    }else {
                        collectDTO.setMsg("已收藏");
                    }
                    return ResponseResult.success(collectDTO);
                }
                return ResponseResult.error(StatusConst.ERROR,MsgConst.FAIL);
        }
    }
}
