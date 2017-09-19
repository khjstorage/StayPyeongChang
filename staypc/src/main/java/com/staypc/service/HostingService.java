package com.staypc.service;

import com.staypc.vo.LodgeVO;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

public interface HostingService {
    void hostInsert(LodgeVO vo);
    List<LodgeVO> listHost(String id);
    List detail_host(String lodge_code);
}
