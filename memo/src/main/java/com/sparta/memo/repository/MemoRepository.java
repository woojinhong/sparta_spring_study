package com.sparta.memo.repository;

import com.sparta.memo.entity.Memo;
import jakarta.persistence.EntityManager;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class MemoRepository {
    @Transactional
    public Memo createMemo(EntityManager em) {
        Memo memo = em.find(Memo.class, 1);
        memo.setUsername("Robbie");
        memo.setContents("@Transactional 전파 테스트 중!");

        System.out.println("createMemo 메서드 종료");
        return memo;
    }
}
