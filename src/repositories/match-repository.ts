import prisma from 'prisma/client';
import { MatchDTO } from 'types/match-types';

export default class MatchRepository {
  async findAll(): Promise<MatchDTO[]> {
    const list = await prisma.$queryRaw`
      SELECT m.id, m.match_no "matchNo", m.kickoff, ht."name" "homeTeam", aw."name" "awayTeam",
      m.home_goals "homeGoals", m.away_goals "awayGoals", m.home_penalties "homePenalties", m.away_penalties "awayPenalties", v.stadium,
      s."name" stage, m.is_result "isResult" , m.extra_time "extraTime", m.scored 
      FROM matches m 
      INNER JOIN teams ht ON m.home_team_id = ht.id 
      INNER JOIN teams aw ON m.away_team_id = aw.id 
      INNER JOIN venues v ON m.venue_id = v.id 
      INNER JOIN stages s ON m.stage_id = s.id  
    `;

    return list as MatchDTO[];
  }
}
