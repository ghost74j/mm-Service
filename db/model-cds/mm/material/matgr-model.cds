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
        wgbez : String(20);

        maras : Composition of many mara on maras.matkl = matkl;
};

annotate Matgr with @title : '자재그룹'  @description : '자재그룹';

annotate Matgr with {
    matkl @title : '자재그룹'       @description : '자재그룹';
    wgbez @title : '자재그룹내역'   @description : '자재그룹내역';

    maras @title : '일반자재'       @description : '일반자재 목록';
};
