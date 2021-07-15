namespace mm.material;

// using { mm.material.Mara as mara} from './mara-model';

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
    key ㅕ : String(4);
    key ㅕ : String(4);
        ㅕ : String(30);
        ㅕ : String(16);
        ㅕ : String(4);

        // maras : Composition of many mara on maras.mtart = mtart;
};

annotate Plant with @title : '플랜트'  @description : '플랜트';

annotate Plant with {
    mtart @title : '자재유형'       @description : '자재유형';
    mtbez @title : '자재유형내역'   @description : '자재유형내역';

    mtbez @title : '자재유형내역'   @description : '자재유형내역';
    mtbez @title : '자재유형내역'   @description : '자재유형내역';
    mtbez @title : '자재유형내역'   @description : '자재유형내역';

    // maras @title : '일반자재'       @description : '일반자재 목록';
};
