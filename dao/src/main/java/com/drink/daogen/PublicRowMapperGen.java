package com.drink.daogen;

import com.drink.model.PublicRow;
import java.util.List;

public interface PublicRowMapperGen {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public_row
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public_row
     *
     * @mbggenerated
     */
    int insert(PublicRow record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public_row
     *
     * @mbggenerated
     */
    PublicRow selectByPrimaryKey(Long id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public_row
     *
     * @mbggenerated
     */
    List<PublicRow> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public_row
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(PublicRow record);
}