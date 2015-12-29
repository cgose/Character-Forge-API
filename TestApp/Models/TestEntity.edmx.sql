
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/24/2015 12:03:26
-- Generated from EDMX file: c:\users\cgose\documents\visual studio 2013\Projects\TestApp\TestApp\Models\TestEntity.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CharacterStatCharacter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CharacterStats] DROP CONSTRAINT [FK_CharacterStatCharacter];
GO
IF OBJECT_ID(N'[dbo].[FK_CharacterStatStat]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CharacterStats] DROP CONSTRAINT [FK_CharacterStatStat];
GO
IF OBJECT_ID(N'[dbo].[FK_CharacterSkillSkill]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CharacterSkills] DROP CONSTRAINT [FK_CharacterSkillSkill];
GO
IF OBJECT_ID(N'[dbo].[FK_CharacterSkillCharacter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CharacterSkills] DROP CONSTRAINT [FK_CharacterSkillCharacter];
GO
IF OBJECT_ID(N'[dbo].[FK_CharacterClassClass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CharacterClasses] DROP CONSTRAINT [FK_CharacterClassClass];
GO
IF OBJECT_ID(N'[dbo].[FK_CharacterClassCharacter]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CharacterClasses] DROP CONSTRAINT [FK_CharacterClassCharacter];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Characters]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Characters];
GO
IF OBJECT_ID(N'[dbo].[Stats]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Stats];
GO
IF OBJECT_ID(N'[dbo].[CharacterStats]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CharacterStats];
GO
IF OBJECT_ID(N'[dbo].[Skills]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Skills];
GO
IF OBJECT_ID(N'[dbo].[CharacterSkills]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CharacterSkills];
GO
IF OBJECT_ID(N'[dbo].[Classes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Classes];
GO
IF OBJECT_ID(N'[dbo].[CharacterClasses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CharacterClasses];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Characters'
CREATE TABLE [dbo].[Characters] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [PlayerName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Stats'
CREATE TABLE [dbo].[Stats] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CharacterStats'
CREATE TABLE [dbo].[CharacterStats] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [CharacterID] int  NOT NULL,
    [StatID] int  NOT NULL,
    [Value] int  NOT NULL,
    [Proficient] bit  NOT NULL
);
GO

-- Creating table 'Skills'
CREATE TABLE [dbo].[Skills] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CharacterSkills'
CREATE TABLE [dbo].[CharacterSkills] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Proficient] bit  NOT NULL,
    [SkillID] int  NOT NULL,
    [CharacterID] int  NOT NULL
);
GO

-- Creating table 'Classes'
CREATE TABLE [dbo].[Classes] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CharacterClasses'
CREATE TABLE [dbo].[CharacterClasses] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ClassID] int  NOT NULL,
    [CharacterID] int  NOT NULL,
    [Level] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Characters'
ALTER TABLE [dbo].[Characters]
ADD CONSTRAINT [PK_Characters]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Stats'
ALTER TABLE [dbo].[Stats]
ADD CONSTRAINT [PK_Stats]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CharacterStats'
ALTER TABLE [dbo].[CharacterStats]
ADD CONSTRAINT [PK_CharacterStats]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Skills'
ALTER TABLE [dbo].[Skills]
ADD CONSTRAINT [PK_Skills]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CharacterSkills'
ALTER TABLE [dbo].[CharacterSkills]
ADD CONSTRAINT [PK_CharacterSkills]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Classes'
ALTER TABLE [dbo].[Classes]
ADD CONSTRAINT [PK_Classes]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CharacterClasses'
ALTER TABLE [dbo].[CharacterClasses]
ADD CONSTRAINT [PK_CharacterClasses]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CharacterID] in table 'CharacterStats'
ALTER TABLE [dbo].[CharacterStats]
ADD CONSTRAINT [FK_CharacterStatCharacter]
    FOREIGN KEY ([CharacterID])
    REFERENCES [dbo].[Characters]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CharacterStatCharacter'
CREATE INDEX [IX_FK_CharacterStatCharacter]
ON [dbo].[CharacterStats]
    ([CharacterID]);
GO

-- Creating foreign key on [StatID] in table 'CharacterStats'
ALTER TABLE [dbo].[CharacterStats]
ADD CONSTRAINT [FK_CharacterStatStat]
    FOREIGN KEY ([StatID])
    REFERENCES [dbo].[Stats]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CharacterStatStat'
CREATE INDEX [IX_FK_CharacterStatStat]
ON [dbo].[CharacterStats]
    ([StatID]);
GO

-- Creating foreign key on [SkillID] in table 'CharacterSkills'
ALTER TABLE [dbo].[CharacterSkills]
ADD CONSTRAINT [FK_CharacterSkillSkill]
    FOREIGN KEY ([SkillID])
    REFERENCES [dbo].[Skills]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CharacterSkillSkill'
CREATE INDEX [IX_FK_CharacterSkillSkill]
ON [dbo].[CharacterSkills]
    ([SkillID]);
GO

-- Creating foreign key on [CharacterID] in table 'CharacterSkills'
ALTER TABLE [dbo].[CharacterSkills]
ADD CONSTRAINT [FK_CharacterSkillCharacter]
    FOREIGN KEY ([CharacterID])
    REFERENCES [dbo].[Characters]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CharacterSkillCharacter'
CREATE INDEX [IX_FK_CharacterSkillCharacter]
ON [dbo].[CharacterSkills]
    ([CharacterID]);
GO

-- Creating foreign key on [ClassID] in table 'CharacterClasses'
ALTER TABLE [dbo].[CharacterClasses]
ADD CONSTRAINT [FK_CharacterClassClass]
    FOREIGN KEY ([ClassID])
    REFERENCES [dbo].[Classes]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CharacterClassClass'
CREATE INDEX [IX_FK_CharacterClassClass]
ON [dbo].[CharacterClasses]
    ([ClassID]);
GO

-- Creating foreign key on [CharacterID] in table 'CharacterClasses'
ALTER TABLE [dbo].[CharacterClasses]
ADD CONSTRAINT [FK_CharacterClassCharacter]
    FOREIGN KEY ([CharacterID])
    REFERENCES [dbo].[Characters]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CharacterClassCharacter'
CREATE INDEX [IX_FK_CharacterClassCharacter]
ON [dbo].[CharacterClasses]
    ([CharacterID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------