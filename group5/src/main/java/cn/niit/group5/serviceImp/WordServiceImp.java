package cn.niit.group5.serviceImp;

import cn.niit.group5.entity.Word;
import cn.niit.group5.mapper.WordMapper;
import cn.niit.group5.util.PageUtil;
import cn.niit.group5.util.ResponseResult;
import cn.niit.group5.util.StatusConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class WordServiceImp {
    @Autowired
    private WordMapper wordMapper;
    public ResponseResult getAllWord(Integer currPage,Integer pageSize)
    {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        List<Word> words = wordMapper.selectAll(map);
        return ResponseResult.success(words);
    }

    public Integer disableWordById(Integer status,Integer id)
    {
        int i = wordMapper.disableWord(status, id);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public Integer removeWord(Integer id)
    {
        int i = wordMapper.deleteById(id);
        if (i==1)
            return StatusConst.SUCCESS;
        else
            return StatusConst.ERROR;
    }

    public ResponseResult getWordByName(String name,Integer currPage,Integer pageSize)
    {
        Map<Object, Object> map = PageUtil.pageDemo(currPage, pageSize);
        map.put("name",name);
        List<Word> words = wordMapper.searchByName(map);
        return ResponseResult.success(words);
    }

    public ResponseResult getWordById(Integer id)
    {
        Word word = wordMapper.selectById(id);
        return ResponseResult.success(word);
    }

  public Integer addWord(String name)
  {
      Word word = new Word();
      word.setName(name);
      int insert = wordMapper.insert(word);
      if (insert==1)
          return StatusConst.SUCCESS;
      else
          return StatusConst.ERROR;
  }

  public Integer updateWord(String name)
  {
      Word word = new Word();
      word.setName(name);
      int i = wordMapper.updateWord(word);
      if (i==1)
          return StatusConst.SUCCESS;
      else
          return StatusConst.ERROR;
  }
}
