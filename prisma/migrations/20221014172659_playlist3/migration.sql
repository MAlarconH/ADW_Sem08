/*
  Warnings:

  - Added the required column `songId` to the `playlists` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `playlists` ADD COLUMN `songId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `playlists` ADD CONSTRAINT `playlists_songId_fkey` FOREIGN KEY (`songId`) REFERENCES `songs`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
