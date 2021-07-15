namespace mm.material;

using { mm.material.Mseg as mseg} from './mseg-model';

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
    key lgort : String(4);

        name1 : String(30);
        lgobe : String(16);
        bwkey : String(4);

        maras : Composition of many mara on maras.mtart = mtart;
};

annotate Plant with @title : '플랜트'  @description : '플랜트';

annotate Plant with {
    werks @title : '플랜트'     @description : '플랜트';
    lgort @title : '저장위치'   @description : '저장위치';

    name1 @title : '플랜트명'   @description : '플랜트명';
    lgobe @title : '저장위치명' @description : '저장위치명';
    bwkey @title : '평가영역'   @description : '평가영역';

    // maras @title : '일반자재'       @description : '일반자재 목록';
};
