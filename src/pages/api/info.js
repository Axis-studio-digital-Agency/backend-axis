import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default async function handle(req, res) {
  const info = await prisma.info.findMany({
    orderBy: {
      id: "asc",
    },
  });
  res.json(info);
  console.log(info);
}
