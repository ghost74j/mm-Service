namespace material;

using { mm.material.Matgr as matgr }    from '../../../db/model-cds/mm/material/matgr-model';
using { mm.material.Matty as matty }    from '../../../db/model-cds/mm/material/matty-model';
using { mm.material.Mara as mara }      from '../../../db/model-cds/mm/material/mara-model';

/**
 * - Desc : 제고 Aging 서비스
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

@path : '/material.AgingSrv'
service AgingService {
    // 자재 목록
    entity matgrs    as projection on matgr;

    // 자재유형 목록
    entity Mattys    as projection on matty; 

    // 일반자재 목록
    entity Maras    as projection on mara; 
}