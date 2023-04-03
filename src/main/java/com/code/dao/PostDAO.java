package com.code.dao;

import com.code.exception.BankTransactionException;
import com.code.mapper.bank.BankAccountMapper;
import com.code.model.PostDto;
import com.code.model.PostTypeDto;
import com.code.model.bank.BankAccountInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@Repository
@Transactional
public class PostDAO extends JdbcDaoSupport {

    @Autowired
    public PostDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }

    public List<PostTypeDto> getListType() {
        // Select ba.Id, ba.Full_Name, ba.Balance From Bank_Account ba
        String sql = "select type from codewr_com.articles group by type";

        Object[] params = new Object[]{};
        BankAccountMapper mapper = new BankAccountMapper();
        List<PostTypeDto> list = this.getJdbcTemplate().query(sql, params, rs -> {
            List<PostTypeDto> stringList = new ArrayList<>();
            while (rs.next()) {

                stringList.add(PostTypeDto.builder()
                        .name("Name " + rs.getString("type").toUpperCase())
                        .type(rs.getString("type"))
                        .description("Languague" + rs.getString("type").toUpperCase())
                        .build());
            }
            return stringList;
        });

        return list;
    }

    public List<PostDto> listPost(String type) {
        // Select ba.Id, ba.Full_Name, ba.Balance From Bank_Account ba
        String sql = "select * from codewr_com.articles where type=? order by id desc";

        Object[] params = new Object[]{type};
        BankAccountMapper mapper = new BankAccountMapper();
        List<PostDto> list = this.getJdbcTemplate().query(sql, params, rs -> {
            List<PostDto> postDtoList = new ArrayList<>();
            while (rs.next()) {
                postDtoList.add(PostDto.builder()
                        .id(rs.getInt("id"))
                        .url(rs.getString("map_url"))
                        .type(rs.getString("type"))
                        .title(rs.getString("title"))
                        .build());
            }
            return postDtoList;
        });

        return list;
    }
    public PostDto postDetail(String url,String type) {
        // Select ba.Id, ba.Full_Name, ba.Balance From Bank_Account ba
        String sql = "select * from codewr_com.articles where type=? and url=? order by id desc limit 1";

        Object[] params = new Object[]{type,url};
        return this.getJdbcTemplate().query(sql, params, rs -> {
            PostDto postDto = new PostDto();
            while (rs.next()) {
                postDto = PostDto.builder()
                        .id(rs.getInt("id"))
                        .url(rs.getString("map_url"))
                        .type(rs.getString("type"))
                        .title(rs.getString("title"))
                        .content(rs.getString("content"))
                        .build();
            }
            return postDto;
        });
    }
}