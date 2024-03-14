import prisma from "@/libs/prismadb";

export default async function getProjectsSkillsAll() {
  const allProjectsSkills = await prisma.projects_Skills.findMany();
  return allProjectsSkills;
}