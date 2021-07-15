namespace mm.material;

using { mm.material.Makt as makt} from './makt-model';
using { mm.material.Marc as marc} from './marc-model';

using { mm.material.Matty as matty} from './matty-model';
using { mm.material.Matgr as matgr} from './matgr-model';

/**
 * # [TBL] MM_MATERIAL_MARD
 *
 * ***
 *
 * - Desc : 자재저장위치 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

entity Mard {
    key matnr : String(40);
    key werks   : String(4);
    key lgort   : String(4);

        labst : Decimal;
        umlme : Decimal;
        insme : Decimal;
        einme : Decimal;
        speme : Decimal;
        retme : Decimal;

        makts : Composition of many makt on makts.matnr = matnr;

        marcs : Composition of many marc on marcs.matnr = matnr;

        mtart_fk : Association to matty on mtart_fk.mtart = mtart;

        matkl_fk : Association to matgr on matkl_fk.matkl = matkl;
};

annotate Mard with @title : '자재저장위치'  @description : '자재저장위치';

annotate Mard with {
    matnr @title : '자재번호'       @description : '자재번호';
    werks @title : '플랜트'         @description : '플랜트';
    lgort @title : '저장위치'         @description : '저장위치';

    labst @title : '가용재고'       @description : '평가된 가용 재고';
    umlme @title : '이전중재고'   @description : '이전중 재고(저장 위치 -> 저장 위치)';
    insme @title : '품질검사재고'   @description : '품질 검사 중 재고';
    einme @title : '삭재대상표시'   @description : '모든 제한 배치의 총 재고';
    speme @title : '자재그룹'       @description : '자재그룹';
    retme @title : '자재그룹내역'   @description : '자재그룹내역';

    makts @title : '자재내역'       @description : '자재내역 목록';
    marcs @title : '플랜트'         @description : '플랜트 목록';
};
