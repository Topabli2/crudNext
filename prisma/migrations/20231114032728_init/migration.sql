/*
  Warnings:

  - You are about to drop the column `descriptiom` on the `Games` table. All the data in the column will be lost.
  - Added the required column `description` to the `Games` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Games" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "platform" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "genre" TEXT NOT NULL,
    "releaseDate" TEXT NOT NULL,
    "developer" TEXT NOT NULL,
    "editor" TEXT NOT NULL,
    "stock" INTEGER NOT NULL,
    "image" TEXT NOT NULL,
    "price" REAL NOT NULL
);
INSERT INTO "new_Games" ("developer", "editor", "genre", "id", "image", "platform", "price", "releaseDate", "stock", "title") SELECT "developer", "editor", "genre", "id", "image", "platform", "price", "releaseDate", "stock", "title" FROM "Games";
DROP TABLE "Games";
ALTER TABLE "new_Games" RENAME TO "Games";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
