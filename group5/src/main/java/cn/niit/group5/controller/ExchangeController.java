package cn.niit.group5.controller;

import cn.niit.group5.entity.Exchange;
import cn.niit.group5.mapper.ExchangeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/exchange")
public class ExchangeController {

    @Autowired
    private ExchangeMapper exchangeMapper;
    @GetMapping(value = "getExchangeList/{userId}")
    public List<Exchange>getExchangeListByMyId(@PathVariable int userId)
    {
        return exchangeMapper.getExchangeList(userId);
    }
}
