package cn.niit.group5.controllerRear;

import cn.niit.group5.serviceImp.WordServiceImp;
import cn.niit.group5.util.Manager;
import cn.niit.group5.util.ResponseResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@Manager
@Api(tags = "8.热词管理")
@RequestMapping(value = "/word")
public class WordController {
    @Autowired
    private WordServiceImp wordServiceImp;

    @ApiOperation(value = "热词列表")
    @GetMapping(value = "getWordList/{currPage}/{pageSize}")
    public ResponseResult getWordList(@PathVariable Integer currPage,
                                      @PathVariable Integer pageSize) {
        return wordServiceImp.getAllWord(currPage, pageSize);
    }

    @ApiOperation(value = "删除热词")
    @GetMapping(value = "delWordById/{id}")
    public Integer delWordById(@PathVariable Integer id) {
        return wordServiceImp.removeWord(id);
    }

    @ApiOperation(value = "禁用/启用热词")
    @GetMapping(value = "disableWord/{status}/{id}")
    public Integer disableWord(@PathVariable Integer status, @PathVariable Integer id) {
        return wordServiceImp.disableWordById(status, id);
    }

    @ApiOperation(value = "修改")
    @GetMapping(value = "updateWord")
    public Integer updateWord(String name) {
        return wordServiceImp.updateWord(name);
    }

    @ApiOperation(value = "搜索热词")
    @GetMapping(value = "searchWord")
    public ResponseResult searchWord(String name,
                                     @RequestParam(defaultValue = "1") Integer currPage,
                                     @RequestParam(defaultValue = "10") Integer pageSize) {
        ResponseResult word = wordServiceImp.getWordByName(name, currPage, pageSize);
        return ResponseResult.success(word);
    }

    @ApiOperation(value = "添加热词")
    @GetMapping(value = "addWord")
    public Integer addWord(String name) {
        return wordServiceImp.addWord(name);
    }

    @ApiOperation(value = "据id查询热词")
    @GetMapping(value = "getWordById")
    public Integer getWordById(String name) {
        return wordServiceImp.addWord(name);
    }

}
