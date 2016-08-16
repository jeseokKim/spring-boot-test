package com.gseps.lng.operation.repository;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.gseps.lng.operation.model.City;

@Repository
public interface CityMapper {
//    @Select("SELECT * FROM CITY WHERE state = #{state}")
    City findByState(@Param("state") String state);
}