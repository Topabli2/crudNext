import { NextResponse } from "next/server";

export function GET(request, { params }) {
  return NextResponse.json("Obteniendo Juego " + params.id);
}

export function PUT(request, { params }) {
  return NextResponse.json("Actualizando Juego " + params.id);
}

export function DELETE(request, { params }) {
  return NextResponse.json("Eliminando Juego " + params.id);
}
