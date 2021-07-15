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

        pstat : String(15);
        lvorm : String(1);
        mmsta : String(2);
        dispo : String(3);
        dsnam : String(18);

        makts : Composition of many makt on makts.matnr = matnr;
};

annotate Mara with @title : '일반자재플랜트'  @description : '일반자재에 대한 플랜트 정보';

annotate Mara with {
    matnr @title : '자재번호'       @description : '자재번호';
    werks @title : '플랜트'     @description : '플랜트';

    pstat @title : '유지보수상태'       @description : '자재유형';
    lvorm @title : '삭제대상표시'   @description : '플랜트 레벨에서 자재를 삭제 대상으로 표시';
    mmsta @title : '유지보수상태'   @description : '유지보수상태';
    dispo @title : '삭재대상표시'   @description : '클라이언트 레벨의 삭제 대상 자재 표시';
    dsnam @title : '자재그룹'       @description : '자재그룹';

    makts @title : '자재내역'       @description : '자재내역 목록';
};
