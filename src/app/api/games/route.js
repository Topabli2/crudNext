import { NextResponse } from "next/server";
import { prisma } from "@/libs/prisma";
import { request } from "http";

export async function GET() {
  const games = await prisma.games.findMany();

  return NextResponse.json(games);
}

export async function POST(request) {
  const {
    title,
    platform,
    description,
    genre,
    releaseDate,
    developer,
    editor,
    stock,
    image,
    price,
  } = await request.json();
  const newGame = await prisma.games.create({
    data: {
      title,
      platform,
      description,
      genre,
      releaseDate,
      developer,
      editor,
      stock,
      image,
      price,
    },
  });
  return NextResponse.json(newGame);
}
