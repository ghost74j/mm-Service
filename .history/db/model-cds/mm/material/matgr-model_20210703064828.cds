namespace mm.material;

using { mm.material.Mara as mara} from './mara-model';

/**
 * # [TBL] MM_MATERIAL_MATGR
 *
 * ***
 *
 * - Desc : 자재그룹 테이블
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

entity Matgr {
    key matkl : String(9);
        mtbez : String(25);

        maras : Composition of many mara on maras.mtart = mtart;
};

annotate Matty with @title : '일반자재'  @description : '일반자재';

annotate Matty with {
    mtart @title : '자재유형'       @description : '자재유형';
    mtbez @title : '자재유형내역'   @description : '자재유형내역';

    maras @title : '일반자재'       @description : '일반자재 목록';
};
