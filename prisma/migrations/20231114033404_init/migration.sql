/*
  Warnings:

  - You are about to drop the column `description` on the `Games` table. All the data in the column will be lost.
  - You are about to drop the column `developer` on the `Games` table. All the data in the column will be lost.
  - You are about to drop the column `editor` on the `Games` table. All the data in the column will be lost.
  - You are about to drop the column `genre` on the `Games` table. All the data in the column will be lost.
  - You are about to drop the column `image` on the `Games` table. All the data in the column will be lost.
  - You are about to drop the column `price` on the `Games` table. All the data in the column will be lost.
  - You are about to drop the column `releaseDate` on the `Games` table. All the data in the column will be lost.
  - You are about to drop the column `stock` on the `Games` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Games" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "platform" TEXT NOT NULL
);
INSERT INTO "new_Games" ("id", "platform", "title") SELECT "id", "platform", "title" FROM "Games";
DROP TABLE "Games";
ALTER TABLE "new_Games" RENAME TO "Games";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
