package com.example.practicespring.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface MyDao5 {

    @Select("""
            <script>
            SELECT COUNT(*)
            FROM customers
            <if test='country != null'>
                WHERE Country = #{country}
            </if>
            </script>
            """)
    String select1(String country);


    @Select("""
            <script>
                SELECT CustomerName
                FROM customers
                <if test='num == 10'>
                    -- 수가 10이다.
                </if>
                <if test='num != 10'>
                    -- 수가 10이 아니다.
                </if>
                <if test='num > 10'>
                    -- 수가 10보다 크다.
                </if>
                <if test='num lt 10'>
                    -- 수가 10보다 작다.
                </if>
                <if test='num >= 10'>
                    -- 수가 10보다 크거나 같다.
                </if>
                <if test='num lte 10'>
                    -- 수가 10보다 작거나 같다.
                </if>
            </script>
            """)
    List<String> select2(Integer num);

    @Select("""
            <script>
                SELECT customerName, contactName 
                FROM customers
                
                <if test='code == 1'>
                    WHERE customerName
                </if>
                
                <if test='code == 2'>
                    WHERE contactName
                </if>
                
                LIKE #{k}
            </script>
            """)
    List<Map<String, Object>> select3(Integer code, String k);


    @Select("""
            <script>
                SELECT COUNT(*)
                FROM customers
                WHERE 
                <if test='i gt 10'>
                    -- i가 10보다 큼
                </if>
                <if test='i lt 10'>
                    -- i가 10보다 작음
                </if>
                -- 연산자가 복잡해지면 괄호 사용
                <if test='(i gt 0) and (i lt 100)'>
                    -- i가 0보다 크고, 100보다 작음
                </if>
            </script>
            """)
    String select4(int i);

    @Select("""
            SELECT *
            FROM customers
            WHERE CustomerName < 'a'
            """)
    String select5();

    // CDATA : 문자열 그대로 해석 (태그로 인식 금지)
    @Select("""
            <script>
                <![CDATA[
                    SELECT *
                    FROM customers
                    WHERE CustomerName < 'a'
                ]]>
            </script>
            """)
    String select6();

    // separator : 기존값 사이사이 값 삽입
    @Select("""
            <script>
                SELECT *
                FROM customers
                WHERE 
                    Country IN 
                    
                        <foreach collection="args" 
                                 item="elem" 
                                 separator=", "
                                 open="("
                                 close=")">
                            #{elem}
                        </foreach>
                    
            </script>
            """)
    String select7(List args);


    // prefix : 앞에 내용물이 있을때만 해당 특정값을 붙임
    // prefixOverrides : 맨 앞에 있는 특정값 삭제
    @Select("""
            <script>
            SELECT *
            FROM customers
                <trim prefix="WHERE" prefixOverrides="OR">
                    <foreach collection="args" 
                             item="elem">
                    OR country = #{elem}
                    </foreach>
                </trim>
            </script>
            """)
    String select8(List args);

    @Select("""
            <script>
            <bind name="alterKeyword" value="'%'+keyword+'%'" />
            SELECT *
            FROM customers
            WHERE CustomerName LIKE #{alterKeyword}
            </script>
            """)
    String select9(String keyword);



}





































