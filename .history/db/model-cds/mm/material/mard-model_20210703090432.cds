namespace mm.material;

using { mm.material.Marc as marc} from './marc-model';
using { mm.material.Marc as marc} from './ms-model';

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

        matnr_fk : Association to marc on matnr_fk.matnr = matnr and matnr_fk.werks = werks;
};

annotate Mard with @title : '자재저장위치'  @description : '자재저장위치';

annotate Mard with {
    matnr @title : '자재번호'       @description : '자재번호';
    werks @title : '플랜트'         @description : '플랜트';
    lgort @title : '저장위치'       @description : '저장위치';

    labst @title : '가용재고'       @description : '평가된 가용 재고';
    umlme @title : '이전중재고'     @description : '이전중 재고(저장 위치 -> 저장 위치)';
    insme @title : '품질검사재고'   @description : '품질 검사 중 재고';
    einme @title : '총재고'         @description : '모든 제한 배치의 총 재고';
    speme @title : '보류재고'       @description : '보류재고';
    retme @title : '보류재고반품'   @description : '보류재고반품';
};
