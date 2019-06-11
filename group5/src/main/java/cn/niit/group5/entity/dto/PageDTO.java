package cn.niit.group5.entity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PageDTO {
    private Integer first;
    private Integer last;
    private Integer size;
    private List list;
}
