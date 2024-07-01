import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export default async function handle(req, res) {
  const article = await prisma.article.findMany({
    where: {
      published: true,
    },
    orderBy: {
      id: "asc",
    },
  });
  res.json(article);
  console.log(article);
}
