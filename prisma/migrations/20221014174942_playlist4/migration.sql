/*
  Warnings:

  - You are about to drop the column `createdAt` on the `playlists` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `playlists` table. All the data in the column will be lost.
  - You are about to drop the column `genre` on the `songs` table. All the data in the column will be lost.
  - You are about to alter the column `duration` on the `songs` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Double`.
  - Added the required column `genere` to the `songs` table without a default value. This is not possible if the table is not empty.
  - Made the column `name` on table `users` required. This step will fail if there are existing NULL values in that column.

*/
-- DropIndex
DROP INDEX `users_email_key` ON `users`;

-- AlterTable
ALTER TABLE `playlists` DROP COLUMN `createdAt`,
    DROP COLUMN `updatedAt`,
    MODIFY `name` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `songs` DROP COLUMN `genre`,
    ADD COLUMN `genere` VARCHAR(191) NOT NULL,
    MODIFY `duration` DOUBLE NOT NULL;

-- AlterTable
ALTER TABLE `users` MODIFY `name` VARCHAR(191) NOT NULL;
