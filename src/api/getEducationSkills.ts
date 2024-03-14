import prisma from "@/libs/prismadb";

export default async function getEducationSkillsAll() {
  const allEducationSkills = await prisma.education_Skills.findMany();
  return allEducationSkills;
}