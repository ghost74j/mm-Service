namespace mm.material;

/**
 * # [TBL] MM_MATERIAL_MBEW
 *
 * ***
 *
 * - Desc : 자재평가 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

entity Mbew {
    key matnr   : String(40);
    key bwkey   : String(4);
    key bwtar   : String(10);

        stprs   : Decimal;
        peinh   : Decimal;
        bklas   : String(4);
};

annotate Mbew with @title : '자재평가'  @description : '자재평가 정보';

annotate Mbew with {
    matnr @title : '자재번호'       @description : '자재번호';
    bwkey @title : '평가영역'         @description : '플랜트';
    bwtar @title : '평가유형'         @description : '플랜트';

    stprs @title : '유지보수상태'   @description : '유지보수상태';
    peinh @title : '삭제대상표시'   @description : '플랜트 레벨에서 자재를 삭제 대상으로 표시';
    bklas @title : '자재상태'       @description : '플랜트별 자재 상태';
};
