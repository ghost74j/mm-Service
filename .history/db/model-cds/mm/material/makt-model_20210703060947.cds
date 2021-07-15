namespace mm.material;

/**
 * # [TBL] MM_MATERIAL_MAKT
 *
 * ***
 *
 * - Desc : 자재내역 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

entity Makt {
    key matnr : String(40);
        spras : String(1);
        mamtbez : String(25);
        pstat : String(15);
        lvorm : String(1);
        matkl : String(9);
        wgbez : String(20);
        meins : String(3);
};

annotate Mara with @title : '일반자재'  @description : '일반자재';

annotate Mara with {
    matnr @title : '자재번호'       @description   : '자재번호';
    mtart @title : '자재유형'       @description   : '자재유형';
    mtbez @title : '자재유형내역'   @description : '자재유형내역';
    pstat @title : '유지보수상태'   @description : '유지보수상태';
    lvorm @title : '삭재대상표시'   @description : '클라이언트 레벨의 삭제 대상 자재 표시';
    matkl @title : '자재그룹'       @description   : '자재그룹';
    wgbez @title : '자재그룹내역'   @description : '자재그룹내역';
    meins @title : '기본단위'       @description   : '기본단위';
};
