.class public Lfr/w3blog/zpl/model/ZebraLabel;
.super Ljava/lang/Object;
.source "ZebraLabel.java"


# instance fields
.field private heightDots:Ljava/lang/Integer;

.field private printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

.field private widthDots:Ljava/lang/Integer;

.field private zebraElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfr/w3blog/zpl/model/ZebraElement;",
            ">;"
        }
    .end annotation
.end field

.field private zebraPrintMode:Lfr/w3blog/zpl/constant/ZebraPrintMode;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->TEAR_OFF:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraPrintMode:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    .line 29
    new-instance v0, Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-direct {v0}, Lfr/w3blog/zpl/model/PrinterOptions;-><init>()V

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraElements:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraElements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->TEAR_OFF:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraPrintMode:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    .line 29
    new-instance v0, Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-direct {v0}, Lfr/w3blog/zpl/model/PrinterOptions;-><init>()V

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraElements:Ljava/util/List;

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->widthDots:Ljava/lang/Integer;

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->heightDots:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(IILfr/w3blog/zpl/model/PrinterOptions;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->TEAR_OFF:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraPrintMode:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    .line 29
    new-instance v0, Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-direct {v0}, Lfr/w3blog/zpl/model/PrinterOptions;-><init>()V

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraElements:Ljava/util/List;

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->widthDots:Ljava/lang/Integer;

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->heightDots:Ljava/lang/Integer;

    .line 69
    iput-object p3, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    return-void
.end method

.method public constructor <init>(Lfr/w3blog/zpl/model/PrinterOptions;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lfr/w3blog/zpl/constant/ZebraPrintMode;->TEAR_OFF:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraPrintMode:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    .line 29
    new-instance v0, Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-direct {v0}, Lfr/w3blog/zpl/model/PrinterOptions;-><init>()V

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraElements:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    return-void
.end method


# virtual methods
.method public addElement(Lfr/w3blog/zpl/model/ZebraElement;)Lfr/w3blog/zpl/model/ZebraLabel;
    .registers 3

    .line 81
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getHeightDots()Ljava/lang/Integer;
    .registers 2

    .line 118
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->heightDots:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImagePreview()Ljava/awt/image/BufferedImage;
    .registers 7

    .line 200
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->widthDots:Ljava/lang/Integer;

    if-eqz v0, :cond_67

    iget-object v1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->heightDots:Ljava/lang/Integer;

    if-eqz v1, :cond_67

    .line 201
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lfr/w3blog/zpl/utils/ZplUtils;->convertPointInPixel(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 202
    iget-object v1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->heightDots:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lfr/w3blog/zpl/utils/ZplUtils;->convertPointInPixel(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 203
    new-instance v2, Ljava/awt/image/BufferedImage;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 204
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v3

    .line 205
    sget-object v4, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 206
    sget-object v4, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    invoke-virtual {v3, v4}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    const/4 v4, 0x0

    .line 207
    invoke-virtual {v3, v4, v4, v0, v1}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 209
    sget-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {v3, v0}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 210
    new-instance v0, Ljava/awt/Font;

    const/4 v1, 0x1

    const/16 v4, 0xb

    const-string v5, "Arial"

    invoke-direct {v0, v5, v1, v4}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v0}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    .line 211
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/w3blog/zpl/model/ZebraElement;

    .line 212
    iget-object v4, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-virtual {v1, v4, v3}, Lfr/w3blog/zpl/model/ZebraElement;->drawPreviewGraphic(Lfr/w3blog/zpl/model/PrinterOptions;Ljava/awt/Graphics2D;)V

    goto :goto_54

    :cond_66
    return-object v2

    .line 216
    :cond_67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Graphics Preview is only available ont label sized"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrinterOptions()Lfr/w3blog/zpl/model/PrinterOptions;
    .registers 2

    .line 127
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    return-object v0
.end method

.method public getWidthDots()Ljava/lang/Integer;
    .registers 2

    .line 109
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->widthDots:Ljava/lang/Integer;

    return-object v0
.end method

.method public getZebraElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfr/w3blog/zpl/model/ZebraElement;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraElements:Ljava/util/List;

    return-object v0
.end method

.method public getZebraPrintMode()Lfr/w3blog/zpl/constant/ZebraPrintMode;
    .registers 2

    .line 138
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraPrintMode:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    return-object v0
.end method

.method public getZplCode()Ljava/lang/String;
    .registers 6

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XA"

    .line 168
    invoke-static {v1}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommandSautLigne(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraPrintMode:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    invoke-virtual {v1}, Lfr/w3blog/zpl/constant/ZebraPrintMode;->getZplCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->widthDots:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2a

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "PW"

    .line 173
    invoke-static {v1, v4}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommandSautLigne(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 176
    :cond_2a
    iget-object v1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->heightDots:Ljava/lang/Integer;

    if-eqz v1, :cond_3b

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "LL"

    .line 177
    invoke-static {v1, v3}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommandSautLigne(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 181
    :cond_3b
    iget-object v1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-virtual {v1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;

    move-result-object v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-virtual {v1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultFontSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 182
    iget-object v1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-virtual {v1}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultZebraFont()Lfr/w3blog/zpl/constant/ZebraFont;

    move-result-object v1

    iget-object v2, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-virtual {v2}, Lfr/w3blog/zpl/model/PrinterOptions;->getDefaultFontSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-virtual {v3}, Lfr/w3blog/zpl/model/PrinterOptions;->getZebraPPP()Lfr/w3blog/zpl/constant/ZebraPPP;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lfr/w3blog/zpl/utils/ZplUtils;->extractDotsFromFont(Lfr/w3blog/zpl/constant/ZebraFont;ILfr/w3blog/zpl/constant/ZebraPPP;)[Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const-string v2, "CF"

    invoke-static {v2, v1}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommandSautLigne(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 185
    :cond_70
    iget-object v1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfr/w3blog/zpl/model/ZebraElement;

    .line 186
    iget-object v3, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-virtual {v2, v3}, Lfr/w3blog/zpl/model/ZebraElement;->getZplCode(Lfr/w3blog/zpl/model/PrinterOptions;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76

    :cond_8c
    const-string v1, "XZ"

    .line 188
    invoke-static {v1}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommandSautLigne(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultFontSize(Ljava/lang/Integer;)Lfr/w3blog/zpl/model/ZebraLabel;
    .registers 3

    .line 104
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-virtual {v0, p1}, Lfr/w3blog/zpl/model/PrinterOptions;->setDefaultFontSize(Ljava/lang/Integer;)Lfr/w3blog/zpl/model/PrinterOptions;

    return-object p0
.end method

.method public setDefaultZebraFont(Lfr/w3blog/zpl/constant/ZebraFont;)Lfr/w3blog/zpl/model/ZebraLabel;
    .registers 3

    .line 92
    iget-object v0, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    invoke-virtual {v0, p1}, Lfr/w3blog/zpl/model/PrinterOptions;->setDefaultZebraFont(Lfr/w3blog/zpl/constant/ZebraFont;)Lfr/w3blog/zpl/model/PrinterOptions;

    return-object p0
.end method

.method public setHeightDots(Ljava/lang/Integer;)Lfr/w3blog/zpl/model/ZebraLabel;
    .registers 2

    .line 122
    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->heightDots:Ljava/lang/Integer;

    return-object p0
.end method

.method public setPrinterOptions(Lfr/w3blog/zpl/model/PrinterOptions;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->printerOptions:Lfr/w3blog/zpl/model/PrinterOptions;

    return-void
.end method

.method public setWidthDots(Ljava/lang/Integer;)Lfr/w3blog/zpl/model/ZebraLabel;
    .registers 2

    .line 113
    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->widthDots:Ljava/lang/Integer;

    return-object p0
.end method

.method public setZebraElements(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfr/w3blog/zpl/model/ZebraElement;",
            ">;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraElements:Ljava/util/List;

    return-void
.end method

.method public setZebraPrintMode(Lfr/w3blog/zpl/constant/ZebraPrintMode;)Lfr/w3blog/zpl/model/ZebraLabel;
    .registers 2

    .line 146
    iput-object p1, p0, Lfr/w3blog/zpl/model/ZebraLabel;->zebraPrintMode:Lfr/w3blog/zpl/constant/ZebraPrintMode;

    return-object p0
.end method
