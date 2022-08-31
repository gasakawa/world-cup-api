/*
  Warnings:

  - You are about to drop the `matchs` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "matchs" DROP CONSTRAINT "matchs_stage_id_fkey";

-- DropForeignKey
ALTER TABLE "matchs" DROP CONSTRAINT "matchs_venue_id_fkey";

-- DropTable
DROP TABLE "matchs";

-- CreateTable
CREATE TABLE "matches" (
    "id" SERIAL NOT NULL,
    "match_no" INTEGER NOT NULL,
    "kickoff" TIMESTAMP(3) NOT NULL,
    "home_team_id" INTEGER NOT NULL,
    "away_team_id" INTEGER NOT NULL,
    "home_goals" INTEGER NOT NULL,
    "away_goals" INTEGER NOT NULL,
    "home_penalties" INTEGER NOT NULL,
    "away_penalties" INTEGER NOT NULL,
    "venue_id" INTEGER NOT NULL,
    "stage_id" INTEGER NOT NULL,
    "is_result" BOOLEAN NOT NULL DEFAULT false,
    "extra_time" BOOLEAN NOT NULL DEFAULT false,
    "scored" BOOLEAN NOT NULL DEFAULT false,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "matches_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "matches" ADD CONSTRAINT "matches_venue_id_fkey" FOREIGN KEY ("venue_id") REFERENCES "venues"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "matches" ADD CONSTRAINT "matches_stage_id_fkey" FOREIGN KEY ("stage_id") REFERENCES "stages"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
