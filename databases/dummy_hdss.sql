USE [dummy_hdss]
GO
/****** Object:  Table [dbo].[participant]    Script Date: 02/12/2013 11:31:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[participant](
	[individid] [nvarchar](50) NOT NULL,
	[fname] [nvarchar](50) NULL,
	[jname] [nvarchar](50) NULL,
	[lname] [nvarchar](50) NULL,
	[famcla] [nvarchar](50) NULL,
	[akaname] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[dob] [datetime] NULL,
	[arrdate] [datetime] NULL,
	[motherid] [nvarchar](50) NULL,
	[fatherid] [nvarchar](50) NULL,
	[mfname] [nvarchar](50) NULL,
	[mjname] [nvarchar](50) NULL,
	[mlname] [nvarchar](50) NULL,
	[ffname] [nvarchar](50) NULL,
	[fjname] [nvarchar](50) NULL,
	[flname] [nvarchar](50) NULL,
	[mtal] [nvarchar](50) NULL,
	[mtyp] [nvarchar](50) NULL,
	[chheadid] [nvarchar](50) NULL,
	[cfname] [nvarchar](50) NULL,
	[cjname] [nvarchar](50) NULL,
	[clname] [nvarchar](50) NULL,
	[cfcname] [nvarchar](50) NULL,
	[lastevent] [nvarchar](50) NULL,
	[lasteventdate] [datetime] NULL,
	[villname] [nvarchar](50) NULL,
	[expectedDeliveryDate] [datetime] NULL,
	[ruralUrban] [nvarchar](50) NULL,
	[pregnancyOutcome] [nvarchar](50) NULL,
	[pregnancyEndDate] [datetime] NULL,
 CONSTRAINT [PK_participant] PRIMARY KEY CLUSTERED 
(
	[individid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[participant] ([individid], [fname], [jname], [lname], [famcla], [akaname], [gender], [dob], [arrdate], [motherid], [fatherid], [mfname], [mjname], [mlname], [ffname], [fjname], [flname], [mtal], [mtyp], [chheadid], [cfname], [cjname], [clname], [cfcname], [lastevent], [lasteventdate], [villname], [expectedDeliveryDate], [ruralUrban], [pregnancyOutcome], [pregnancyEndDate]) VALUES (N'1-1-1-1', N'James', N'Oduor', N'Otieno', N'Jalolwe', N'Jimmy Jammer', N'M', CAST(0x0000771000000000 AS DateTime), CAST(0x00008EAC00000000 AS DateTime), N'12345', N'67890', N'Jane', N'Auma', N'Ber', N'Kenneth Matsumoto', N'Osiemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'EXT', CAST(0x0000A16200000000 AS DateTime), N'Kondele', CAST(0x0000A1D700000000 AS DateTime), NULL, NULL, NULL)
/****** Object:  View [dbo].[oec_view]    Script Date: 02/12/2013 11:31:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[oec_view]
AS
SELECT     dbo.participant.*
FROM         dbo.participant
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "participant"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'oec_view'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'oec_view'
GO
/****** Object:  UserDefinedFunction [dbo].[getMembersinIndividualHousehold]    Script Date: 02/12/2013 11:31:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getMembersinIndividualHousehold]
(
	@hdssId VARCHAR(50)
)
RETURNS TABLE
AS
RETURN (SELECT * FROM dbo.oec_view WHERE individid = @hdssId)
GO
