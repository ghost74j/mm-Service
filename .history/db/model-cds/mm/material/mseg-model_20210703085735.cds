namespace mm.material;

using { mm.material.Mkpf as mkpf} from './mkpf-model';

/**
 * # [TBL] MM_MATERIAL_MSEG
 *
 * ***
 *
 * - Desc : 자재전표품목 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

entity Mseg {
    key mblnr : String(10);
    key mjahr : String(4);
    key zeile : String(4);

        bwart : String(3);
        matnr : String(40);
        werks : String(4);
        lgort : String(4);
        sobkz : String(1);
        shkzg : String(1);
        bwtar : String(10);
        menge : Decimal;
        meins : String(3);
        bustm : String(4);
        ummat : String(40);
        umwrk : String(4);
        umlgo : String(4);

        mkpf_fk : Association to mkpf on mtart_fk.mblnr = mblnr and mtart_fk.mjahr = mjahr;
};

annotate Mseg with @title : '자재전표품목'  @description : '자재전표품목';

annotate Mseg with {
    mblnr @title : '자재문서번호'   @description : '자재문서번호';
    mjahr @title : '자재문서연도'   @description : '자재문서연도';
    zeile @title : '자재문서항목'   @description : '자재문서항목';

    bwart @title : '이동유형'       @description : '이동유형';
    matnr @title : '자재번호'       @description : '자재번호';
    werks @title : '플랜트'         @description : '플랜트';
    lgort @title : '저장위치'       @description : '저장위치';
    sobkz @title : '특별재고지시자' @description : '특별재고지시자';
    shkzg @title : '대차변지시자'   @description : '대차변지시자';
    bwtar @title : '평가유형'       @description : '평가유형';
    menge @title : '수량'           @description : '수량';
    meins @title : '기본단위'       @description : '기본단위';
    bustm @title : '전기문자열'     @description : '수량에 대한 전기문자열';
    ummat @title : '입출고자재'     @description : '입출고자재';
    umwrk @title : '입출고플랜트'   @description : '입출고플랜트';
    umlgo @title : '입출고위치'     @description : '입출고위치';
};
