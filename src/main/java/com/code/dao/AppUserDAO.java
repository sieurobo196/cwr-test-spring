//package com.code.dao;
//
//import javax.sql.DataSource;
//
//import com.code.model.user.AppUser;
//import com.code.model.user.AppUserMapper;
//import org.springframework.dao.EmptyResultDataAccessException;
//import org.springframework.jdbc.core.support.JdbcDaoSupport;
//import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;
//
////@Repository
////@Transactional
//public class AppUserDAO extends JdbcDaoSupport {
//    private final DataSource dataSource;
//
//    public AppUserDAO(DataSource dataSource) {
//        this.dataSource = dataSource;
//    }
//
////    @Autowired
////    public AppUserDAO(DataSource dataSource) {
////        this.setDataSource(dataSource);
////    }
//
//    public AppUser findUserAccount(String userName) {
//        // Select .. from App_User u Where u.User_Name = ?
//        String sql = AppUserMapper.BASE_SQL + " where u.User_Name = ? ";
//
//        Object[] params = new Object[] { userName };
//        AppUserMapper mapper = new AppUserMapper();
//        try {
//            AppUser userInfo = this.getJdbcTemplate().queryForObject(sql, params, mapper);
//            return userInfo;
//        } catch (EmptyResultDataAccessException e) {
//            return null;
//        }
//    }
//
//}