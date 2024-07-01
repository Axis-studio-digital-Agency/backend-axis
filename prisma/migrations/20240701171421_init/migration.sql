-- CreateTable
CREATE TABLE "Info" (
    "id" SERIAL NOT NULL,
    "slogan" TEXT NOT NULL,
    "brand" TEXT NOT NULL,
    "at" TEXT NOT NULL,
    "header" TEXT NOT NULL,
    "mail" TEXT NOT NULL,

    CONSTRAINT "Info_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Projet" (
    "id" SERIAL NOT NULL,
    "img" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "button" TEXT NOT NULL,
    "published" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Projet_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Article" (
    "id" SERIAL NOT NULL,
    "badge" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "button" TEXT NOT NULL,
    "published" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Article_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Tarif" (
    "id" SERIAL NOT NULL,
    "imgTop" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "critaire1" TEXT NOT NULL,
    "critaire2" TEXT,
    "critaire3" TEXT,
    "critaire4" TEXT,
    "critaire5" TEXT,
    "critaire6" TEXT,
    "critaire7" TEXT,
    "critaire8" TEXT,
    "price" TEXT NOT NULL,
    "imgBottom" TEXT NOT NULL,
    "populaire" BOOLEAN NOT NULL DEFAULT false,
    "published" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Tarif_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Avis" (
    "id" SERIAL NOT NULL,
    "userName" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "stars" TEXT NOT NULL,

    CONSTRAINT "Avis_pkey" PRIMARY KEY ("id")
);
