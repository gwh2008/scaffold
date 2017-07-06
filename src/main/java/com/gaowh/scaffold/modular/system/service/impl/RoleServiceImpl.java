package com.gaowh.scaffold.modular.system.service.impl;

import com.gaowh.scaffold.common.persistence.dao.RelationMapper;
import com.gaowh.scaffold.common.persistence.dao.RoleMapper;
import com.gaowh.scaffold.common.persistence.model.Relation;
import com.gaowh.scaffold.core.util.Convert;
import com.gaowh.scaffold.modular.system.service.IRoleService;
import com.gaowh.scaffold.modular.system.dao.RoleDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
public class RoleServiceImpl implements IRoleService {

    @Resource
    RoleMapper roleMapper;

    @Resource
    RoleDao roleDao;

    @Resource
    RelationMapper relationMapper;

    @Override
    @Transactional(readOnly = false)
    public void setAuthority(Integer roleId, String ids) {

        // 删除该角色所有的权限
        this.roleDao.deleteRolesById(roleId);

        // 添加新的权限
        for (Integer id : Convert.toIntArray(ids)) {
            Relation relation = new Relation();
            relation.setRoleid(roleId);
            relation.setMenuid(id);
            this.relationMapper.insert(relation);
        }
    }

    @Override
    @Transactional(readOnly = false)
    public void delRoleById(Integer roleId) {
        //删除角色
        this.roleMapper.deleteById(roleId);

        // 删除该角色所有的权限
        this.roleDao.deleteRolesById(roleId);
    }

}
