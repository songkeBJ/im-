package com.sellerNet.backManagement.dao.impl;

import com.sellerNet.backManagement.dao.CodeMapper;
import com.sellerNet.backManagement.entity.Code;
import org.springframework.stereotype.Repository;

@Repository
public class CodeMapperImpl extends BaseDaoImpl<Code, Long>
  implements CodeMapper
{
  public CodeMapperImpl()
  {
    this.namespace = getClass().getName();
  }
}