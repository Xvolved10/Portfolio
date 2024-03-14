-- CreateTable
CREATE TABLE "Contact" (
    "id" BIGSERIAL NOT NULL,
    "Img" TEXT,
    "Title" VARCHAR,
    "Url" TEXT,
    "Coordonnees" VARCHAR,

    CONSTRAINT "Contact_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Education" (
    "id" BIGSERIAL NOT NULL,
    "Title" VARCHAR,
    "Description" TEXT,
    "Date" DATE,

    CONSTRAINT "Education_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Education_Skills" (
    "id" BIGSERIAL NOT NULL,
    "id_Education" BIGINT,
    "id_Skills" BIGINT,

    CONSTRAINT "Education_Skills_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Projects" (
    "id" BIGSERIAL NOT NULL,
    "Img" TEXT,
    "Title" VARCHAR NOT NULL,
    "Description" TEXT NOT NULL,
    "Slug" VARCHAR,
    "GitUrl" TEXT,
    "WebUrl" TEXT,
    "Skills" VARCHAR,

    CONSTRAINT "Projets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Projects-Skills" (
    "id" BIGSERIAL NOT NULL,
    "id_projects" BIGINT,
    "id_skills" BIGINT,

    CONSTRAINT "Projects-Skills_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Skills" (
    "id" BIGSERIAL NOT NULL,
    "Img" TEXT,
    "Title" VARCHAR,

    CONSTRAINT "Skills_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Social" (
    "id" BIGSERIAL NOT NULL,
    "name" VARCHAR,
    "img" TEXT,
    "url" TEXT,

    CONSTRAINT "Social_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Education_Skills" ADD CONSTRAINT "public_Education_Skills_id_Education_fkey" FOREIGN KEY ("id_Education") REFERENCES "Education"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "Education_Skills" ADD CONSTRAINT "public_Education_Skills_id_Skills_fkey" FOREIGN KEY ("id_Skills") REFERENCES "Skills"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "Projects-Skills" ADD CONSTRAINT "public_Projects-Skills_id_projects_fkey" FOREIGN KEY ("id_projects") REFERENCES "Projects"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "Projects-Skills" ADD CONSTRAINT "public_Projects-Skills_id_skills_fkey" FOREIGN KEY ("id_skills") REFERENCES "Skills"("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

