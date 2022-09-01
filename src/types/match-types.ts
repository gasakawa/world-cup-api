export type MatchDTO = {
  id: number;
  matchNo: number;
  kickoff: Date;
  homeTeam: string;
  awayTeam: string;
  homeGoals: number;
  awayGoals: number;
  homePenalties: number;
  awayPenalties: number;
  stadium: string;
  stage: string;
  isResult: boolean;
  extraTime: boolean;
  scored: boolean;
};
