namespace material;

using { mm.material.Matgr as matgr }    from '../../../db/model-cds/mm/material/matgr-model';
using { mm.material.Matty as matty }    from '../../../db/model-cds/mm/material/matty-model';
using { mm.material.Plant as plant }    from '../../../db/model-cds/mm/material/plant-model';
using { mm.material.Mara as mara }      from '../../../db/model-cds/mm/material/mara-model';
using { mm.material.Marc as marc }      from '../../../db/model-cds/mm/material/marc-model';

using { mm.material.Mbew as mbew }      from '../../../db/model-cds/mm/material/mbew-model';

using { mm.material.Mkpf as mkpf }      from '../../../db/model-cds/mm/material/mkpf-model';

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

    // 일반자재 목록
    entity Maras    as projection on mara; 

    // 자재평가 목록
    entity Mbews    as projection on mbew; 

    // 자재플랜트 목록
    entity Marcs    as projection on marc;

    // 자재플랜트 목록
    entity Marcs    as projection on marc;
}