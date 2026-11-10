CREATE SCHEMA `exercap05`;

CREATE TABLE `deliveries` (
	`delivery_id` INT NULL,
    `delivery_order_id` INT NULL,
    `driver_id` INT NULL,
    `delivery_distance_meters` INT NULL,
    `delivery_status` VARCHAR(200) NULL);
    
CREATE TABLE `orders`(
	`order_id` INT NULL,
    `store_id` INT NULL,
    `channel_id` INT NULL,
    `payment_order_id` INT NULL,
    `delivery_order_id` INT NULL,
    `order_status` VARCHAR(200) NULL,
    `order_amount` DECIMAL(10,2),
    `order_delivery_fee` DECIMAL(10,2),
    `order_delivery_cost` DECIMAL(10,2),
    `order_created_hour` INT NULL,
    `order_created_minute` INT NULL,
    `order_created_day` INT NULL,
    `order_created_month` INT NULL,
	`order_created_year` INT NULL,
	`order_moment_created` DATETIME NULL, 
    `order_moment_accepted` DATETIME NULL, 
    `order_moment_ready` DATETIME NULL, 
    `order_moment_collected` DATETIME NULL, 
    `order_moment_in_expedition` DATETIME NULL, 
    `order_moment_delivering` DATETIME NULL, 
    `order_moment_delivered` DATETIME NULL, 
    `order_moment_finished` DATETIME NULL, 
    `order_metric_collected_time` DECIMAL(10,2), 
    `order_metric_paused_time` DECIMAL(10,2), 
    `order_metric_production_time` DECIMAL(10,2), 
    `order_metric_walking_time` DECIMAL(10,2), 
    `order_metric_expediton_speed_time` DECIMAL(10,2), 
    `order_metric_transit_time` DECIMAL(10,2), 
    `order_metric_cycle_time` DECIMAL(10,2)
)