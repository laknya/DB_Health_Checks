/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2014 (12.0.5540)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [DBAMaint]
GO
/****** Object:  Table [dbo].[Ad hoc Queries]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ad hoc Queries](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[QueryText] [nvarchar](max) NULL,
	[cacheobjtype] [nvarchar](50) NULL,
	[objtype] [nvarchar](20) NULL,
	[Plan Size in KB] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Avg Task Counts]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avg Task Counts](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Avg Task Count] [int] NULL,
	[Avg Work Queue Count] [bigint] NULL,
	[Avg Runnable Task Count] [int] NULL,
	[Avg Pending DiskIO Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bad NC Indexes]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bad NC Indexes](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Table Name] [nvarchar](250) NULL,
	[Index Name] [sysname] NULL,
	[index_id] [int] NULL,
	[is_disabled] [bit] NULL,
	[is_hypothetical] [bit] NULL,
	[has_filter] [bit] NULL,
	[fill_factor] [tinyint] NULL,
	[Total Writes] [bigint] NULL,
	[Total Reads] [bigint] NULL,
	[Difference] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BPE Configuration]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BPE Configuration](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[path] [nvarchar](500) NULL,
	[state_description] [nvarchar](100) NULL,
	[current_size_in_kb] [bigint] NULL,
	[Size (GB)] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buffer Usage]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buffer Usage](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Object Name] [nvarchar](250) NULL,
	[index_id] [int] NULL,
	[Buffer size(MB)] [decimal](10, 2) NULL,
	[BufferCount] [int] NULL,
	[Row Count] [bigint] NULL,
	[Compression Type] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Configuration Values]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configuration Values](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[name] [nvarchar](100) NULL,
	[value] [sql_variant] NULL,
	[value_in_use] [sql_variant] NULL,
	[minimum] [sql_variant] NULL,
	[maximum] [sql_variant] NULL,
	[description] [nvarchar](500) NULL,
	[is_dynamic] [bit] NULL,
	[is_advanced] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Connection Counts by IP Address]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Connection Counts by IP Address](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[client_net_address] [varchar](100) NULL,
	[program_name] [nvarchar](250) NULL,
	[host_name] [nvarchar](250) NULL,
	[login_name] [nvarchar](250) NULL,
	[connection count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPU Usage by Database]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPU Usage by Database](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[CPU Rank] [bigint] NULL,
	[Database Name] [nvarchar](250) NULL,
	[CPU Time (ms)] [bigint] NULL,
	[CPU Percent] [decimal](5, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPU Utilization History]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPU Utilization History](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[SQL Server Process CPU Utilization] [int] NULL,
	[System Idle Process] [int] NULL,
	[Other Process CPU Utilization] [int] NULL,
	[Event Time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Database Filenames and Paths]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Database Filenames and Paths](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Database Name] [nvarchar](250) NULL,
	[file_id] [int] NULL,
	[name] [sysname] NULL,
	[physical_name] [nvarchar](300) NULL,
	[type_desc] [nvarchar](100) NULL,
	[state_desc] [nvarchar](100) NULL,
	[is_percent_growth] [bit] NULL,
	[growth] [int] NULL,
	[Growth in MB] [bigint] NULL,
	[Total Size in MB] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Database Properties]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Database Properties](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Database Name] [sysname] NULL,
	[Recovery Model] [nvarchar](100) NULL,
	[state_desc] [nvarchar](100) NULL,
	[containment_desc] [nvarchar](100) NULL,
	[Log Reuse Wait Description] [nvarchar](100) NULL,
	[Log Size (MB)] [decimal](18, 2) NULL,
	[Log Used (MB)] [decimal](18, 2) NULL,
	[Log Used %] [decimal](22, 2) NULL,
	[DB Compatibility Level] [tinyint] NULL,
	[Page Verify Option] [nvarchar](100) NULL,
	[is_auto_create_stats_on] [bit] NULL,
	[is_auto_update_stats_on] [bit] NULL,
	[is_auto_update_stats_async_on] [bit] NULL,
	[is_parameterization_forced] [bit] NULL,
	[snapshot_isolation_state_desc] [nvarchar](100) NULL,
	[is_read_committed_snapshot_on] [bit] NULL,
	[is_auto_close_on] [bit] NULL,
	[is_auto_shrink_on] [bit] NULL,
	[target_recovery_time_in_seconds] [int] NULL,
	[is_cdc_enabled] [bit] NULL,
	[is_published] [bit] NULL,
	[is_distributor] [bit] NULL,
	[is_encrypted] [bit] NULL,
	[group_database_id] [uniqueidentifier] NULL,
	[replica_id] [uniqueidentifier] NULL,
	[is_memory_optimized_elevate_to_snapshot_on] [bit] NULL,
	[delayed_durability_desc] [nvarchar](100) NULL,
	[is_auto_create_stats_incremental_on] [bit] NULL,
	[encryption_state] [int] NULL,
	[percent_complete] [real] NULL,
	[key_algorithm] [nvarchar](250) NULL,
	[key_length] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detect Blocking]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detect Blocking](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[lock type] [nvarchar](100) NULL,
	[database] [nvarchar](250) NULL,
	[blk object] [bigint] NULL,
	[lock req] [nvarchar](100) NULL,
	[waiter sid] [int] NULL,
	[wait time] [bigint] NULL,
	[waiter_batch] [nvarchar](max) NULL,
	[waiter_stmt] [nvarchar](max) NULL,
	[blocker sid] [smallint] NULL,
	[blocker_batch] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drive Level Latency]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drive Level Latency](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Drive] [nvarchar](2) NULL,
	[Volume Mount Point] [nvarchar](256) NULL,
	[Read Latency] [bigint] NULL,
	[Write Latency] [bigint] NULL,
	[Overall Latency] [bigint] NULL,
	[Avg Bytes/Read] [bigint] NULL,
	[Avg Bytes/Write] [bigint] NULL,
	[Avg Bytes/Transfer] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File Sizes and Space]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File Sizes and Space](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[File Name] [sysname] NULL,
	[Physical Name] [nvarchar](300) NULL,
	[Total Size in MB] [decimal](15, 2) NULL,
	[Available Space In MB] [decimal](15, 2) NULL,
	[file_id] [int] NULL,
	[Filegroup Name] [sysname] NULL,
	[is_percent_growth] [bit] NULL,
	[growth] [int] NULL,
	[is_default] [bit] NULL,
	[is_read_only] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hardware Info]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hardware Info](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Logical CPU Count] [int] NULL,
	[scheduler_count] [int] NULL,
	[Hyperthread Ratio] [int] NULL,
	[Physical CPU Count] [int] NULL,
	[Physical Memory (MB)] [bigint] NULL,
	[Committed Memory (MB)] [bigint] NULL,
	[Committed Target Memory (MB)] [bigint] NULL,
	[Max Workers Count] [int] NULL,
	[Affinity Type] [nvarchar](100) NULL,
	[SQL Server Start Time] [datetime] NULL,
	[Virtual Machine Type] [nvarchar](60) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HC_Audit]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HC_Audit](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[INSERT_FAILURE] [nvarchar](200) NULL,
	[Error] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index Fragmentation]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index Fragmentation](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Database Name] [nvarchar](250) NULL,
	[Schema Name] [nvarchar](250) NULL,
	[Object Name] [nvarchar](250) NULL,
	[Index Name] [sysname] NULL,
	[index_id] [int] NULL,
	[index_type_desc] [nvarchar](100) NULL,
	[avg_fragmentation_in_percent] [float] NULL,
	[fragment_count] [bigint] NULL,
	[page_count] [bigint] NULL,
	[fill_factor] [tinyint] NULL,
	[has_filter] [bit] NULL,
	[filter_definition] [nvarchar](max) NULL,
	[allow_page_locks] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Input Buffer]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Input Buffer](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[session_id] [smallint] NULL,
	[Database Name] [nvarchar](250) NULL,
	[login_time] [datetime] NULL,
	[cpu_time] [int] NULL,
	[logical_reads] [bigint] NULL,
	[status] [nvarchar](30) NULL,
	[Input Buffer] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IO Stalls by File]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IO Stalls by File](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Database Name] [nvarchar](250) NULL,
	[avg_read_stall_ms] [numeric](10, 1) NULL,
	[avg_write_stall_ms] [numeric](10, 1) NULL,
	[avg_io_stall_ms] [numeric](10, 1) NULL,
	[File Size (MB)] [decimal](18, 2) NULL,
	[physical_name] [nvarchar](300) NULL,
	[type_desc] [nvarchar](100) NULL,
	[io_stall_read_ms] [bigint] NULL,
	[num_of_reads] [bigint] NULL,
	[io_stall_write_ms] [bigint] NULL,
	[num_of_writes] [bigint] NULL,
	[io_stalls] [bigint] NULL,
	[total_io] [bigint] NULL,
	[Resource Governor Total Read IO Latency (ms)] [bigint] NULL,
	[Resource Governor Total Write IO Latency (ms)] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IO Stats By File]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IO Stats By File](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Database Name] [nvarchar](250) NULL,
	[Logical Name] [sysname] NULL,
	[file_id] [smallint] NULL,
	[type_desc] [nvarchar](100) NULL,
	[Physical Name] [nvarchar](300) NULL,
	[Size on Disk (MB)] [decimal](10, 2) NULL,
	[num_of_reads] [bigint] NULL,
	[num_of_writes] [bigint] NULL,
	[io_stall_read_ms] [bigint] NULL,
	[io_stall_write_ms] [bigint] NULL,
	[IO Stall Reads Pct] [decimal](10, 1) NULL,
	[IO Stall Writes Pct] [decimal](10, 1) NULL,
	[Writes + Reads] [bigint] NULL,
	[MB Read] [decimal](10, 2) NULL,
	[MB Written] [decimal](10, 2) NULL,
	[# Reads Pct] [decimal](10, 1) NULL,
	[# Write Pct] [decimal](10, 1) NULL,
	[Read Bytes Pct] [decimal](10, 1) NULL,
	[Written Bytes Pct] [decimal](10, 1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IO Usage By Database]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IO Usage By Database](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[I/O Rank] [bigint] NULL,
	[Database Name] [nvarchar](250) NULL,
	[Total I/O (MB)] [decimal](12, 2) NULL,
	[I/O Percent] [decimal](5, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IO Warnings]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IO Warnings](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[LogDate] [datetime] NULL,
	[ProcessInfo] [sysname] NULL,
	[LogText] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lock Waits]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lock Waits](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[table_name] [sysname] NULL,
	[index_name] [sysname] NULL,
	[index_id] [int] NULL,
	[partition_number] [int] NULL,
	[total_row_lock_waits] [bigint] NULL,
	[total_row_lock_wait_in_ms] [bigint] NULL,
	[total_page_lock_waits] [bigint] NULL,
	[total_page_lock_wait_in_ms] [bigint] NULL,
	[total_lock_wait_in_ms] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log Space Usage]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log Space Usage](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Database Name] [nvarchar](250) NULL,
	[Recovery Model] [nvarchar](100) NULL,
	[Total Log Space (MB)] [decimal](10, 2) NULL,
	[Used Log Space (MB)] [decimal](10, 2) NULL,
	[Used Log Space %] [decimal](10, 2) NULL,
	[Used Log Space Since Last Backup (MB)] [decimal](10, 2) NULL,
	[log_reuse_wait_desc] [nvarchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Memory Clerk Usage]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memory Clerk Usage](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Memory Clerk Type] [nvarchar](100) NULL,
	[Memory Usage (MB)] [decimal](15, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Memory Dump Info]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memory Dump Info](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[filename] [nvarchar](256) NULL,
	[creation_time] [datetimeoffset](7) NULL,
	[Size (MB)] [numeric](29, 9) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Memory Grants Pending]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Memory Grants Pending](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Server Name] [nvarchar](250) NULL,
	[object_name] [nchar](128) NULL,
	[Memory Grants Pending] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Missing Index Warnings]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Missing Index Warnings](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[ObjectName] [nvarchar](250) NULL,
	[objtype] [nvarchar](20) NULL,
	[usecounts] [int] NULL,
	[size_in_bytes] [int] NULL,
	[query_plan] [xml] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Missing Indexes]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Missing Indexes](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[index_advantage] [decimal](18, 2) NULL,
	[last_user_seek] [datetime] NULL,
	[Database.Schema.Table] [nvarchar](4000) NULL,
	[equality_columns] [nvarchar](4000) NULL,
	[inequality_columns] [nvarchar](4000) NULL,
	[included_columns] [nvarchar](4000) NULL,
	[unique_compiles] [bigint] NULL,
	[user_seeks] [bigint] NULL,
	[avg_total_user_cost] [float] NULL,
	[avg_user_impact] [float] NULL,
	[Table Name] [nvarchar](250) NULL,
	[Table Rows] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Missing Indexes All Databases]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Missing Indexes All Databases](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[index_advantage] [decimal](18, 2) NULL,
	[last_user_seek] [datetime] NULL,
	[Database.Schema.Table] [nvarchar](4000) NULL,
	[equality_columns] [nvarchar](4000) NULL,
	[inequality_columns] [nvarchar](4000) NULL,
	[included_columns] [nvarchar](4000) NULL,
	[unique_compiles] [bigint] NULL,
	[user_seeks] [bigint] NULL,
	[avg_total_user_cost] [float] NULL,
	[avg_user_impact] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Overall Index Usage - Reads]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Overall Index Usage - Reads](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[ObjectName] [nvarchar](250) NULL,
	[IndexName] [sysname] NULL,
	[index_id] [int] NULL,
	[user_seeks] [bigint] NULL,
	[user_scans] [bigint] NULL,
	[user_lookups] [bigint] NULL,
	[Total Reads] [bigint] NULL,
	[Writes] [bigint] NULL,
	[Index Type] [nvarchar](100) NULL,
	[Fill Factor] [tinyint] NULL,
	[has_filter] [bit] NULL,
	[filter_definition] [nvarchar](max) NULL,
	[last_user_scan] [datetime] NULL,
	[last_user_lookup] [datetime] NULL,
	[last_user_seek] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Overall Index Usage - Writes]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Overall Index Usage - Writes](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[ObjectName] [nvarchar](250) NULL,
	[IndexName] [sysname] NULL,
	[index_id] [int] NULL,
	[Writes] [bigint] NULL,
	[Total Reads] [bigint] NULL,
	[Index Type] [nvarchar](100) NULL,
	[Fill Factor] [tinyint] NULL,
	[has_filter] [bit] NULL,
	[filter_definition] [nvarchar](max) NULL,
	[last_system_update] [datetime] NULL,
	[last_user_update] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PLE by NUMA Node]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLE by NUMA Node](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Server Name] [nvarchar](250) NULL,
	[object_name] [nchar](128) NULL,
	[instance_name] [nchar](128) NULL,
	[Page Life Expectancy] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process Memory]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process Memory](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[SQL Server Memory Usage (MB)] [bigint] NULL,
	[large_page_allocations_kb] [bigint] NULL,
	[locked_page_allocations_kb] [bigint] NULL,
	[page_fault_count] [bigint] NULL,
	[memory_utilization_percentage] [int] NULL,
	[available_commit_limit_kb] [bigint] NULL,
	[process_physical_memory_low] [bit] NULL,
	[process_virtual_memory_low] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query Execution Counts]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query Execution Counts](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Short Query Text] [nvarchar](max) NULL,
	[Execution Count] [bigint] NULL,
	[Total Logical Reads] [bigint] NULL,
	[Avg Logical Reads] [bigint] NULL,
	[Total Worker Time] [bigint] NULL,
	[Avg Worker Time] [bigint] NULL,
	[Total Elapsed Time] [bigint] NULL,
	[Avg Elapsed Time] [bigint] NULL,
	[Creation Time] [datetime] NULL,
	[Complete Query Text] [nvarchar](max) NULL,
	[Query Plan] [xml] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recent Full Backups]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recent Full Backups](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[machine_name] [nvarchar](250) NULL,
	[server_name] [nvarchar](250) NULL,
	[Database Name] [nvarchar](250) NULL,
	[recovery_model] [nvarchar](100) NULL,
	[Uncompressed Backup Size (MB)] [bigint] NULL,
	[Compressed Backup Size (MB)] [bigint] NULL,
	[Compression Ratio] [numeric](20, 2) NULL,
	[has_backup_checksums] [bit] NULL,
	[is_copy_only] [bit] NULL,
	[encryptor_type] [nvarchar](32) NULL,
	[Backup Elapsed Time (sec)] [int] NULL,
	[Backup Finish Date] [datetime] NULL,
	[Backup Location] [nvarchar](300) NULL,
	[physical_block_size] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Server Properties]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Server Properties](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[MachineName] [sql_variant] NULL,
	[ServerName] [sql_variant] NULL,
	[Instance] [sql_variant] NULL,
	[IsClustered] [sql_variant] NULL,
	[ComputerNamePhysicalNetBIOS] [sql_variant] NULL,
	[Edition] [sql_variant] NULL,
	[ProductLevel] [sql_variant] NULL,
	[ProductUpdateLevel] [sql_variant] NULL,
	[ProductVersion] [sql_variant] NULL,
	[ProductMajorVersion] [sql_variant] NULL,
	[ProductMinorVersion] [sql_variant] NULL,
	[ProductBuild] [sql_variant] NULL,
	[ProductBuildType] [sql_variant] NULL,
	[ProductUpdateReference] [sql_variant] NULL,
	[ProcessID] [sql_variant] NULL,
	[Collation] [sql_variant] NULL,
	[IsFullTextInstalled] [sql_variant] NULL,
	[IsIntegratedSecurityOnly] [sql_variant] NULL,
	[FilestreamConfiguredLevel] [sql_variant] NULL,
	[IsHadrEnabled] [sql_variant] NULL,
	[HadrManagerStatus] [sql_variant] NULL,
	[InstanceDefaultDataPath] [sql_variant] NULL,
	[InstanceDefaultLogPath] [sql_variant] NULL,
	[Build CLR Version] [sql_variant] NULL,
	[IsXTPSupported] [sql_variant] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP Avg Elapsed Time]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP Avg Elapsed Time](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[SP Name] [sysname] NULL,
	[min_elapsed_time] [bigint] NULL,
	[avg_elapsed_time] [bigint] NULL,
	[max_elapsed_time] [bigint] NULL,
	[last_elapsed_time] [bigint] NULL,
	[total_elapsed_time] [bigint] NULL,
	[execution_count] [bigint] NULL,
	[Calls/Minute] [bigint] NULL,
	[AvgWorkerTime] [bigint] NULL,
	[TotalWorkerTime] [bigint] NULL,
	[cached_time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP Execution Counts]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP Execution Counts](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[SP Name] [sysname] NULL,
	[execution_count] [bigint] NULL,
	[Calls/Minute] [bigint] NULL,
	[AvgWorkerTime] [bigint] NULL,
	[TotalWorkerTime] [bigint] NULL,
	[total_elapsed_time] [bigint] NULL,
	[avg_elapsed_time] [bigint] NULL,
	[cached_time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP Logical Reads]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP Logical Reads](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[SP Name] [sysname] NULL,
	[TotalLogicalReads] [bigint] NULL,
	[AvgLogicalReads] [bigint] NULL,
	[execution_count] [bigint] NULL,
	[Calls/Minute] [bigint] NULL,
	[total_elapsed_time] [bigint] NULL,
	[avg_elapsed_time] [bigint] NULL,
	[cached_time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP Logical Writes]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP Logical Writes](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[SP Name] [sysname] NULL,
	[TotalLogicalWrites] [bigint] NULL,
	[AvgLogicalWrites] [bigint] NULL,
	[execution_count] [bigint] NULL,
	[Calls/Minute] [bigint] NULL,
	[total_elapsed_time] [bigint] NULL,
	[avg_elapsed_time] [bigint] NULL,
	[cached_time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP Physical Reads]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP Physical Reads](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[SP Name] [sysname] NULL,
	[TotalPhysicalReads] [bigint] NULL,
	[AvgPhysicalReads] [bigint] NULL,
	[execution_count] [bigint] NULL,
	[total_logical_reads] [bigint] NULL,
	[total_elapsed_time] [bigint] NULL,
	[avg_elapsed_time] [bigint] NULL,
	[cached_time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP Worker Time]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP Worker Time](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[SP Name] [sysname] NULL,
	[TotalWorkerTime] [bigint] NULL,
	[AvgWorkerTime] [bigint] NULL,
	[execution_count] [bigint] NULL,
	[Calls/Minute] [bigint] NULL,
	[total_elapsed_time] [bigint] NULL,
	[avg_elapsed_time] [bigint] NULL,
	[cached_time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL Server Agent Alerts]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQL Server Agent Alerts](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[name] [sysname] NULL,
	[event_source] [nvarchar](100) NULL,
	[message_id] [int] NULL,
	[severity] [int] NULL,
	[enabled] [tinyint] NULL,
	[has_notification] [int] NULL,
	[delay_between_responses] [int] NULL,
	[occurrence_count] [int] NULL,
	[last_occurrence_date] [int] NULL,
	[last_occurrence_time] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL Server Agent Jobs]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQL Server Agent Jobs](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Job Name] [sysname] NULL,
	[Job Description] [nvarchar](512) NULL,
	[Job Owner] [nvarchar](250) NULL,
	[Date Created] [datetime] NULL,
	[Job Enabled] [tinyint] NULL,
	[notify_email_operator_id] [int] NULL,
	[notify_level_email] [int] NULL,
	[CategoryName] [sysname] NULL,
	[Sched Enabled] [int] NULL,
	[next_run_date] [int] NULL,
	[next_run_time] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL Server NUMA Info]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQL Server NUMA Info](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[node_id] [smallint] NULL,
	[node_state_desc] [nvarchar](256) NULL,
	[memory_node_id] [smallint] NULL,
	[processor_group] [smallint] NULL,
	[online_scheduler_count] [smallint] NULL,
	[active_worker_count] [int] NULL,
	[avg_load_balance] [int] NULL,
	[resource_monitor_state] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQL Server Services Info]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQL Server Services Info](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[servicename] [nvarchar](256) NULL,
	[process_id] [int] NULL,
	[startup_type_desc] [nvarchar](256) NULL,
	[status_desc] [nvarchar](256) NULL,
	[last_startup_time] [datetimeoffset](7) NULL,
	[service_account] [nvarchar](256) NULL,
	[is_clustered] [nvarchar](1) NULL,
	[cluster_nodename] [nvarchar](256) NULL,
	[filename] [nvarchar](256) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statistics Update]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistics Update](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Object Name] [nvarchar](257) NULL,
	[Object Type] [nvarchar](100) NULL,
	[Index Name] [sysname] NULL,
	[Statistics Date] [datetime] NULL,
	[auto_created] [bit] NULL,
	[no_recompute] [bit] NULL,
	[user_created] [bit] NULL,
	[is_incremental] [bit] NULL,
	[is_temporary] [bit] NULL,
	[row_count] [bigint] NULL,
	[used_page_count] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suspect Pages]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suspect Pages](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Database Name] [nvarchar](250) NULL,
	[file_id] [int] NULL,
	[page_id] [bigint] NULL,
	[event_type] [int] NULL,
	[error_count] [int] NULL,
	[last_update_date] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[System Memory]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[System Memory](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Physical Memory (MB)] [bigint] NULL,
	[Available Memory (MB)] [bigint] NULL,
	[Total Page File (MB)] [bigint] NULL,
	[Available Page File (MB)] [bigint] NULL,
	[System Cache (MB)] [bigint] NULL,
	[System Memory State] [nvarchar](256) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table Properties]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table Properties](
	[ObjectName] [nvarchar](250) NULL,
	[Table Rows] [bigint] NULL,
	[index_id] [int] NULL,
	[Index Data Compression] [nvarchar](100) NULL,
	[create_date] [datetime] NULL,
	[lock_on_bulk_load] [bit] NULL,
	[is_replicated] [bit] NULL,
	[has_replication_filter] [bit] NULL,
	[is_tracked_by_cdc] [bit] NULL,
	[lock_escalation_desc] [nvarchar](100) NULL,
	[is_filetable] [bit] NULL,
	[is_memory_optimized] [bit] NULL,
	[durability_desc] [nvarchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table Sizes]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table Sizes](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[ObjectName] [nvarchar](250) NULL,
	[RowCount] [bigint] NULL,
	[CompressionType] [nvarchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Top Avg Elapsed Time Queries]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top Avg Elapsed Time Queries](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Database Name] [nvarchar](250) NULL,
	[Short Query Text] [nvarchar](max) NULL,
	[Avg Elapsed Time] [bigint] NULL,
	[min_elapsed_time] [bigint] NULL,
	[max_elapsed_time] [bigint] NULL,
	[last_elapsed_time] [bigint] NULL,
	[Execution Count] [bigint] NULL,
	[Avg Logical Reads] [bigint] NULL,
	[Avg Physical Reads] [bigint] NULL,
	[Avg Worker Time] [bigint] NULL,
	[Creation Time] [datetime] NULL,
	[Query Plan] [xml] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Top IO Statements]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top IO Statements](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[SP Name] [nvarchar](250) NULL,
	[Avg IO] [bigint] NULL,
	[Execution Count] [bigint] NULL,
	[Query Text] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Top Logical Reads Queries]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top Logical Reads Queries](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Database Name] [nvarchar](250) NULL,
	[Short Query Text] [nvarchar](max) NULL,
	[Total Logical Reads] [bigint] NULL,
	[Min Logical Reads] [bigint] NULL,
	[Avg Logical Reads] [bigint] NULL,
	[Max Logical Reads] [bigint] NULL,
	[Min Worker Time] [bigint] NULL,
	[Avg Worker Time] [bigint] NULL,
	[Max Worker Time] [bigint] NULL,
	[Min Elapsed Time] [bigint] NULL,
	[Avg Elapsed Time] [bigint] NULL,
	[Max Elapsed Time] [bigint] NULL,
	[Execution Count] [bigint] NULL,
	[Creation Time] [datetime] NULL,
	[Complete Query Text] [nvarchar](max) NULL,
	[Query Plan] [xml] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Top Waits]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top Waits](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[WaitType] [nvarchar](100) NULL,
	[Wait_Sec] [decimal](16, 2) NULL,
	[Resource_Sec] [decimal](16, 2) NULL,
	[Signal_Sec] [decimal](16, 2) NULL,
	[Wait Count] [bigint] NULL,
	[Wait Percentage] [decimal](5, 2) NULL,
	[AvgWait_Sec] [decimal](16, 4) NULL,
	[AvgRes_Sec] [decimal](16, 4) NULL,
	[AvgSig_Sec] [decimal](16, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Top Worker Time Queries]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top Worker Time Queries](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Database Name] [nvarchar](250) NULL,
	[Short Query Text] [nvarchar](max) NULL,
	[Total Worker Time] [bigint] NULL,
	[Min Worker Time] [bigint] NULL,
	[Avg Worker Time] [bigint] NULL,
	[Max Worker Time] [bigint] NULL,
	[Min Elapsed Time] [bigint] NULL,
	[Avg Elapsed Time] [bigint] NULL,
	[Max Elapsed Time] [bigint] NULL,
	[Min Logical Reads] [bigint] NULL,
	[Avg Logical Reads] [bigint] NULL,
	[Max Logical Reads] [bigint] NULL,
	[Execution Count] [bigint] NULL,
	[Creation Time] [datetime] NULL,
	[Query Text] [nvarchar](max) NULL,
	[Query Plan] [xml] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Total Buffer Usage by Database]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Total Buffer Usage by Database](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Buffer Pool Rank] [bigint] NULL,
	[Database Name] [nvarchar](250) NULL,
	[Cached Size (MB)] [decimal](10, 2) NULL,
	[Buffer Pool Percent] [decimal](5, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Version Info]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Version Info](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[SQL Server and OS Version Info] [nvarchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VLF Counts]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VLF Counts](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[DatabaseName] [sysname] NULL,
	[VLFCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volatile Indexes]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volatile Indexes](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Object Name] [sysname] NULL,
	[object_id] [int] NULL,
	[type_desc] [nvarchar](100) NULL,
	[Statistics Name] [nvarchar](250) NULL,
	[stats_id] [int] NULL,
	[no_recompute] [bit] NULL,
	[auto_created] [bit] NULL,
	[is_incremental] [bit] NULL,
	[is_temporary] [bit] NULL,
	[modification_counter] [bigint] NULL,
	[rows] [bigint] NULL,
	[rows_sampled] [bigint] NULL,
	[last_updated] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volume Info]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volume Info](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[volume_mount_point] [nvarchar](256) NULL,
	[file_system_type] [nvarchar](256) NULL,
	[logical_volume_name] [nvarchar](256) NULL,
	[Total Size (GB)] [decimal](18, 2) NULL,
	[Available Size (GB)] [decimal](18, 2) NULL,
	[Space Free %] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Windows Info]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Windows Info](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[windows_release] [nvarchar](256) NULL,
	[windows_service_pack_level] [nvarchar](256) NULL,
	[windows_sku] [int] NULL,
	[os_language_version] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XTP Index Usage]    Script Date: 27/10/2017 12:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XTP Index Usage](
	[Data_Capture_Date] [datetime] NULL,
	[SQL_SERVER_NAME] [nvarchar](50) NULL,
	[SQL_INSTANCE_NAME] [nvarchar](100) NULL,
	[Run_Frequency] [int] NULL,
	[Object Name] [nvarchar](250) NULL,
	[index_id] [int] NULL,
	[Index Name] [sysname] NULL,
	[type_desc] [nvarchar](100) NULL,
	[scans_started] [bigint] NULL,
	[scans_retries] [bigint] NULL,
	[rows_touched] [bigint] NULL,
	[rows_returned] [bigint] NOT NULL
) ON [PRIMARY]
GO
