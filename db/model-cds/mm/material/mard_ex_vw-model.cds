namespace mm.material;

using { mm.material.Mara as mara}   from './mara-model';

/**
 * # [VIEW] MM_MATERIAL_MARD_EX_VW
 *
 * ***
 *
 * - Desc : 자재내역 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

@cds.persistence.exists
entity Mard_Ex_Vw (p_date: String) {
    key matnr                   : String(40);
    key werks                   : String(4);
    key lgort                   : String(4);

        before_month_1_menge    : Decimal;
        before_month_2_menge    : Decimal;
        before_month_3_menge    : Decimal;
        before_month_6_menge    : Decimal;
        before_month_9_menge    : Decimal;
        before_month_12_menge   : Decimal;
};

annotate Mard_Ex_Vw with @title : '자재저장위치 확장'  @description : '자재저장위치 확장';

annotate Mard_Ex_Vw with {
    matnr @title : '자재번호'       @description : '자재번호';
    werks @title : '플랜트'         @description : '플랜트';
    lgort @title : '저장위치'       @description : '저장위치';

    // labst @title : '가용재고'       @description : '평가된 가용 재고';
    // umlme @title : '이전중재고'     @description : '이전중 재고(저장 위치 -> 저장 위치)';
    // insme @title : '품질검사재고'   @description : '품질 검사 중 재고';
    // einme @title : '총재고'         @description : '모든 제한 배치의 총 재고';
    // speme @title : '보류재고'       @description : '보류재고';
    // retme @title : '보류재고반품'   @description : '보류재고반품';
};
