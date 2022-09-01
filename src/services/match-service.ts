import MatchRepository from 'repositories/match-repository';

export default class MatchService {
  constructor(private matchRepository: MatchRepository) {}

  async listMatchesForPrediction(userId: number): Promise<void> {}
}
