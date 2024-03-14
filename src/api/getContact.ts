import prisma from "@/libs/prismadb";

export default async function getContactAll() {
  const allContact = await prisma.contact.findMany();
  return allContact;
}