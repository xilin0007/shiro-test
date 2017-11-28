package com.fxl.application.auth.model.po;

/**
 * @Description 角色权限表（角色拥有的权限）
 * @author fangxilin
 * @date 2017年11月24日
 */
public class ManagerRoleAuthority {
    private Integer id;

    private Integer roleId;

    private Integer authorityId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getAuthorityId() {
        return authorityId;
    }

    public void setAuthorityId(Integer authorityId) {
        this.authorityId = authorityId;
    }
}