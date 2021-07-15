namespace mm.material;

// using { mm.material.Mara as mara} from './mara-model';

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

        bwart : String(4);
        matnr : String(4);
        werks : String(4);
        lgort : String(4);
        sobkz : String(4);
        shkzg : String(4);
        bwtar : String(4);
        menge : String(4);
        meins : String(4);
        bustm : String(4);
        ummat : String(4);
        umwrk : String(4);
        umlgo : String(4);
};

annotate Mseg with @title : '자재전표품목'  @description : '자재전표품목';

annotate Mseg with {
    mblnr @title : '자재문서번호'   @description : '자재문서번호';
    mjahr @title : '자재문서연도'   @description : '자재문서연도';
    mjahr @title : '자재문서항목'   @description : '자재문서항목';

    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
    budat @title : '전기일'         @description : '전표의 전기일';
};
