/*
	Sctipt Name : Onboarding Assignment Database.
	Description	: Database creation, Table creation along with constraints.
	Author 		: Dhanuka ILANDARAGE
	Date		: 09-12-2019
*/

use master
go

create database localmarket
go

use localmarket
go

create table Customer(
	id 		int identity(1, 1),
	name 	varchar(100),
	address	varchar(200),
	constraint pk_customer primary key(id)
	);

create table Product(
	id 		int identity(1, 1),
	name	varchar(100),
	price	money,
	constraint pk_product primary key(id)
	);
	
create table Store(
	id		int identity(1,1),
	name	varchar(100),
	address	varchar(200),
	constraint pk_store primary key(id)
	);

create table Sales(
	id			int identity(1, 1),
	productId	int,
	customerId	int,
	storeId		int,
	DateSold	date,
	constraint pk_sales primary key(id),
	constraint fk1_sales foreign key (productId) references Product (id),
	constraint fk2_sales foreign key (customerId) references Customer (id),
	constraint fk3_sales foreign key (storeId) references Store (id)
	);
