/*
  Warnings:

  - You are about to drop the `song_on_playlist` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `song_on_playlist` DROP FOREIGN KEY `song_on_playlist_songId_fkey`;

-- DropTable
DROP TABLE `song_on_playlist`;

-- AddForeignKey
ALTER TABLE `playlists` ADD CONSTRAINT `playlists_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
