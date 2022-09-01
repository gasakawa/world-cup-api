-- DropForeignKey
ALTER TABLE "matches" DROP CONSTRAINT "matches_venue_id_fkey";

-- AlterTable
ALTER TABLE "matches" ALTER COLUMN "home_team_id" DROP NOT NULL,
ALTER COLUMN "away_team_id" DROP NOT NULL,
ALTER COLUMN "home_goals" SET DEFAULT 0,
ALTER COLUMN "away_goals" SET DEFAULT 0,
ALTER COLUMN "home_penalties" SET DEFAULT 0,
ALTER COLUMN "away_penalties" SET DEFAULT 0,
ALTER COLUMN "venue_id" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "matches" ADD CONSTRAINT "matches_venue_id_fkey" FOREIGN KEY ("venue_id") REFERENCES "venues"("id") ON DELETE SET NULL ON UPDATE CASCADE;
