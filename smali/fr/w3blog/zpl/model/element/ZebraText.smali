.class public Lfr/w3blog/zpl/model/element/ZebraText;
.super Lfr/w3blog/zpl/model/ZebraElement;
.source "ZebraText.java"


# instance fields
.field fontSize:Ljava/lang/Integer;

.field text:Ljava/lang/String;

.field zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

.field zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    .line 54
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 26
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 28
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 55
    iput-object p3, p0, Lfr/w3blog/zpl/model/element/ZebraText;->text:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionX:Ljava/lang/Integer;

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .registers 6

    .line 60
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 26
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 28
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 61
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 62
    iput-object p3, p0, Lfr/w3blog/zpl/model/element/ZebraText;->text:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionX:Ljava/lang/Integer;

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lfr/w3blog/zpl/constant/ZebraFont;I)V
    .registers 7

    .line 76
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 26
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 28
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 77
    iput-object p4, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 78
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 79
    iput-object p3, p0, Lfr/w3blog/zpl/model/element/ZebraText;->text:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionX:Ljava/lang/Integer;

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lfr/w3blog/zpl/constant/ZebraFont;ILfr/w3blog/zpl/constant/ZebraRotation;)V
    .registers 8

    .line 67
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 26
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 28
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 68
    iput-object p4, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 69
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 70
    iput-object p6, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 71
    iput-object p3, p0, Lfr/w3blog/zpl/model/element/ZebraText;->text:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionX:Ljava/lang/Integer;

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionY:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 26
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 28
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 33
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 36
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 26
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 28
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 38
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfr/w3blog/zpl/constant/ZebraFont;I)V
    .registers 5

    .line 41
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 26
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 28
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 42
    iput-object p2, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 43
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 44
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfr/w3blog/zpl/constant/ZebraFont;ILfr/w3blog/zpl/constant/ZebraRotation;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 26
    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 28
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 48
    iput-object p2, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    .line 49
    iput-object p4, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    .line 50
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    .line 51
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public drawPreviewGraphic(Lfr/w3blog/zpl/model/PrinterOptions;Ljava/awt/Graphics2D;)V
    .registers 11

    .line 118
    iget-boolean v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->defaultDrawGraphic:Z

    if-eqz v0, :cond_bb

    .line 121
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionX:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 122
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lfr/w3blog/zpl/utils/ZplUtils;->convertPointInPixel(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_1a

    :cond_19
    move v6, v1

    .line 124
    :goto_1a
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionY:Ljava/lang/Integer;

    if-eqz v0, :cond_2e

    .line 125
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->positionY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lfr/w3blog/zpl/utils/ZplUtils;->convertPointInPixel(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_2f

    :cond_2e
    move v7, v1

    .line 130
    :goto_2f
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v0, :cond_5c

    iget-object v3, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    if-eqz v3, :cond_5c

    .line 132
    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;

    move-result-object v0

    iget-object v3, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getZebraPPP()Lfr/w3blog/zpl/constant/ZebraPPP;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lfr/w3blog/zpl/utils/ZplUtils;->extractDotsFromFont(Lfr/w3blog/zpl/constant/ZebraFont;ILfr/w3blog/zpl/constant/ZebraPPP;)[Ljava/lang/Integer;

    move-result-object p1

    .line 134
    new-instance v0, Ljava/awt/Font;

    iget-object v3, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    invoke-static {v3}, Lfr/w3blog/zpl/constant/ZebraFont;->findBestEquivalentFontForPreview(Lfr/w3blog/zpl/constant/ZebraFont;)Ljava/lang/String;

    move-result-object v3

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, v3, v2, p1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    goto :goto_b3

    :cond_5c
    if-eqz v0, :cond_94

    .line 135
    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 137
    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;

    move-result-object v0

    iget-object v3, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getZebraPPP()Lfr/w3blog/zpl/constant/ZebraPPP;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lfr/w3blog/zpl/utils/ZplUtils;->extractDotsFromFont(Lfr/w3blog/zpl/constant/ZebraFont;ILfr/w3blog/zpl/constant/ZebraPPP;)[Ljava/lang/Integer;

    move-result-object v0

    .line 138
    new-instance v3, Ljava/awt/Font;

    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;

    move-result-object p1

    invoke-static {p1}, Lfr/w3blog/zpl/constant/ZebraFont;->findBestEquivalentFontForPreview(Lfr/w3blog/zpl/constant/ZebraFont;)Ljava/lang/String;

    move-result-object p1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3faa3d71    # 1.33f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v3, p1, v2, v0}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    move-object v4, v3

    goto :goto_b4

    .line 141
    :cond_94
    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;

    move-result-object v0

    const/16 v3, 0xf

    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getZebraPPP()Lfr/w3blog/zpl/constant/ZebraPPP;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lfr/w3blog/zpl/utils/ZplUtils;->extractDotsFromFont(Lfr/w3blog/zpl/constant/ZebraFont;ILfr/w3blog/zpl/constant/ZebraPPP;)[Ljava/lang/Integer;

    move-result-object p1

    .line 143
    new-instance v0, Ljava/awt/Font;

    sget-object v3, Lfr/w3blog/zpl/constant/ZebraFont;->ZEBRA_A:Lfr/w3blog/zpl/constant/ZebraFont;

    invoke-static {v3}, Lfr/w3blog/zpl/constant/ZebraFont;->findBestEquivalentFontForPreview(Lfr/w3blog/zpl/constant/ZebraFont;)Ljava/lang/String;

    move-result-object v3

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, v3, v2, p1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    :goto_b3
    move-object v4, v0

    .line 145
    :goto_b4
    iget-object v5, p0, Lfr/w3blog/zpl/model/element/ZebraText;->text:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lfr/w3blog/zpl/model/element/ZebraText;->drawTopString(Ljava/awt/Graphics2D;Ljava/awt/Font;Ljava/lang/String;II)V

    :cond_bb
    return-void
.end method

.method public getZplCode(Lfr/w3blog/zpl/model/PrinterOptions;)Ljava/lang/String;
    .registers 12

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    invoke-virtual {p0}, Lfr/w3blog/zpl/model/element/ZebraText;->getZplCodePosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "A"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_49

    iget-object v8, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    if-eqz v8, :cond_49

    .line 94
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getZebraPPP()Lfr/w3blog/zpl/constant/ZebraPPP;

    move-result-object p1

    invoke-static {v8, v1, p1}, Lfr/w3blog/zpl/utils/ZplUtils;->extractDotsFromFont(Lfr/w3blog/zpl/constant/ZebraFont;ILfr/w3blog/zpl/constant/ZebraPPP;)[Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    .line 95
    iget-object v4, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraFont:Lfr/w3blog/zpl/constant/ZebraFont;

    invoke-virtual {v4}, Lfr/w3blog/zpl/constant/ZebraFont;->getLetter()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    iget-object v4, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    invoke-virtual {v4}, Lfr/w3blog/zpl/constant/ZebraRotation;->getLetter()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    aget-object v4, p1, v7

    aput-object v4, v1, v3

    aget-object p1, p1, v6

    aput-object p1, v1, v2

    invoke-static {v5, v1}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommand(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_86

    :cond_49
    if-eqz v1, :cond_86

    .line 96
    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 98
    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;

    move-result-object v1

    iget-object v8, p0, Lfr/w3blog/zpl/model/element/ZebraText;->fontSize:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getZebraPPP()Lfr/w3blog/zpl/constant/ZebraPPP;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lfr/w3blog/zpl/utils/ZplUtils;->extractDotsFromFont(Lfr/w3blog/zpl/constant/ZebraFont;ILfr/w3blog/zpl/constant/ZebraPPP;)[Ljava/lang/Integer;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;

    move-result-object p1

    invoke-virtual {p1}, Lfr/w3blog/zpl/constant/ZebraFont;->getLetter()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v7

    iget-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    invoke-virtual {p1}, Lfr/w3blog/zpl/constant/ZebraRotation;->getLetter()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v6

    aget-object p1, v1, v7

    aput-object p1, v4, v3

    aget-object p1, v1, v6

    aput-object p1, v4, v2

    invoke-static {v5, v4}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommand(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    :cond_86
    :goto_86
    const-string p1, "^FH\\^FD"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraText;->text:Ljava/lang/String;

    invoke-static {p1}, Lfr/w3blog/zpl/utils/ZplUtils;->convertAccentToZplAsciiHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "FS"

    .line 104
    invoke-static {p1}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommandSautLigne(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
