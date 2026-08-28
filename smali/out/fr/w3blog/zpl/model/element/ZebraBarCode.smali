.class public abstract Lfr/w3blog/zpl/model/element/ZebraBarCode;
.super Lfr/w3blog/zpl/model/ZebraElement;
.source "ZebraBarCode.java"


# instance fields
.field barCodeHeigth:Ljava/lang/Integer;

.field moduleWidth:Ljava/lang/Integer;

.field showTextInterpretation:Z

.field showTextInterpretationAbove:Z

.field text:Ljava/lang/String;

.field wideBarRatio:Ljava/lang/Integer;

.field zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .registers 6

    .line 54
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    .line 27
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->showTextInterpretationAbove:Z

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->positionX:Ljava/lang/Integer;

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->positionY:Ljava/lang/Integer;

    .line 57
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->barCodeHeigth:Ljava/lang/Integer;

    .line 58
    iput-object p3, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .registers 8

    .line 77
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    .line 27
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->showTextInterpretationAbove:Z

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->positionX:Ljava/lang/Integer;

    .line 79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->positionY:Ljava/lang/Integer;

    .line 80
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->barCodeHeigth:Ljava/lang/Integer;

    .line 81
    iput-object p3, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->text:Ljava/lang/String;

    .line 82
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->moduleWidth:Ljava/lang/Integer;

    .line 83
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->wideBarRatio:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IZZ)V
    .registers 8

    .line 102
    invoke-direct {p0}, Lfr/w3blog/zpl/model/ZebraElement;-><init>()V

    .line 27
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraRotation;->NORMAL:Lfr/w3blog/zpl/constant/ZebraRotation;

    iput-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->showTextInterpretationAbove:Z

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->positionX:Ljava/lang/Integer;

    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->positionY:Ljava/lang/Integer;

    .line 105
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->barCodeHeigth:Ljava/lang/Integer;

    .line 106
    iput-object p3, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->text:Ljava/lang/String;

    .line 107
    iput-boolean p5, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->showTextInterpretation:Z

    .line 108
    iput-boolean p6, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->showTextInterpretationAbove:Z

    return-void
.end method


# virtual methods
.method public drawPreviewGraphic(Lfr/w3blog/zpl/model/PrinterOptions;Ljava/awt/Graphics2D;)V
    .registers 10

    .line 133
    iget-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->positionX:Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 134
    iget-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->positionX:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lfr/w3blog/zpl/utils/ZplUtils;->convertPointInPixel(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v5, p1

    goto :goto_16

    :cond_15
    move v5, v0

    .line 136
    :goto_16
    iget-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->positionY:Ljava/lang/Integer;

    if-eqz p1, :cond_28

    .line 137
    iget-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->positionY:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lfr/w3blog/zpl/utils/ZplUtils;->convertPointInPixel(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_28
    move v6, v0

    .line 139
    sget-object p1, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {p2, p1}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 141
    new-instance v3, Ljava/awt/Font;

    iget-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->barCodeHeigth:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const-string v0, "Arial"

    const/4 v1, 0x1

    invoke-direct {v3, v0, v1, p1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 143
    iget-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->moduleWidth:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->wideBarRatio:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x9

    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Lfr/w3blog/zpl/utils/ZplUtils;->convertPointInPixel(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->barCodeHeigth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lfr/w3blog/zpl/utils/ZplUtils;->convertPointInPixel(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v5, v6, p1, v0}, Ljava/awt/Graphics2D;->drawRect(IIII)V

    .line 145
    iget-object v4, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->text:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lfr/w3blog/zpl/model/element/ZebraBarCode;->drawTopString(Ljava/awt/Graphics2D;Ljava/awt/Font;Ljava/lang/String;II)V

    return-void
.end method

.method public getBarCodeHeigth()Ljava/lang/Integer;
    .registers 2

    .line 153
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->barCodeHeigth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBarCodeWidth()Ljava/lang/Integer;
    .registers 2

    .line 149
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->moduleWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartZplCodeBuilder()Ljava/lang/StringBuilder;
    .registers 5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-virtual {p0}, Lfr/w3blog/zpl/model/element/ZebraBarCode;->getZplCodePosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->moduleWidth:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    .line 117
    iget-object v3, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->wideBarRatio:Ljava/lang/Integer;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->barCodeHeigth:Ljava/lang/Integer;

    aput-object v3, v2, v1

    const-string v1, "BY"

    invoke-static {v1, v2}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommandSautLigne(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2e
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getWideBarRatio()Ljava/lang/Integer;
    .registers 2

    .line 157
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->wideBarRatio:Ljava/lang/Integer;

    return-object v0
.end method

.method public getZebraRotation()Lfr/w3blog/zpl/constant/ZebraRotation;
    .registers 2

    .line 161
    iget-object v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    return-object v0
.end method

.method public isShowTextInterpretation()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->showTextInterpretation:Z

    return v0
.end method

.method public isShowTextInterpretationAbove()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->showTextInterpretationAbove:Z

    return v0
.end method

.method public setBarCodeHeigth(Ljava/lang/Integer;)Lfr/w3blog/zpl/model/element/ZebraBarCode;
    .registers 2

    .line 182
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->barCodeHeigth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setBarCodeWidth(Ljava/lang/Integer;)Lfr/w3blog/zpl/model/element/ZebraBarCode;
    .registers 2

    .line 177
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->moduleWidth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setShowTextInterpretation(Z)Lfr/w3blog/zpl/model/element/ZebraBarCode;
    .registers 2

    .line 197
    iput-boolean p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->showTextInterpretation:Z

    return-object p0
.end method

.method public setShowTextInterpretationAbove(Z)Lfr/w3blog/zpl/model/element/ZebraBarCode;
    .registers 2

    .line 202
    iput-boolean p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->showTextInterpretationAbove:Z

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lfr/w3blog/zpl/model/element/ZebraBarCode;
    .registers 2

    .line 207
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setWideBarRatio(Ljava/lang/Integer;)Lfr/w3blog/zpl/model/element/ZebraBarCode;
    .registers 2

    .line 187
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->wideBarRatio:Ljava/lang/Integer;

    return-object p0
.end method

.method public setZebraRotation(Lfr/w3blog/zpl/constant/ZebraRotation;)Lfr/w3blog/zpl/model/element/ZebraBarCode;
    .registers 2

    .line 192
    iput-object p1, p0, Lfr/w3blog/zpl/model/element/ZebraBarCode;->zebraRotation:Lfr/w3blog/zpl/constant/ZebraRotation;

    return-object p0
.end method
