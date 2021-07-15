namespace mm.material;

using { mm.material.Plant as plant} from './plant-model';

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

        mkpf_fk : Association to plant on mkpf_fk.mblnr = mblnr and mkpf_fk.mjahr = mjahr;
};

annotate Stloc with @title : '저장위치'  @description : '저장위치';

annotate Stloc with {
    werks @title : '플랜트'         @description : '플랜트';
    lgort @title : '저장위치'       @description : '저장위치';

    lgobe @title : '저장위치명'     @description : '저장위치명';
};
