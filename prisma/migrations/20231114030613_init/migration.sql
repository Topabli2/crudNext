-- CreateTable
CREATE TABLE "Games" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "platform" TEXT NOT NULL,
    "descriptiom" TEXT NOT NULL,
    "genre" TEXT NOT NULL,
    "releaseDate" DATETIME NOT NULL,
    "developer" TEXT NOT NULL,
    "editor" TEXT NOT NULL,
    "stock" INTEGER NOT NULL,
    "image" TEXT NOT NULL,
    "price" INTEGER NOT NULL
);
