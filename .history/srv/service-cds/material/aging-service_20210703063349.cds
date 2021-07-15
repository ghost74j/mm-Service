namespace material;

using { mm.material.Mara as mara } from '../../../db/model-cds/mm/material/mara-model';

/**
 * - Desc : 제고 Aging 서비스
 * - History
 *   - 2021-07-03 ghost74j 최초 생성
 */

@path : '/material.AgingSrv'
service AgingService {
    // 일반자재 목록
    entity Maras    as projection on mara; 
}