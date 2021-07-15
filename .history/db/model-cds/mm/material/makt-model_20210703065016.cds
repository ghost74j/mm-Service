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
        maktx : String(40);
};

annotate Makt with @title : '자재내역'  @description : '자재내역';

annotate Makt with {
    matnr @title : '자재번호'       @description : '자재번호';
    spras @title : '언어키'         @description : '언어키';
    maktx @title : '자재내역'       @description : '자재내역';
};
