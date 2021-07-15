namespace mm.material;

using { mm.material.Stloc as stloc} from './stloc-model';

/**
 * # [TBL] MM_MATERIAL_PLANT
 *
 * ***
 *
 * - Desc : 플랜트 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

entity Plant {
    key werks : String(4);

        name1 : String(30);
        bwkey : String(4);

        stlocs : Composition of many stloc on stlocs.werks = werks;
};

annotate Plant with @title : '플랜트'  @description : '플랜트';

annotate Plant with {
    werks @title : '플랜트'         @description : '플랜트';

    name1 @title : '플랜트명'       @description : '플랜트명';
    bwkey @title : '평가영역'       @description : '평가영역';

    // msegs @title : '자재전표품목'   @description : '자재전표품목 목록';
};
