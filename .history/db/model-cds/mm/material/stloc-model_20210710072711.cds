namespace mm.material;

using { mm.material.Plant as mseg} from './mseg-model';

/**
 * # [TBL] MM_MATERIAL_STLOC
 *
 * ***
 *
 * - Desc : 저장위치 테이블
 * - History
 *   - 2021-07-10 ghost74j 최초 생성
 */

entity Stloc {
    key werks : String(4);
    key lgort : String(4);

        lgobe : String(16);

        msegs : Composition of many mseg on msegs.werks = werks and msegs.lgort = lgort;
};

annotate Stloc with @title : '저장위치'  @description : '저장위치';

annotate Stloc with {
    werks @title : '플랜트'         @description : '플랜트';
    lgort @title : '저장위치'       @description : '저장위치';

    lgobe @title : '저장위치명'     @description : '저장위치명';

    msegs @title : '자재전표품목'   @description : '자재전표품목 목록';
};
