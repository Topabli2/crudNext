/*
  Warnings:

  - You are about to alter the column `price` on the `Games` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Float`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Games" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "platform" TEXT NOT NULL,
    "descriptiom" TEXT NOT NULL,
    "genre" TEXT NOT NULL,
    "releaseDate" TEXT NOT NULL,
    "developer" TEXT NOT NULL,
    "editor" TEXT NOT NULL,
    "stock" INTEGER NOT NULL,
    "image" TEXT NOT NULL,
    "price" REAL NOT NULL
);
INSERT INTO "new_Games" ("descriptiom", "developer", "editor", "genre", "id", "image", "platform", "price", "releaseDate", "stock", "title") SELECT "descriptiom", "developer", "editor", "genre", "id", "image", "platform", "price", "releaseDate", "stock", "title" FROM "Games";
DROP TABLE "Games";
ALTER TABLE "new_Games" RENAME TO "Games";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
