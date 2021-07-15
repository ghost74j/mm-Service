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

    pstat @title : '유지보수상태'       @description : '유지보수상태';
    lvorm @title : '삭제대상표시'   @description : '플랜트 레벨에서 자재를 삭제 대상으로 표시';
    mmsta @title : '자재상태'   @description : '플랜트별 자재 상태';
    dispo @title : 'MRP관리자'   @description : 'MRP관리자';
    dsnam @title : 'MRP관리자명'       @description : 'MRP관리자명';

    makts @title : '자재내역'       @description : '자재내역 목록';
};
