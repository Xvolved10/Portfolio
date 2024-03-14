import Image from "next/image";
import getContactAll from "@/api/getContact";
import getEducationAll from "@/api/getEducation";
import getEducationSkillsAll from "@/api/getEducationSkills";
import getProjectsAll from "@/api/getProjects";
import getProjectsSkillsAll from "@/api/getProjectsSkills";
import getSkillsAll from "@/api/getSkills";
import getSocialAll from "@/api/getSocial";


export default async function Home() {
  const contact = await getContactAll();
  const education = await getEducationAll();
  const educationSkills = await getEducationSkillsAll();
  const projects = await getProjectsAll();
  const projectSkills = await getProjectsSkillsAll();
  const skills = await getSkillsAll();
  const social = await getSocialAll();

  return (
    <main>
      <h1>Hola que tal come esta en la casa</h1>
      {projects.map((projects) => (
            <div key={projects.id} className="">
             <p>{projects.Title}</p>
             <p>{projects.Description}</p>
            </div>
          ))}
    </main>
  );
}
