-- Documentation:
--
-- PropertyTypeId:
--   1: Language
--   2: TestType
--   3: Category
--   4: Keyword
--   5: Link
--
-- CompletionStatusId:
--   1: Not Started
--	 2: Edit
--	 3: Review
--	 4: Completed
--
-- DatasetId:
--	 3: Romania 1989
--	 4	Poland1989
--	 5	Europeana 1914-1918
--	 6	Europeana 1989
--	 8	Sachsen-at-Work
--	 10	Sachsen_at_work_photos
--	 12	Teatro PT
--	 13	Story of the month
--	 15	Dublin
--	 16	Womens History
--	 17	19th Century Poland
--	 18	Bremen Run
--	 19	Zagreb
--	 20	19th Century

SELECT
	COUNT(*)
FROM `ItemProperty`
WHERE `PropertyId` IN
(
	SELECT `PropertyId`
	FROM `Property`
	/* select property */
	WHERE `PropertyTypeId` = 4
)
AND `ItemId` IN
(
	SELECT `ItemId`
	FROM `Item`
	/* overall status of the item */
	WHERE `CompletionStatusId` IN (1,2,3,4)
	AND `StoryId` IN
	(
		SELECT `StoryId`
		FROM `Story`
		/* choose dataset */
		WHERE `DatasetId` = 15
	)
)