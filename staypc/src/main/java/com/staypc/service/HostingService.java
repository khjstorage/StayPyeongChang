package com.staypc.service;


import com.staypc.vo.LodgeVO;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;


public interface HostingService {
    void hostinsert(LodgeVO vo);
    List<LodgeVO> listhost(String id);
}
