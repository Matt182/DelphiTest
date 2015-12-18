object Form1: TForm1
  Left = 260
  Top = 193
  Width = 1103
  Height = 436
  Caption = #1056#1077#1096#1077#1085#1080#1077' '#1082#1074#1072#1076#1088#1072#1090#1085#1086#1075#1086' '#1091#1088#1072#1074#1085#1077#1085#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 37
  object pgc1: TPageControl
    Left = 8
    Top = 8
    Width = 1073
    Height = 385
    ActivePage = ts1
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'ts1'
      object Label6: TLabel
        Left = 24
        Top = 40
        Width = 37
        Height = 37
        Caption = 'n='
      end
      object btn1: TButton
        Left = 448
        Top = 48
        Width = 129
        Height = 33
        Caption = 'nulls'
        TabOrder = 0
        OnClick = NullsClick
      end
      object MakeM: TButton
        Left = 176
        Top = 48
        Width = 233
        Height = 33
        Caption = 'make matrix'
        TabOrder = 1
        OnClick = MakeMClick
      end
      object dim: TEdit
        Left = 72
        Top = 40
        Width = 81
        Height = 45
        TabOrder = 2
        Text = '3'
      end
    end
    object ts2: TTabSheet
      Caption = 'ts2'
      ImageIndex = 1
      object Chart1: TChart
        Left = 184
        Top = 32
        Width = 649
        Height = 281
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'TChart')
        TabOrder = 0
        object Series1: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = True
          SeriesColor = clRed
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
    end
  end
end
