import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default async function handle(req, res) {
  const avis = await prisma.avis.findMany({
    orderBy: {
      id: "asc",
    },
  });
  res.json(avis);
  console.log(avis);
}
