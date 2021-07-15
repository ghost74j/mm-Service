namespace mm.material;

/**
 * # [TBL] MM_MATERIAL_MATTY
 *
 * ***
 *
 * - Desc : 자재유형 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

entity Matty {
    key mtart : String(4);
        mtbez : String(25);
};

annotate Mara with @title : '일반자재'  @description : '일반자재';

annotate Mara with {
    matnr @title : '자재번호'       @description : '자재번호';
    mtbez @title : '언어키'         @description : '언어키';
};
