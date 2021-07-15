namespace mm.material;

using { mm.material.Makt as makt} from './makt-model';

/**
 * # [TBL] MM_MATERIAL_MARC
 *
 * ***
 *
 * - Desc : 일반자재플랜트 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

entity Marc {
    key matnr : String(40);
    key werks : String(4);

        PSTAT : String(4);
        LVORM : String(25);
        pstMMSTAat : String(15);
        lvorm : String(1);
        matkl : String(9);
        wgbez : String(20);
        meins : String(3);

        makts : Composition of many makt on makts.matnr = matnr;
};

annotate Mara with @title : '일반자재플랜트'  @description : '일반자재에 대한 플랜트 정보';

annotate Mara with {
    matnr @title : '자재번호'       @description : '자재번호';
    werks @title : '플랜트'     @description : '플랜트';

    mtart @title : '자재유형'       @description : '자재유형';
    mtbez @title : '자재유형내역'   @description : '자재유형내역';
    pstat @title : '유지보수상태'   @description : '유지보수상태';
    lvorm @title : '삭재대상표시'   @description : '클라이언트 레벨의 삭제 대상 자재 표시';
    matkl @title : '자재그룹'       @description : '자재그룹';
    wgbez @title : '자재그룹내역'   @description : '자재그룹내역';
    meins @title : '기본단위'       @description : '기본단위';

    makts @title : '자재내역'       @description : '자재내역 목록';
};
