/*
  Warnings:

  - Added the required column `description` to the `Games` table without a default value. This is not possible if the table is not empty.
  - Added the required column `developer` to the `Games` table without a default value. This is not possible if the table is not empty.
  - Added the required column `editor` to the `Games` table without a default value. This is not possible if the table is not empty.
  - Added the required column `genre` to the `Games` table without a default value. This is not possible if the table is not empty.
  - Added the required column `image` to the `Games` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price` to the `Games` table without a default value. This is not possible if the table is not empty.
  - Added the required column `releaseDate` to the `Games` table without a default value. This is not possible if the table is not empty.
  - Added the required column `stock` to the `Games` table without a default value. This is not possible if the table is not empty.

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
INSERT INTO "new_Games" ("id", "platform", "title") SELECT "id", "platform", "title" FROM "Games";
DROP TABLE "Games";
ALTER TABLE "new_Games" RENAME TO "Games";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
