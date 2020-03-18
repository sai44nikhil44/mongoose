DECLARE @FormID INT
DECLARE @DeletedFormID INT
DECLARE @Sequence INT
SET @Sequence = 0
SELECT @FormID=ID FROM Forms WHERE Name = N'firstform' AND ScopeType = 1
SET    @DeletedFormID = @FormID
DELETE FROM Forms WHERE ID = @FormID AND ScopeType = 1
DELETE FROM FormComponents WHERE FormID = @FormID
DELETE FROM ActiveXComponentProperties WHERE FormID = @FormID
DELETE FROM FormEventHandlers WHERE FormID = @FormID
DELETE FROM Variables WHERE FormID = @FormID
DELETE FROM ActiveXScriptLines WHERE ScriptName = N'firstform' AND ScopeType = 1
DELETE FROM ActiveXScripts WHERE Name = N'firstform' AND ScopeType = 1
DELETE FROM FormComponentDragDropEvents WHERE FormID = @FormID
DELETE FROM DerivedFormOverrides WHERE FormID = @FormID
INSERT INTO [Forms] (
  [ScopeType], [ScopeName], [Component], [Name], [SubComponent], [Type], [Caption], 
  [PrimaryDataSource], 
  [StandardOperations], [TopPos], [LeftPos], [Height], [Width], [IconFileName], [HelpFileName], [HelpContextID], [Flags], [LockedBy], 
  [FilterFormSpec], [PaneZeroSize], [Description], [MasterDeviceID], [BaseFormName], [LayoutAttributes] ) 
VALUES ( 
  1, N'[NULL]', NULL, N'firstform', NULL, 0, NULL, 
  N'firstform(OBJNAME(ofirstform))', 
  1019, CAST('0' AS float), CAST('0' AS float), CAST('6' AS float), CAST('50' AS float), NULL, NULL, -1, 1048778, NULL, 
  NULL, N'11', NULL, 0, NULL, NULL)
SELECT @FormID= @@IDENTITY
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID, N'firstEdit', -1, 
  1, 1, CAST('1' AS float), CAST('24' AS float), CAST('1.3' AS float), CAST('0' AS float), CAST('10' AS float), N'C(firstStatic)', 
  NULL, 
  NULL, 0, N'object.first', 
  1, NULL, NULL, NULL, NULL, NULL, 
  NULL, 
  1, NULL, 0, 0, NULL, NULL, NULL, 0, N'StdDefault', 
  NULL, NULL, NULL, 
  N'0', NULL, NULL, NULL, NULL, 
  NULL, NULL, 
  NULL, NULL, NULL )
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID, N'firstGridCol', -1, 
  1, 15, CAST('0' AS float), CAST('0' AS float), CAST('7' AS float), CAST('0' AS float), CAST('10' AS float), NULL, 
  NULL, 
  N'FormCollectionGrid', 0, N'object.first', 
  1, NULL, NULL, NULL, NULL, NULL, 
  NULL, 
  0, NULL, 0, 0, NULL, NULL, NULL, 0, N'StdDefault', 
  NULL, NULL, NULL, 
  N'0', NULL, NULL, NULL, NULL, 
  NULL, NULL, 
  NULL, NULL, NULL )
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID, N'firstStatic', -1, 
  0, 0, CAST('1.1000000000000001' AS float), CAST('3' AS float), CAST('1' AS float), CAST('0' AS float), CAST('20' AS float), NULL, 
  NULL, 
  NULL, 0, NULL, 
  0, NULL, NULL, NULL, NULL, NULL, 
  NULL, 
  1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 
  NULL, NULL, NULL, 
  N'0', NULL, NULL, NULL, NULL, 
  NULL, N'JUSTIFY(R)', 
  NULL, NULL, NULL )
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID, N'FormCollectionGrid', -1, 
  0, 14, CAST('0' AS float), CAST('0' AS float), CAST('6' AS float), CAST('0' AS float), CAST('20' AS float), NULL, 
  NULL, 
  NULL, 0, N'objects', 
  3, NULL, NULL, NULL, NULL, NULL, 
  NULL, 
  384, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 
  NULL, NULL, NULL, 
  N'0', NULL, NULL, NULL, NULL, 
  NULL, NULL, 
  NULL, NULL, NULL )
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID, N'secondEdit', -1, 
  3, 1, CAST('2.5' AS float), CAST('24' AS float), CAST('1.3' AS float), CAST('0' AS float), CAST('10' AS float), N'C(secondStatic)', 
  NULL, 
  NULL, 0, N'object.second', 
  1, NULL, NULL, NULL, NULL, NULL, 
  NULL, 
  1, NULL, 0, 0, NULL, NULL, NULL, 0, N'StdDefault', 
  NULL, NULL, NULL, 
  N'0', NULL, NULL, NULL, NULL, 
  NULL, NULL, 
  NULL, NULL, NULL )
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID, N'secondGridCol', -1, 
  2, 15, CAST('0' AS float), CAST('0' AS float), CAST('7' AS float), CAST('0' AS float), CAST('10' AS float), NULL, 
  NULL, 
  N'FormCollectionGrid', 1, N'object.second', 
  1, NULL, NULL, NULL, NULL, NULL, 
  NULL, 
  0, NULL, 0, 0, NULL, NULL, NULL, 0, N'StdDefault', 
  NULL, NULL, NULL, 
  N'0', NULL, NULL, NULL, NULL, 
  NULL, NULL, 
  NULL, NULL, NULL )
INSERT INTO FormComponents (
  [FormID], [Name], [DeviceID], 
  [TabOrder], [Type], [TopPos], [LeftPos], [Height], [ListHeight], [Width], [Caption], 
  [Validators], 
  [ContainerName], [ContainerSequence], [DataSource], 
  [Binding], [EventToGenerate], [SelectionEventToGenerate], [LoseFocusEventToGenerate], [GainFocusEventToGenerate], [RadioButtonSelectedValue], 
  [ComboListSource], 
  [Flags], [DefaultData], [ReadOnly], [Hidden], [BitmapFileName], [HelpString], [HelpFileName], [HelpContextID], [MenuName], 
  [Format], [FindFromSpec], [MaintainFromSpec], 
  [MaxCharacters], [DefaultFrom], [DataType], [ActiveXControlName], [PropertyClassName], 
  [Post301DataType], [Post301Format], 
  [Description], [EffectiveCaption], [LayoutAttributes] )
VALUES (
  @FormID, N'secondStatic', -1, 
  2, 0, CAST('2.6000000000000001' AS float), CAST('3' AS float), CAST('1' AS float), CAST('0' AS float), CAST('20' AS float), NULL, 
  NULL, 
  NULL, 0, NULL, 
  0, NULL, NULL, NULL, NULL, NULL, 
  NULL, 
  1, NULL, 0, 0, NULL, NULL, NULL, 0, NULL, 
  NULL, NULL, NULL, 
  N'0', NULL, NULL, NULL, NULL, 
  NULL, N'JUSTIFY(R)', 
  NULL, NULL, NULL )