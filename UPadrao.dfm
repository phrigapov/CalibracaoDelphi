object frmPadrao: TfrmPadrao
  Left = 0
  Top = 0
  Caption = ':: Agenda de Padr'#245'es ::'
  ClientHeight = 490
  ClientWidth = 896
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgPadroes: TPageControl
    Left = 0
    Top = 40
    Width = 897
    Height = 449
    ActivePage = TabSheet2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    object Janeiro: TTabSheet
      Caption = 'Janeiro'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgJaneiro: TStringGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 412
        BiDiMode = bdLeftToRight
        Color = clWhite
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgJaneiroDblClick
        OnDrawCell = sgJaneiroDrawCell
        OnMouseMove = sgJaneiroMouseMove
        OnSelectCell = sgJaneiroSelectCell
      end
    end
    object Fevereiro: TTabSheet
      Caption = 'Fevereiro'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgFevereiro: TStringGrid
        Left = 0
        Top = 0
        Width = 929
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgFevereiroDblClick
        OnDrawCell = sgFevereiroDrawCell
        OnSelectCell = sgFevereiroSelectCell
      end
    end
    object Marco: TTabSheet
      Caption = 'Mar'#231'o'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgMarco: TStringGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgMarcoDblClick
        OnDrawCell = sgMarcoDrawCell
        OnSelectCell = sgMarcoSelectCell
      end
    end
    object Abril: TTabSheet
      Caption = 'Abril'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgAbril: TStringGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgAbrilDblClick
        OnDrawCell = sgAbrilDrawCell
        OnSelectCell = sgAbrilSelectCell
      end
    end
    object Maio: TTabSheet
      Caption = 'Maio'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgMaio: TStringGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgMaioDblClick
        OnDrawCell = sgMaioDrawCell
        OnSelectCell = sgMaioSelectCell
      end
    end
    object Junho: TTabSheet
      Caption = 'Junho'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgJunho: TStringGrid
        Left = 0
        Top = 0
        Width = 925
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgJunhoDblClick
        OnDrawCell = sgJunhoDrawCell
        OnSelectCell = sgJunhoSelectCell
      end
    end
    object Julho: TTabSheet
      Caption = 'Julho'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgjulho: TStringGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgjulhoDblClick
        OnDrawCell = sgjulhoDrawCell
        OnSelectCell = sgjulhoSelectCell
      end
    end
    object Agosto: TTabSheet
      Caption = 'Agosto'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgAgosto: TStringGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgAgostoDblClick
        OnDrawCell = sgAgostoDrawCell
        OnSelectCell = sgAgostoSelectCell
      end
    end
    object Setembro: TTabSheet
      Caption = 'Setembro'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgSetembro: TStringGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgSetembroDblClick
        OnDrawCell = sgSetembroDrawCell
        OnSelectCell = sgSetembroSelectCell
      end
    end
    object Novembro: TTabSheet
      Caption = 'Outubro'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgOutubro: TStringGrid
        Left = 0
        Top = 0
        Width = 889
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgOutubroDblClick
        OnDrawCell = sgOutubroDrawCell
        OnSelectCell = sgOutubroSelectCell
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Novembro'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object sgNovembro: TStringGrid
        Left = 0
        Top = 0
        Width = 889
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgNovembroDblClick
        OnDrawCell = sgNovembroDrawCell
        OnSelectCell = sgNovembroSelectCell
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dezembro'
      ImageIndex = 11
      object sgDezembro: TStringGrid
        Left = 0
        Top = 0
        Width = 889
        Height = 412
        BiDiMode = bdLeftToRight
        ColCount = 40
        DefaultColWidth = 55
        RowCount = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = sgDezembroDblClick
        OnDrawCell = sgDezembroDrawCell
        OnSelectCell = sgDezembroSelectCell
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 896
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object sbAnterior: TSpeedButton
      Left = 320
      Top = 0
      Width = 41
      Height = 41
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0131
        02013102012F02012B02012802012802012802012B02FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0136020136020136020262
        07026207026C08026407025F07025A06014A05024104012802012802012802FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF013602013602027307038C0A03860A0278
        09027509027209026F08026C08026807026207025A06015106014A05013C0401
        2501012802FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF01360202620703960B039A0C03920B038F0A038C
        0A038F0A03900A03900A03900A038C0A03870A037E0902720902620702550601
        4A05013503012501FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF013C0304760C05A011049F0E039D0C039A0C039A0C039D
        0C039D0C039D0C039E0C039D0C039D0C039D0C03980B03920B03860A02720902
        5A06024F05013C04012802FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF013C03078E1708A31906A11505A012049F0F039E0C039E0C039E
        0C039E0C039E0C039E0C039E0C039E0C039E0C039E0C039D0C039A0C03920B03
        820A026807025206014805012802FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF013602087A160CA6230AA51E08A31A07A11605A012049F10039E0C039E
        0C039E0C0BA4152EB53913AA22039E0C039E0C039E0C039E0C039E0C039D0C03
        980B03860A026807025506014104012802FF00FFFF00FFFF00FFFF00FFFF00FF
        0136020665120EA92A0DA7260CA6230AA51F09A41B07A31706A11305A011049F
        0E0BA415C4EDC9FFFFFFFFFFFF4AC154039E0C039E0C039E0C039E0C039E0C03
        9E0C03980B03870A026C08025506013E04012F02FF00FFFF00FFFF00FFFF00FF
        01360212A03210AA300FA92B0DA7270CA6230AA51F09A41B07A31806A1150DA6
        1CC4EDC9FFFFFFFFFFFFFFFFFFEBF8EE039E0C039E0C039E0C039E0C039E0C03
        9E0C039D0C03980B03820A026307025A06012D02FF00FFFF00FFFF00FF014103
        0C832113AC3912AB3510AA300FA92D0DA7280CA6240AA52009A41C13AA22C4ED
        C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF039E0C039E0C039E0C039E0C039E0C03
        9E0C039E0C039D0C03920B027809026207015106013102FF00FFFF00FF014103
        16A73F16AF3F14AD3A13AC3511AB320FAA2E0DA7280CA72514AB2CC6EECEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF4AC154039E0C039E0C039E0C039E0C039E0C03
        9E0C039E0C039E0C039A0C038A0A026F08026807013402FF00FFFF00FF014103
        1AB14918B04516AF4114AD3A13AC3711AB330FAA2E18AD35C7EED0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4FC45D039E0C039E0C039E0C039E0C039E0C039E0C03
        9E0C039E0C039E0C039D0C03960B037E09026F08013402FF00FF035305118F2F
        1CB24E1AB14918B04516AF4115AD3D13AC391CB03ECAEFD4FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF4FC45D06A11505A011049F0E039E0C039E0C039E0C039E0C03
        9E0C039E0C039E0C039E0C039A0C038A0A027809026207013502025A06149A39
        1DB24F1DB24F1CB14C18B04518B0431FB247CAEFD4FFFFFFFFFFFFFFFFFFFFFF
        FFEBF8EE37BB4E09A41C07A31806A11505A012049F0F039E0C039E0C039E0C03
        9E0C039E0C039E0C039E0C039D0C03920B03820A0273070135020360071DB24F
        23B65424B6561FB4511CB14C19B147BBEACBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEBF8EE4AC154039E0C03980B038F0A03920B0135020360071FB451
        2DBA5D33BC6424B6561CB24E90DDACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF039E0C039D0C03980B03980B013602046B0921B553
        3BC0694AC5762FBB601DB24FBCEBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF039E0C039D0C039D0C039D0C013602046F0921B553
        44C4725FCC883FC16D20B5523DC06BEEFAF3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFB1E6B6039E0C039E0C039E0C039E0C01360204740A1AA43F
        47C47475D49857CB812BB85A1CB24F3DC06BEEFAF3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF89DAA179D49277D48F76D38B76D38B73D18473D18473D1846FD07E6F
        D07E6DCF795CC9680CA416039E0C039E0C039E0C03820A01360204790A139832
        41C16E83D9A378D59A3DC06B20B5521CB24E3DC06BEEFAF3FFFFFFFFFFFFFFFF
        FFFFFFFFCAEFD435BC5A13AC3511AB320FAA2E0EA92A0DA7260CA6230AA51E09
        A41B07A31706A11305A011049F0E039E0C039E0C027307013602FF00FF05860D
        35BD6578D59A98E0B463CE8A2DBA5D1CB24F1CB24E26B757CCF0DAFFFFFFFFFF
        FFFFFFFFFFFFFFEEFAF335BC5A13AC3711AB3310AA300EA92A0DA7270CA6230A
        A51F09A41B07A31806A11305A011049F0E039E0C013602FF00FFFF00FF05860D
        28B6565FCC88A1E3BA98E0B44CC67824B6561DB24F1CB24E26B757CCF0DAFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF5DCB7D13AC3912AB3510AA300FA92B0DA7280C
        A6230AA52009A41C07A31806A11505A01104980D013602FF00FFFF00FF05860D
        17A33742C26F90DDACBCEBCF83D9A342C26F24B6561CB24E1CB24E26B757CCF0
        DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF16AF3F14AD3A12AB3510AA300FA92D0D
        A7280CA7250AA52009A41D08A31907A11604760C013602FF00FFFF00FFFF00FF
        078C1128B65663CE8AB0E7C6BAEACC83D9A347C57427B7581DB4501CB24E26B7
        57CCF0DAFFFFFFFFFFFFFFFFFFFFFFFF18B04316AF4114AD3A13AC3511AB320F
        AA2E0EA92A0DA7260CA6230AA51E089C18013C03FF00FFFF00FFFF00FFFF00FF
        058C0D129F2A3BC06A7ED89FBCEBCFC4EED48BDCA94CC6782FBB6020B5521CB2
        4F26B7579EE2B7FFFFFFFFFFFF7ED89F1AB14918B04516AF4115AD3D13AC3711
        AB3310AA300EA92A0DA7270CA62304630D013602FF00FFFF00FFFF00FFFF00FF
        FF00FF058C0D18A63942C26F87DAA6C4EED4CBEFD9A7E5BF70D39546C4732FBB
        6024B6561FB45132BC6232BC621CB24E1CB24F1CB14C1BB14A1CB2471BB04216
        AD3A12AB3510AA300FA92B087A16013602FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF078F1121B04948C57583D9A3B7EACACFF0DDBCEBCF98E0B470D3
        9551C77D42C27037BF6733BC6432BC6232BC6235BD6536BF6533BC5E28B7521B
        B04214AD3A12AB350D9224024104FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF078F111AA93B3BC06A69D08F9EE2B7C4EED4CFF0DDC4EE
        D4B0E7C698E0B487DAA67ED89F75D49870D3956AD0905CCC8645C4722BB85A1C
        B24717AF410C8321034806FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF068C0D129F2A2DBA5D4AC57670D39590DDACA7E5
        BFB0E7C6B0E7C6A7E5BFA1E3BA90DDAC7ED89F66CF8C4CC67832BC6223B65419
        AF460A771C024B04FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF058C0D058C0D18A7382BB85A3FC16D51C7
        7D5FCC8869D08F6AD09063CE8A57CB8145C47233BC6427B7581CB14C118F2F03
        5305035305FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF058C0D078F11058C0D18A6
        391FAC4428B75928B75928B75924B6561AA43F13983204690B04690B036007FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF058C
        0D058A0D05860D05820C057F0B04790A04760A046F09FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = sbAnteriorClick
    end
    object sbPosterior: TSpeedButton
      Left = 536
      Top = 0
      Width = 41
      Height = 41
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0131
        02013102012F02012B02012802012802012802012B02FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0136020136020136020262
        07026207026C08026407025F07025A06014A05024104012802012802012802FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF013602013602027307038C0A03860A0278
        09027509027209026F08026C08026807026207025A06015106014A05013C0401
        2501012802FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF01360202620703960B039A0C03920B038F0A038C
        0A038F0A03900A03900A03900A038C0A03870A037E0902720902620702550601
        4A05013503012501FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF013C0304760C05A011049F0E039D0C039A0C039A0C039D
        0C039D0C039D0C039E0C039D0C039D0C039D0C03980B03920B03860A02720902
        5A06024F05013C04012802FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF013C03078E1708A31906A11505A012049F0F039E0C039E0C039E
        0C039E0C039E0C039E0C039E0C039E0C039E0C039E0C039D0C039A0C03920B03
        820A026807025206014805012802FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF013602087A160CA6230AA51E08A31A07A11605A012049F10039E0C039E
        0C039E0C07A1110AA3142EB53921AF2C039E0C039E0C039E0C039E0C039D0C03
        980B03860A026807025506014104012802FF00FFFF00FFFF00FFFF00FFFF00FF
        0136020665120EA92A0DA7260CA6230AA51F09A41B07A31706A11305A011049F
        0E049F0D0BA415C4EDC7FFFFFFFFFFFF4AC154039E0C039E0C039E0C039E0C03
        9E0C03980B03870A026C08025506013E04012F02FF00FFFF00FFFF00FFFF00FF
        01360212A03210AA300FA92B0DA7270CA6230AA51F09A41B07A31806A11505A0
        11049F0E5AC764FFFFFFFFFFFFFFFFFFFFFFFF4AC154039E0C039E0C039E0C03
        9E0C039D0C03980B03820A026307025A06012D02FF00FFFF00FFFF00FF014103
        0C832113AC3912AB3510AA300FA92D0DA7280CA6240AA52009A41C08A31906A1
        1605A0126CCE76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4AC154039E0C039E0C03
        9E0C039E0C039D0C03920B027809026207015106013102FF00FFFF00FF014103
        16A73F16AF3F14AD3A13AC3511AB320FAA2E0DA7280CA7250BA62109A41E08A3
        1A07A1160FA61DC5EDCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4AC154039E0C03
        9E0C039E0C039E0C039A0C038A0A026F08026807013402FF00FFFF00FF014103
        1AB14918B04516AF4114AD3A13AC3711AB330FAA2E0EA92A0DA7260BA6230AA5
        1F09A41B07A3170FA61EC5EDCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4AC15403
        9E0C039E0C039E0C039D0C03960B037E09026F08013402FF00FF035305118F2F
        1CB24E1AB14918B04516AF4115AD3D13AC3811AB3410AA2F0FA92B0DA7280CA6
        230AA51F09A41C07A3180FA71FC5EDCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A
        C154039E0C039E0C039E0C039A0C038A0A027809026207013502025A06149A39
        1DB24F1DB24F1CB14C18B04517AF4216AD3E13AC3912AB3511AA300FA92C0DA7
        280CA6240AA52009A41C07A3180FA71F8FDA98FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4AC154039E0C039E0C039D0C03920B03820A0273070135020360071DB24F
        23B65424B6561FB45123B554BBEBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF2EB53909A313039E0C03980B038F0A03920B0135020360071FB451
        2DBA5D33BC6424B65680D8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEBF8ED16AA20039E0C039D0C03980B03980B013602046B0921B553
        3BC0694AC5762FBB6080D8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF2EB539039E0C039D0C039D0C039D0C013602046F0921B553
        44C4725FCC883FC16D49C576FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF8CD993039E0C039E0C039E0C039E0C039E0C01360204740A1AA43F
        47C47475D49857CB811CB24E49C57680D8A080D8A080D8A07FD8A07ED79D7DD7
        9A7BD5987AD59579D49277D48F76D38CC9EED1FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF8FDA98049F0F059F0E039E0C039E0C039E0C03820A01360204790A139832
        41C16E83D9A378D59A3DC06B1CB24E1CB24E1CB24E1CB24E1CB24E1BB24D19B1
        4918B04416AF4014AD3B13AC3677D48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91
        DC9D07A31706A11305A011049F0E039E0C039E0C027307013602FF00FF05860D
        35BD6578D59A98E0B463CE8A22B5531CB24E1CB24E1CB24E1CB24E1CB24E1CB2
        4D1AB14A18B04516AF4199E0AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54C66A0A
        A51F09A41C07A31806A11305A011049F0E039E0C013602FF00FFFF00FF05860D
        28B6565FCC88A1E3BA98E0B44AC5771EB4501CB24E1CB24E1CB24E1CB24E1CB2
        4E1CB24E24B654CBEFD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57C9700DA7280C
        A6230AA52009A41C07A31806A11505A01104980D013602FF00FFFF00FF05860D
        17A33742C26F90DDACBCEBCF83D9A341C26E1FB4511CB24E1CB24E1CB24E1CB2
        4E1CB24E80D8A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BCA7811AA310FA92D0D
        A7280CA7250AA52009A41D08A31907A11604760C013602FF00FFFF00FFFF00FF
        078C1128B65663CE8AB0E7C6BAEACC83D9A347C57423B6551CB24E1CB24E1CB2
        4E1CB24E80D8A0FFFFFFFFFFFFFFFFFFFFFFFF5ECC8014AD3B13AC3611AB320F
        AA2E0EA92A0DA7260CA6230AA51E089C18013C03FF00FFFF00FFFF00FFFF00FF
        058C0D129F2A3BC06A7ED89FBCEBCFC4EED48BDCA94CC6782DBA5E1DB4501CB2
        4E1CB24E31BC62DDF6E6FFFFFFEEFAF347C47318B04516AF4115AD3D13AC3711
        AB3310AA300EA92A0DA7270CA62304630D013602FF00FFFF00FFFF00FFFF00FF
        FF00FF058C0D18A63942C26F87DAA6C4EED4CBEFD9A7E5BF70D39546C4732DBB
        5F1FB4521CB24E1CB24E49C5761CB24E1CB24E1BB14C1BB14A1CB2471BB04216
        AD3A12AB3510AA300FA92B087A16013602FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF078F1121B04948C57583D9A3B7EACACFF0DDBCEBCF98E0B470D3
        9551C77D42C27036BF6633BC6432BC6232BC6235BD6536BF6533BC5E28B7521B
        B04214AD3A12AB350D9224024104FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF078F111AA93B3BC06A69D08F9EE2B7C4EED4CFF0DDC4EE
        D4B0E7C698E0B487DAA67ED89F75D49870D3956AD0905CCC8645C4722BB85A1C
        B24717AF410C8321034806FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF068C0D129F2A2DBA5D4AC57670D39590DDACA7E5
        BFB0E7C6B0E7C6A7E5BFA1E3BA90DDAC7ED89F66CF8C4CC67832BC6223B65419
        AF460A771C024B04FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF058C0D058C0D18A7382BB85A3FC16D51C7
        7D5FCC8869D08F6AD09063CE8A57CB8145C47233BC6427B7581CB14C118F2F03
        5305035305FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF058C0D078F11058C0D18A6
        391FAC4428B75928B75928B75924B6561AA43F13983204690B04690B036007FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF058C
        0D058A0D05860D05820C057F0B04790A04760A046F09FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = sbPosteriorClick
    end
    object lAno: TLabel
      Left = 416
      Top = 9
      Width = 57
      Height = 25
      Caption = 'Vazio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ldiaSelecionado: TLabel
      Left = 64
      Top = 14
      Width = 17
      Height = 13
      Caption = 'lDia'
      Visible = False
    end
    object lrow: TLabel
      Left = 136
      Top = 14
      Width = 20
      Height = 13
      Caption = 'lrow'
      Visible = False
    end
  end
  object qPadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from sz6010 ')
    SQLConnection = frmPrincipal.SQLConnection1
    Left = 248
    Top = 336
    object qPadraoZ6_CODTEC: TStringField
      FieldName = 'Z6_CODTEC'
      Required = True
      FixedChar = True
      Size = 6
    end
    object qPadraoZ6_DTATINI: TStringField
      FieldName = 'Z6_DTATINI'
      Required = True
      FixedChar = True
      Size = 8
    end
    object qPadraoZ6_DTATFIM: TStringField
      FieldName = 'Z6_DTATFIM'
      Required = True
      FixedChar = True
      Size = 8
    end
    object qPadraoz6_padr1: TStringField
      FieldName = 'z6_padr1'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPadraoz6_padr2: TStringField
      FieldName = 'z6_padr2'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPadraoz6_padr3: TStringField
      FieldName = 'z6_padr3'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPadraoz6_padr4: TStringField
      FieldName = 'z6_padr4'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPadraoz6_padr5: TStringField
      FieldName = 'z6_padr5'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPadraoz6_padr6: TStringField
      FieldName = 'z6_padr6'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPadraoz6_padr7: TStringField
      FieldName = 'z6_padr7'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPadraoz6_padr8: TStringField
      FieldName = 'z6_padr8'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPadraoz6_padr9: TStringField
      FieldName = 'z6_padr9'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPadraoz6_padr10: TStringField
      FieldName = 'z6_padr10'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qPadraoz6_descp01: TStringField
      FieldName = 'z6_descp01'
      Required = True
      FixedChar = True
      Size = 35
    end
    object qPadraoz6_descp02: TStringField
      FieldName = 'z6_descp02'
      Required = True
      FixedChar = True
      Size = 35
    end
    object qPadraoz6_descp03: TStringField
      FieldName = 'z6_descp03'
      Required = True
      FixedChar = True
      Size = 35
    end
    object qPadraoz6_descp04: TStringField
      FieldName = 'z6_descp04'
      Required = True
      FixedChar = True
      Size = 35
    end
    object qPadraoz6_descp05: TStringField
      FieldName = 'z6_descp05'
      Required = True
      FixedChar = True
      Size = 35
    end
    object qPadraoz6_descp06: TStringField
      FieldName = 'z6_descp06'
      Required = True
      FixedChar = True
      Size = 35
    end
    object qPadraoz6_descp07: TStringField
      FieldName = 'z6_descp07'
      Required = True
      FixedChar = True
      Size = 35
    end
    object qPadraoz6_descp08: TStringField
      FieldName = 'z6_descp08'
      Required = True
      FixedChar = True
      Size = 35
    end
    object qPadraoz6_descp09: TStringField
      FieldName = 'z6_descp09'
      Required = True
      FixedChar = True
      Size = 35
    end
    object qPadraoz6_descp10: TStringField
      FieldName = 'z6_descp10'
      Required = True
      FixedChar = True
      Size = 35
    end
    object qPadraoZ6_STATUS: TStringField
      FieldName = 'Z6_STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qTabPadroes: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select qm3_padrao,qm3_descri from qm3010')
    SQLConnection = frmPrincipal.SQLConnection1
    Left = 288
    Top = 336
    object qTabPadroesqm3_padrao: TStringField
      FieldName = 'qm3_padrao'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qTabPadroesqm3_descri: TStringField
      FieldName = 'qm3_descri'
      Required = True
      FixedChar = True
      Size = 35
    end
  end
end
