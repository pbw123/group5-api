package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Collection;
import cn.niit.group5.mapper.CollectionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CollectionServiceImp {

    @Autowired
    private CollectionMapper collectionMapper;
    public boolean isCollection(Integer userId,Integer questionId)
    {
        Boolean isExit=true;
        Collection collection = collectionMapper.getCollectionById(userId, questionId);
        if (collection==null)
        {
            return isExit=false;
        }
        return isExit;
    }
}
