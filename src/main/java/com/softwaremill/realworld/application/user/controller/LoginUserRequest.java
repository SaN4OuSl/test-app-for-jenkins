package com.softwaremill.realworld.application.user.controller;

import com.fasterxml.jackson.annotation.JsonRootName;

@JsonRootName("user")
public record LoginUserRequest(String email, String password) {}
