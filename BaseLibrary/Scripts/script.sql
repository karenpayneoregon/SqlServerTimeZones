USE [ForumExamples]
GO
/****** Object:  Table [dbo].[Timezones]    Script Date: 7/15/2018 4:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Timezones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Timezone] [nchar](6) NULL,
	[Place] [varchar](30) NULL,
 CONSTRAINT [PK_Timezones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkingWithDates]    Script Date: 7/15/2018 4:35:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingWithDates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SomeDate] [datetimeoffset](7) NULL CONSTRAINT [DF_WorkingWithDates_SomeDate]  DEFAULT (getdate()),
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_WorkingWithDates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Timezones] ON 

INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (1, N'-12:00', N'Eniwetok')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (2, N'-12:00', N'Kwajalein')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (3, N'-11:00', N'Midway Island')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (4, N'-11:00', N'Samoa')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (5, N'-11:00', N'Pago Pago')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (6, N'-10:00', N'Hawaii')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (7, N'-10:00', N'Honolulu')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (8, N'-09:00', N'Alaska')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (9, N'-09:00', N'Anchorage')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (10, N'-08:00', N'Los Angeles')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (11, N'-08:00', N'Pacific Time (US & Canada)')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (12, N'-08:00', N'San Francisco')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (13, N'-08:00', N'Tijuana')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (14, N'-08:00', N'Vancouver')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (15, N'-07:00', N'Arizona')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (16, N'-07:00', N'Denver')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (17, N'-07:00', N'Mountain Time (US & Canada)')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (18, N'-06:00', N'Central Time (US & Canada)')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (19, N'-06:00', N'Chicago')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (20, N'-06:00', N'Mexico City')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (21, N'-06:00', N'Saskatchewan')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (22, N'-05:00', N'Bogota')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (23, N'-05:00', N'Eastern Time (US & Canada)')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (24, N'-05:00', N'Indiana (East)')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (25, N'-05:00', N'Lima')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (26, N'-05:00', N'Montreal')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (27, N'-05:00', N'New York')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (28, N'-04:00', N'Atlantic Time (Canada)')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (29, N'-04:00', N'Caracas')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (30, N'-04:00', N'La Paz')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (31, N'-04:00', N'Santiago')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (32, N'-03:30', N'Newfoundland')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (33, N'-03:00', N'Brasilia')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (34, N'-03:00', N'Buenos Aires')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (35, N'-03:00', N'Georgetown')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (36, N'-03:00', N'Rio De Janeiro')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (37, N'-02:00', N'Mid-Atlantic')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (38, N'-01:00', N'Azores')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (39, N'-01:00', N'Cape Verde Is.')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (40, N'-00:00', N'Casablanca')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (41, N'-00:00', N'Dublin')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (42, N'-00:00', N'Edinburgh')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (43, N'-00:00', N'Greenwich Mean Time')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (44, N'-00:00', N'Lisbon')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (45, N'-00:00', N'London')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (46, N'-00:00', N'Monrovia')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (47, N'+01:00', N'Amsterdam')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (48, N'+01:00', N'Berlin')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (49, N'+01:00', N'Bern')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (50, N'+01:00', N'Bratislava')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (51, N'+01:00', N'Brussels')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (52, N'+01:00', N'Geneva')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (53, N'+01:00', N'Madrid')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (54, N'+01:00', N'Paris')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (55, N'+01:00', N'Prague')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (56, N'+01:00', N'Rome')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (57, N'+01:00', N'Stockholm')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (58, N'+01:00', N'Vienna')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (59, N'+01:00', N'Warsaw')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (60, N'+02:00', N'Athens')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (61, N'+02:00', N'Cairo')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (62, N'+02:00', N'Eastern Europe')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (63, N'+02:00', N'Harare')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (64, N'+02:00', N'Helsinki')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (65, N'+02:00', N'Israel')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (66, N'+02:00', N'Istanbul')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (67, N'+02:00', N'Pretoria')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (68, N'+03:00', N'Baghdad')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (69, N'+03:00', N'Kuwait')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (70, N'+03:00', N'Moscow')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (71, N'+03:00', N'Nairobi')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (72, N'+03:00', N'Riyadh')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (73, N'+03:00', N'St. Petersburg')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (74, N'+03:30', N'Tehran')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (75, N'+04:00', N'Abu Dhabi')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (76, N'+04:00', N'Dubai')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (77, N'+04:00', N'Kazan')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (78, N'+04:00', N'Muscat')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (79, N'+04:00', N'Tbilisi')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (80, N'+04:00', N'Volgograd')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (81, N'+04:30', N'Kabul')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (82, N'+05:00', N'Ekaterinburg')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (83, N'+05:00', N'Islamabad')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (84, N'+05:00', N'Karachi')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (85, N'+05:00', N'Tashkent')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (86, N'+05:30', N'Bombay')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (87, N'+05:30', N'Calcutta')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (88, N'+05:30', N'Colombo')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (89, N'+05:30', N'Madras')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (90, N'+05:30', N'New Delhi')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (91, N'+06:00', N'Almaty')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (92, N'+06:00', N'Dhaka')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (93, N'+06:30', N'Rangoon')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (94, N'+07:00', N'Bangkok')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (95, N'+07:00', N'Hanoi')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (96, N'+07:00', N'Jakarta')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (97, N'+08:00', N'Beijing')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (98, N'+08:00', N'Chongqing')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (99, N'+08:00', N'Hong Kong')
GO
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (100, N'+08:00', N'Manila')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (101, N'+08:00', N'Perth')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (102, N'+08:00', N'Singapore')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (103, N'+08:00', N'Taipei')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (104, N'+08:00', N'Urumqi')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (105, N'+09:00', N'Osaka')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (106, N'+09:00', N'Sapporo')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (107, N'+09:00', N'Seoul')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (108, N'+09:00', N'Tokyo')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (109, N'+09:00', N'Yakutsk')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (110, N'+09:30', N'Adelaide')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (111, N'+09:30', N'Darwin')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (112, N'+10:00', N'Agana')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (113, N'+10:00', N'Brisbane')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (114, N'+10:00', N'Canberra')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (115, N'+10:00', N'Guam')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (116, N'+10:00', N'Hobart')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (117, N'+10:00', N'Melbourne')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (118, N'+10:00', N'Port Moresby')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (119, N'+10:00', N'Sydney')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (120, N'+10:00', N'Vladivostok')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (121, N'+11:00', N'Magadan')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (122, N'+11:00', N'New Caledonia')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (123, N'+11:00', N'Noumea')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (124, N'+11:00', N'Solomon Is.')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (125, N'+12:00', N'Auckland')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (126, N'+12:00', N'Fiji')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (127, N'+12:00', N'Kamchatka')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (128, N'+12:00', N'Marshall Is.')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (129, N'+12:00', N'Suva')
INSERT [dbo].[Timezones] ([id], [Timezone], [Place]) VALUES (130, N'+12:00', N'Wellington')
SET IDENTITY_INSERT [dbo].[Timezones] OFF
SET IDENTITY_INSERT [dbo].[WorkingWithDates] ON 

INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (1, CAST(N'2012-08-23T18:37:50.9729477-03:30' AS DateTimeOffset), N'Rachael', N'Mc Daniel')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (2, CAST(N'2018-04-22T21:50:39.2832497+12:00' AS DateTimeOffset), N'Lawrence', N'Pittman')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (3, CAST(N'2016-01-26T15:44:10.6488960+08:00' AS DateTimeOffset), N'Lance', N'Jordan')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (4, CAST(N'2012-11-28T08:29:11.9028970-03:00' AS DateTimeOffset), N'Kirsten', N'Durham')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (5, CAST(N'2010-07-08T22:36:34.4174117-12:00' AS DateTimeOffset), N'Andrew', N'Villegas')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (6, CAST(N'2014-04-20T19:15:35.2470080+03:00' AS DateTimeOffset), N'Rafael', N'Jacobs')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (7, CAST(N'2011-03-12T02:47:55.9768950-09:00' AS DateTimeOffset), N'Tabatha', N'Bolton')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (8, CAST(N'2011-02-03T04:51:06.9678694-09:00' AS DateTimeOffset), N'Roderick', N'Sanders')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (9, CAST(N'2011-07-14T21:11:23.4240493-08:00' AS DateTimeOffset), N'Kelly', N'Quinn')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (10, CAST(N'2011-03-29T09:45:28.5304993-09:00' AS DateTimeOffset), N'Marla', N'Dodson')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (11, CAST(N'2012-08-26T21:31:08.3609742-03:00' AS DateTimeOffset), N'Blanca', N'Hull')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (12, CAST(N'2015-06-27T12:26:12.1157342+06:00' AS DateTimeOffset), N'Lester', N'Hoffman')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (13, CAST(N'2015-04-29T16:48:26.8887739+05:30' AS DateTimeOffset), N'Tania', N'Barajas')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (14, CAST(N'2010-08-13T10:44:42.8892545-11:00' AS DateTimeOffset), N'Tabatha', N'Bailey')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (15, CAST(N'2013-01-09T18:29:23.0898443-02:00' AS DateTimeOffset), N'Paul', N'Solomon')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (16, CAST(N'2011-09-18T10:38:11.0707801-07:00' AS DateTimeOffset), N'Daphne', N'Brady')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (17, CAST(N'2014-01-28T21:38:12.4555560+03:00' AS DateTimeOffset), N'Autumn', N'Estrada')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (18, CAST(N'2011-03-14T18:01:31.0772268-09:00' AS DateTimeOffset), N'Wendell', N'Wolfe')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (19, CAST(N'2015-02-14T02:45:31.5327378+05:00' AS DateTimeOffset), N'Lesley', N'Brennan')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (20, CAST(N'2015-01-29T10:48:16.9231772+05:00' AS DateTimeOffset), N'Cameron', N'Joseph')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (21, CAST(N'2011-09-08T18:33:28.5124118-07:00' AS DateTimeOffset), N'Vickie', N'Blake')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (22, CAST(N'2012-04-07T04:45:35.8960380-04:00' AS DateTimeOffset), N'Brendan', N'Bullock')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (23, CAST(N'2014-02-09T20:19:04.7820900+03:00' AS DateTimeOffset), N'Marissa', N'Walls')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (24, CAST(N'2016-11-27T19:54:02.3387400+10:00' AS DateTimeOffset), N'Jesus', N'Stokes')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (25, CAST(N'2011-05-23T03:12:04.1971635-09:00' AS DateTimeOffset), N'Wallace', N'Fleming')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (26, CAST(N'2015-05-09T11:58:04.4049520+05:00' AS DateTimeOffset), N'Gabrielle', N'Arellano')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (27, CAST(N'2013-04-09T19:12:52.2230682-01:00' AS DateTimeOffset), N'Adrienne', N'Brooks')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (28, CAST(N'2011-08-10T06:48:09.2355571-08:00' AS DateTimeOffset), N'Raul', N'Gross')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (29, CAST(N'2012-10-15T09:52:00.2591331-03:00' AS DateTimeOffset), N'Robyn', N'Benton')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (30, CAST(N'2010-10-26T06:15:50.0113130-10:00' AS DateTimeOffset), N'Marci', N'Beard')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (31, CAST(N'2015-04-14T15:10:55.3215967+05:00' AS DateTimeOffset), N'Tina', N'Bush')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (32, CAST(N'2010-11-24T09:36:15.9951335-10:00' AS DateTimeOffset), N'Mario', N'Boone')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (33, CAST(N'2014-10-13T19:59:57.6027958+04:00' AS DateTimeOffset), N'Trent', N'Mann')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (34, CAST(N'2012-12-18T13:38:04.6672391-03:00' AS DateTimeOffset), N'Mike', N'Le')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (35, CAST(N'2011-10-19T15:18:14.4548014-07:00' AS DateTimeOffset), N'Patrick', N'Horne')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (36, CAST(N'2012-03-20T05:39:55.5201214-04:00' AS DateTimeOffset), N'Amie', N'Byrd')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (37, CAST(N'2012-07-05T11:57:23.1033052-04:00' AS DateTimeOffset), N'Scott', N'Cantrell')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (38, CAST(N'2012-03-08T04:09:31.5616087-05:00' AS DateTimeOffset), N'Jeffrey', N'Singleton')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (39, CAST(N'2010-11-23T04:16:10.9852722-10:00' AS DateTimeOffset), N'Milton', N'Manning')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (40, CAST(N'2016-07-12T06:17:15.0549878+09:00' AS DateTimeOffset), N'Brandy', N'Montes')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (41, CAST(N'2016-09-19T01:04:36.2262512+09:00' AS DateTimeOffset), N'Elena', N'Parks')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (42, CAST(N'2014-09-27T23:38:41.2659979+04:00' AS DateTimeOffset), N'Shanda', N'Gutierrez')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (43, CAST(N'2011-05-02T21:21:27.3788104-09:00' AS DateTimeOffset), N'Luke', N'Mccoy')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (44, CAST(N'2017-08-22T03:36:17.7522252+12:00' AS DateTimeOffset), N'Carl', N'Ruiz')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (45, CAST(N'2014-03-19T19:22:25.0857830+03:00' AS DateTimeOffset), N'Jay', N'Cardenas')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (46, CAST(N'2014-09-29T17:43:55.8137085+04:00' AS DateTimeOffset), N'Jon', N'Santiago')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (47, CAST(N'2014-11-12T11:26:19.7839401+05:00' AS DateTimeOffset), N'Bradford', N'Franklin')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (48, CAST(N'2016-04-15T07:42:28.3481164+08:00' AS DateTimeOffset), N'Caroline', N'Livingston')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (49, CAST(N'2012-12-09T22:57:31.5720901-03:00' AS DateTimeOffset), N'Beverly', N'Lamb')
INSERT [dbo].[WorkingWithDates] ([id], [SomeDate], [FirstName], [LastName]) VALUES (50, CAST(N'2016-09-28T09:06:51.9202514+09:00' AS DateTimeOffset), N'Tameka', N'Morris')
SET IDENTITY_INSERT [dbo].[WorkingWithDates] OFF
