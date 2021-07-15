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
        insme : String(1);
        einme : String(9);
        speme : String(20);
        retme : String(3);

        makts : Composition of many makt on makts.matnr = matnr;

        marcs : Composition of many marc on marcs.matnr = matnr;

        mtart_fk : Association to matty on mtart_fk.mtart = mtart;

        matkl_fk : Association to matgr on matkl_fk.matkl = matkl;
};

annotate Mard with @title : '자재저장위치'  @description : '자재저장위치';

annotate Mard with {
    matnr @title : '자재번호'       @description : '자재번호';
    werks @title : '플랜트'         @description : '플랜트';
    lgort @title : '플랜트'         @description : '플랜트';

    labst @title : '자재유형'       @description : '자재유형';
    umlme @title : '자재유형내역'   @description : '자재유형내역';
    insme @title : '유지보수상태'   @description : '유지보수상태';
    einme @title : '삭재대상표시'   @description : '클라이언트 레벨의 삭제 대상 자재 표시';
    speme @title : '자재그룹'       @description : '자재그룹';
    retme @title : '자재그룹내역'   @description : '자재그룹내역';

    makts @title : '자재내역'       @description : '자재내역 목록';
    marcs @title : '플랜트'         @description : '플랜트 목록';
};
