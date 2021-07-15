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

        // maras : Composition of many mara on maras.mtart = mtart;
};

annotate Mkpf with @title : '자재전표헤더'  @description : '자재전표헤더';

annotate Mkpf with {
    werks @title : '플랜트'     @description : '플랜트';
    lgort @title : '저장위치'   @description : '저장위치';

    name1 @title : '플랜트명'   @description : '플랜트명';
    lgobe @title : '저장위치명' @description : '저장위치명';
    bwkey @title : '평가영역'   @description : '평가영역';

    // maras @title : '일반자재'       @description : '일반자재 목록';
};
