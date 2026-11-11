CREATE SCHEMA `exercap05`;

USE exercap05;

DROP TABLE exercap05.orders;

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
    `order_amount` DECIMAL(10,2) NULL,
    `order_delivery_fee` DECIMAL(10,2) NULL,
    `order_delivery_cost` DECIMAL(10,2) NULL,
    `order_created_hour` INT NULL,
    `order_created_minute` INT NULL,
    `order_created_day` INT NULL,
    `order_created_month` INT NULL,
	`order_created_year` INT NULL,
	`order_moment_created` VARCHAR(200) NULL, 
    `order_moment_accepted` VARCHAR(200) NULL, 
    `order_moment_ready` VARCHAR(200) NULL, 
    `order_moment_collected` VARCHAR(200) NULL, 
    `order_moment_in_expedition` VARCHAR(200) NULL, 
    `order_moment_delivering` VARCHAR(200) NULL, 
    `order_moment_delivered` VARCHAR(200) NULL, 
    `order_moment_finished` VARCHAR(200) NULL, 
    `order_metric_collected_time` DECIMAL(10,2) NULL, 
    `order_metric_paused_time` DECIMAL(10,2) NULL, 
    `order_metric_production_time` DECIMAL(10,2) NULL, 
    `order_metric_walking_time` DECIMAL(10,2) NULL, 
    `order_metric_expediton_speed_time` DECIMAL(10,2) NULL, 
    `order_metric_transit_time` DECIMAL(10,2) NULL, 
    `order_metric_cycle_time` DECIMAL(10,2) NULL);
    
CREATE TABLE `payments` (
	`payment_id` INT NULL,
    `payment_order_id` INT NULL,
    `payment_amount` DECIMAL(10,2) NULL,
    `payment_fee` DECIMAL(10,2) NULL,
    `payment_method` VARCHAR(200) NULL,
    `payment_status` VARCHAR(200) NULL);
    
CREATE TABLE `channels` (
	`channel_id` INT NULL,
    `channel_name` VARCHAR(200) NULL,
    `channel_type` VARCHAR(200) NULL);
    
CREATE TABLE `drivers` (
	`driver_id` INT NULL,
    `driver_modal` VARCHAR(200) NULL,
    `driver_type` VARCHAR(200) NULL);
    
CREATE TABLE `hubs` (
	`hub_id` INT NULL,
    `hub_name` VARCHAR(200) NULL,
    `hub_city` VARCHAR(200) NULL,
    `hub_state` VARCHAR(2) NULL,
    `hub_latitude` VARCHAR(200) NULL,
    `hub_longitude` VARCHAR(200) NULL);
    
CREATE TABLE `stores` (
	`store_id` INT NULL,
    `hub_id` INT NULL,
    `store_name` VARCHAR(200) NULL,
    `store_segment` VARCHAR(200) NULL,
    `store_plan_price` DECIMAL(10,2) NULL,
    `store_latitude` VARCHAR(200) NULL,
    `store_longitude` VARCHAR(200) NULL);