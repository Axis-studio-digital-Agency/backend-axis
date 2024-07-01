import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default async function handle(req, res) {
  const tarif = await prisma.tarif.findMany({
    where: {
      published: true,
    },
    orderBy: {
      id: "asc",
    },
  });
  res.json(tarif);
  console.log(tarif);
}
