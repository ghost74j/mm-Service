namespace material;

using { mm.material.Matgr as matgr }            from '../../../db/model-cds/mm/material/matgr-model';
using { mm.material.Matty as matty }            from '../../../db/model-cds/mm/material/matty-model';
using { mm.material.Plant as plant }            from '../../../db/model-cds/mm/material/plant-model';
using { mm.material.Stloc as stloc }            from '../../../db/model-cds/mm/material/stloc-model';
using { mm.material.Mara as mara }              from '../../../db/model-cds/mm/material/mara-model';
using { mm.material.Makt as makt }              from '../../../db/model-cds/mm/material/makt-model';
using { mm.material.Marc as marc }              from '../../../db/model-cds/mm/material/marc-model';
using { mm.material.Mard as mard }              from '../../../db/model-cds/mm/material/mard-model';
using { mm.material.Mard_Ex_Vw as mardExVw }    from '../../../db/model-cds/mm/material/mard_ex_vw-model';

using { mm.material.Mbew as mbew }              from '../../../db/model-cds/mm/material/mbew-model';

using { mm.material.Mkpf as mkpf }              from '../../../db/model-cds/mm/material/mkpf-model';
using { mm.material.Mseg as mseg }              from '../../../db/model-cds/mm/material/mseg-model';

/**
 * - Desc : 제고 Aging 서비스
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

@path : '/material.AgingSrv'
service AgingService {
    // 자재그룹 목록
    entity Matgrs    as projection on matgr;

    // 자재유형 목록
    entity Mattys    as projection on matty; 

    // 플랜트 목록
    entity Plants    as projection on plant; 

    // 플랜트별 저장위치 목록
    entity Stlocs    as projection on stloc; 

    // 일반자재 목록
    entity Maras    as projection on mara; 

    // 자재평가 목록
    entity Mbews    as projection on mbew; 

    // 자재플랜트 목록
    entity Marcs    as projection on marc;

    // 자재플랜트저장위치 목록
    entity Mards    as projection on mard;

    // 자재플랜트저장위치 확장 목록
    entity MardExVws(i_date: String(10)) as projection on mardExVw(p_date: :i_date);

    // 자재전표헤더 목록
    entity Mkpfs    as projection on mkpf;

    // 자재전표품목 목록
    entity Msegs    as projection on mseg;

    /**
     *  설명 : 저장위치별 재고 Aging 상태 조회
     *  주소 : /odata/v4/material.AgingSrv/Agings('2019-01-15')/Set
     */
    entity Agings(i_date: String(10))   as
        select from 
            mara as mara
            left outer join makt as makt                        on mara.matnr = makt.matnr and makt.spras = '3'
            left outer join marc as marc                        on mara.matnr = marc.matnr
            left outer join mard as mard                        on marc.matnr = mard.matnr and marc.werks = mard.werks
            left outer join stloc as stloc                      on mard.werks = stloc.werks and mard.lgort = stloc.lgort
            left outer join mardExVw(p_date: :i_date) as mardEx on mard.matnr = mardEx.matnr and mard.werks = mardEx.werks and mard.lgort = mardEx.lgort
        {
            key mara.matnr,
            key marc.werks,
            key mard.lgort,
                makt.maktx,
                mara.mtart,
                mara.matkl,
                stloc.lgobe,
                mara.meins,

                mardEx.before_month_1_menge, 
                mardEx.before_month_2_menge,
                mardEx.before_month_3_menge,
                mardEx.before_month_6_menge, 
                mardEx.before_month_9_menge, 
                mardEx.before_month_12_menge,
        }
    ;
}