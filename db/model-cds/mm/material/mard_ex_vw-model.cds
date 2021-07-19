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

        gr_date                 : Date;
        gi_date                 : Date;
        before_month_0_menge    : Decimal;
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

    gr_date                     @title : '마지막 입고일자'                  @description : '마지막 입고일자';
    gi_date                     @title : '마지막 출고일자'                  @description : '마지막 출고일자';
    before_month_0_menge        @title : '현재일부터 기준일까지 입출고 수량'  @description : '현재일부터 기준일까지 입출고 수량';
    before_month_1_menge        @title : '0-1 month 입출고 수량'            @description : '0-1 month 입출고 수량';
    before_month_2_menge        @title : '1-2 month 입출고 수량'            @description : '1-2 month 입출고 수량';
    before_month_3_menge        @title : '2-3 month 입출고 수량'            @description : '2-3 month 입출고 수량';
    before_month_6_menge        @title : '4-6 month 입출고 수량'            @description : '4-6 month 입출고 수량';
    before_month_9_menge        @title : '6-9 month 입출고 수량'            @description : '6-9 month 입출고 수량';
    before_month_12_menge       @title : '9-12 month 입출고 수량'           @description : '9-12 month 입출고 수량';
};
