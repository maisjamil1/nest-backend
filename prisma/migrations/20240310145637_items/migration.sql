-- CreateTable
CREATE TABLE "Item" (
    "id" SERIAL NOT NULL,
    "itemName" TEXT NOT NULL,
    "itemPrice" DOUBLE PRECISION NOT NULL,
    "itemImage" TEXT NOT NULL,
    "itemDescription" TEXT,

    CONSTRAINT "Item_pkey" PRIMARY KEY ("id")
);
