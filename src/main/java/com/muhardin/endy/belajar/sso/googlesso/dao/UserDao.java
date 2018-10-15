package com.muhardin.endy.belajar.sso.googlesso.dao;

import com.muhardin.endy.belajar.sso.googlesso.entity.User;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface UserDao extends PagingAndSortingRepository<User, String> {
    User findByUsername(String username);
}
