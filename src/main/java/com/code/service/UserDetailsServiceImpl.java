//package com.code.service;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import com.code.dao.AppRoleDAO;
//import com.code.dao.AppUserDAO;
//import com.code.model.user.AppUser;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
////@Service
//public class UserDetailsServiceImpl implements UserDetailsService {
//
//
//    private final AppUserDAO appUserDAO;
//
//
//    private final AppRoleDAO appRoleDAO;
//
//    public UserDetailsServiceImpl(AppUserDAO appUserDAO, AppRoleDAO appRoleDAO) {
//        this.appUserDAO = appUserDAO;
//        this.appRoleDAO = appRoleDAO;
//    }
//
//    @Override
//    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
//        AppUser appUser = this.appUserDAO.findUserAccount(userName);
//
//        if (appUser == null) {
//            System.out.println("User not found! " + userName);
//            throw new UsernameNotFoundException("User " + userName + " was not found in the database");
//        }
//
//        System.out.println("Found User: " + appUser);
//
//        // [ROLE_USER, ROLE_ADMIN,..]
//        List<String> roleNames = this.appRoleDAO.getRoleNames(appUser.getUserId());
//
//        List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
//        if (roleNames != null) {
//            for (String role : roleNames) {
//                // ROLE_USER, ROLE_ADMIN,..
//                GrantedAuthority authority = new SimpleGrantedAuthority(role);
//                grantList.add(authority);
//            }
//        }
//
//        UserDetails userDetails = (UserDetails) new User(appUser.getUserName(), //
//                appUser.getEncrytedPassword(), grantList);
//
//        return userDetails;
//    }
//
//}