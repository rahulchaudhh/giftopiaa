package com.giftopiaa.model;

public class User_rolesModel {
    private int roleId;
    private String roleName;

    public User_rolesModel() {
    }

    public User_rolesModel(int roleId, String roleName) {
        this.roleId = roleId;
        this.roleName = roleName;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
}
