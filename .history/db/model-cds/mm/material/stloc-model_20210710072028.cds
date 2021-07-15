namespace mm.material;

using { mm.material.Mseg as mseg} from './mseg-model';

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

        name1 : String(30);
        lgobe : String(16);
        bwkey : String(4);

        msegs : Composition of many mseg on msegs.werks = werks and msegs.lgort = lgort;
};

annotate Plant with @title : '플랜트'  @description : '플랜트';

annotate Plant with {
    werks @title : '플랜트'         @description : '플랜트';
    lgort @title : '저장위치'       @description : '저장위치';

    name1 @title : '플랜트명'       @description : '플랜트명';
    lgobe @title : '저장위치명'     @description : '저장위치명';
    bwkey @title : '평가영역'       @description : '평가영역';

    msegs @title : '자재전표품목'   @description : '자재전표품목 목록';
};
