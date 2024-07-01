import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default async function handle(req, res) {
  const projet = await prisma.projet.findMany({
    where: {
      published: true,
    },
    orderBy: {
      id: "asc",
    },
  });
  res.json(projet);
  console.log(projet);
}
