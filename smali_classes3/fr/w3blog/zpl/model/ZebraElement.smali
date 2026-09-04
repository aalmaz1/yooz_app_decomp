.class public abstract Lfr/w3blog/zpl/model/ZebraElement;
.super Ljava/lang/Object;
.source "ZebraElement.java"


# instance fields
.field protected defaultDrawGraphic:Z

.field protected positionX:Ljava/lang/Integer;

.field protected positionY:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lfr/w3blog/zpl/model/ZebraElement;->defaultDrawGraphic:Z

    return-void
.end method


# virtual methods
.method public drawPreviewGraphic(Lfr/w3blog/zpl/model/PrinterOptions;Ljava/awt/Graphics2D;)V
    .locals 9

    .line 94
    iget-boolean v0, p0, Lfr/w3blog/zpl/model/ZebraElement;->defaultDrawGraphic:Z

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraElement;->positionX:Ljava/lang/Integer;

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getZebraPPP()Lfr/w3blog/zpl/constant/ZebraPPP;

    move-result-object v3

    invoke-virtual {v3}, Lfr/w3blog/zpl/constant/ZebraPPP;->getDotByMm()F

    move-result v3

    div-float/2addr v0, v3

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v2

    .line 100
    :goto_0
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraElement;->positionY:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lfr/w3blog/zpl/model/PrinterOptions;->getZebraPPP()Lfr/w3blog/zpl/constant/ZebraPPP;

    move-result-object p1

    invoke-virtual {p1}, Lfr/w3blog/zpl/constant/ZebraPPP;->getDotByMm()F

    move-result p1

    div-float/2addr v0, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    :cond_1
    move v8, v2

    .line 103
    sget-object p1, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {p2, p1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    const/16 p1, 0x64

    const/16 v0, 0x14

    .line 104
    invoke-virtual {p2, v7, v8, p1, v0}, Ljava/awt/Graphics2D;->drawRect(IIII)V

    .line 105
    new-instance v5, Ljava/awt/Font;

    const/4 p1, 0x1

    const/16 v0, 0xb

    const-string v1, "Arial"

    invoke-direct {v5, v1, p1, v0}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    const-string v6, "Default"

    move-object v3, p0

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Lfr/w3blog/zpl/model/ZebraElement;->drawTopString(Ljava/awt/Graphics2D;Ljava/awt/Font;Ljava/lang/String;II)V

    :cond_2
    return-void
.end method

.method protected drawTopString(Ljava/awt/Graphics2D;Ljava/awt/Font;Ljava/lang/String;II)V
    .locals 2

    .line 121
    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    .line 122
    invoke-virtual {p1, p2}, Ljava/awt/Graphics2D;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object p2

    .line 123
    invoke-virtual {p2, p3, p1}, Ljava/awt/FontMetrics;->getStringBounds(Ljava/lang/String;Ljava/awt/Graphics;)Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    .line 124
    invoke-virtual {p2}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v0

    double-to-int p2, v0

    add-int/2addr p5, p2

    .line 126
    invoke-virtual {p1, p3, p4, p5}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;II)V

    return-void
.end method

.method public getPositionX()I
    .locals 1

    .line 32
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraElement;->positionX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .line 48
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraElement;->positionY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getZplCode(Lfr/w3blog/zpl/model/PrinterOptions;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method protected getZplCodePosition()Ljava/lang/String;
    .locals 5

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lfr/w3blog/zpl/model/ZebraElement;->positionX:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lfr/w3blog/zpl/model/ZebraElement;->positionY:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "FT"

    .line 78
    invoke-static {v1, v3}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommand(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPositionX(I)Lfr/w3blog/zpl/model/ZebraElement;
    .locals 0

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraElement;->positionX:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPositionY(I)Lfr/w3blog/zpl/model/ZebraElement;
    .locals 0

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraElement;->positionY:Ljava/lang/Integer;

    return-object p0
.end method
