namespace mm.material;

using { mm.material.Mseg as mara} from './mara-model';

/**
 * # [TBL] MM_MATERIAL_MKPF
 *
 * ***
 *
 * - Desc : 자재전표헤더 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

entity Mkpf {
    key mblnr : String(10);
    key mjahr : String(4);

        budat : Date;
};

annotate Mkpf with @title : '자재전표헤더'  @description : '자재전표헤더';

annotate Mkpf with {
    mblnr @title : '자재문서번호'   @description : '자재문서번호';
    mjahr @title : '자재문서연도'   @description : '자재문서연도';

    budat @title : '전기일'         @description : '전표의 전기일';
};
