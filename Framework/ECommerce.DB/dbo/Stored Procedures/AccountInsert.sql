﻿
CREATE PROCEDURE [dbo].[AccountInsert]
	@first_name NVARCHAR(50),
	@last_name NVARCHAR(50),
	@email NVARCHAR(255),
	@password NVARCHAR(50),
	@salt NVARCHAR(50),
	@contact_no NVARCHAR(30),
	@shipping_address NVARCHAR(250),
	@country NVARCHAR(50),
	@status INT,
	@role INT,
	@date_created DATETIME,
	@date_modified DATETIME,
	@created_account_id INT,
	@modified_account_id INT
AS

	/* Volume Technologies RADA Generator v6.1 */

	INSERT INTO [Account]
	(
		[first_name],
		[last_name],
		[email],
		[password],
		[salt],
		[contact_no],
		[shipping_address],
		[country],
		[status],
		[role],
		[date_created],
		[date_modified],
		[created_account_id],
		[modified_account_id]
	)
	VALUES
	(
		@first_name,
		@last_name,
		@email,
		@password,
		@salt,
		@contact_no,
		@shipping_address,
		@country,
		@status,
		@role,
		@date_created,
		@date_modified,
		@created_account_id,
		@modified_account_id
	)

	SELECT SCOPE_IDENTITY()