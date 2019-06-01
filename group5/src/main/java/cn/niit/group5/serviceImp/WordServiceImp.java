package cn.niit.group5.serviceImp;

import cn.niit.group5.mapper.WordMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WordServiceImp {
    @Autowired
    private WordMapper wordMapper;
}
