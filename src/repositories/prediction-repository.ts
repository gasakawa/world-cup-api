import prisma from 'prisma/client';

export default class PredictionRepository {
  async initUserPrediction(userId: number, matches: number[]): Promise<void> {
    const predictions = matches.map(match => ({
      userId: userId,
      matchId: match,
      homeGoals: 0,
      awayGoals: 0,
      homePenalties: 0,
      awayPenalties: 0,
      points: 0,
    }));

    await prisma.prediction.createMany({
      data: predictions,
    });
  }
}
