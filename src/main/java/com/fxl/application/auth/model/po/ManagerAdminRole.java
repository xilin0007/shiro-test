package com.fxl.application.auth.model.po;

/**
 * @Description 账号-角色表（账号所拥有的角色）
 * @author fangxilin
 * @date 2017年11月24日
 */
public class ManagerAdminRole {
    private Integer id;

    private Integer adminId;

    private Integer roleId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }
}