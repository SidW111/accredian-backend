-- CreateTable
CREATE TABLE `Referral` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `referrerName` VARCHAR(191) NOT NULL,
    `referrerEmail` VARCHAR(191) NOT NULL,
    `referrerPhone` VARCHAR(191) NOT NULL,
    `referreNama` VARCHAR(191) NOT NULL,
    `referreEmail` VARCHAR(191) NOT NULL,
    `referrePhone` VARCHAR(191) NOT NULL,
    `courseInterested` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `Referral_referrerEmail_key`(`referrerEmail`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
