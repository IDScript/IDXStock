-- CreateTable
CREATE TABLE `history` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `code` VARCHAR(200) NOT NULL,
    `date` DATETIME(3) NOT NULL,
    `previous` INTEGER NULL,
    `open_price` INTEGER NULL,
    `first_trade` INTEGER NULL,
    `high` INTEGER NULL,
    `low` INTEGER NULL,
    `close` INTEGER NULL,
    `change` INTEGER NULL,
    `volume` BIGINT NULL,
    `value` BIGINT NULL,
    `frequency` BIGINT NULL,
    `index_individual` DECIMAL(65, 30) NULL,
    `offer` BIGINT NULL,
    `offer_volume` BIGINT NULL,
    `bid` BIGINT NULL,
    `bid_volume` BIGINT NULL,
    `listed_shares` BIGINT NULL,
    `tradeble_shares` BIGINT NULL,
    `weight_for_index` BIGINT NULL,
    `foreign_sell` BIGINT NULL,
    `foreign_buy` BIGINT NULL,
    `delisting_date` VARCHAR(200) NULL,
    `non_regular_volume` BIGINT NULL,
    `non_regular_value` BIGINT NULL,
    `non_regular_frequency` BIGINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `stock` (
    `code` VARCHAR(200) NOT NULL,
    `name` VARCHAR(200) NOT NULL,
    `price` INTEGER NULL,
    `priceopen` INTEGER NULL,
    `high` INTEGER NULL,
    `low` INTEGER NULL,
    `volume` BIGINT NULL,
    `marketcap` BIGINT NULL,
    `tradetime` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `volumeavg` BIGINT NULL,
    `pe` DECIMAL(65, 30) NULL,
    `eps` DECIMAL(65, 30) NULL,
    `high52` INTEGER NULL,
    `low52` INTEGER NULL,
    `change` INTEGER NULL,
    `changepct` DECIMAL(65, 30) NULL,
    `closeyest` INTEGER NULL,
    `shares` BIGINT NULL,

    UNIQUE INDEX `stock_name_key`(`name`),
    PRIMARY KEY (`code`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
