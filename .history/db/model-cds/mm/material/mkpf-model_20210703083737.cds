namespace mm.material;

// using { mm.material.Mara as mara} from './mara-model';

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
    mblnr @title : '자재문서번호'     @description : '플랜트';
    mjahr @title : '저장위치'   @description : '저장위치';

    budat @title : '플랜트명'   @description : '플랜트명';
};
