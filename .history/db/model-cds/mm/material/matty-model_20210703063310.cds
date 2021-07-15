namespace mm.material;

using { mm.material.Mara as mara} from './mara-model';

/**
 * # [TBL] MM_MATERIAL_MATTY
 *
 * ***
 *
 * - Desc : 자재유형 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

entity Matty {
    key mtart : String(4);
        mtbez : String(25);

        maras : Composition of many mara on makts.mtart = mtart;
};

annotate Matty with @title : '일반자재'  @description : '일반자재';

annotate Matty with {
    mtart @title : '자재유형'       @description : '자재유형';
    mtbez @title : '자재유형내역'   @description : '자재유형내역';
};
