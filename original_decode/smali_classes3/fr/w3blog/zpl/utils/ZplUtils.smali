.class public Lfr/w3blog/zpl/utils/ZplUtils;
.super Ljava/lang/Object;
.source "ZplUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAccentToZplAsciiHexa(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "\u00e9"

    const-string v1, "\\82"

    .line 152
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u00e0"

    const-string v1, "\\85"

    .line 153
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u00e8"

    const-string v1, "\\8A"

    .line 154
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static convertPointInPixel(I)Ljava/lang/Integer;
    .locals 1

    int-to-float p0, p0

    const v0, 0x3faa3d71    # 1.33f

    mul-float/2addr p0, v0

    .line 140
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static extractDotsFromFont(Lfr/w3blog/zpl/constant/ZebraFont;ILfr/w3blog/zpl/constant/ZebraPPP;)[Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    .line 123
    sget-object v1, Lfr/w3blog/zpl/constant/ZebraFont;->ZEBRA_ZERO:Lfr/w3blog/zpl/constant/ZebraFont;

    invoke-virtual {v1, p0}, Lfr/w3blog/zpl/constant/ZebraFont;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lfr/w3blog/zpl/constant/ZebraPPP;->DPI_300:Lfr/w3blog/zpl/constant/ZebraPPP;

    invoke-virtual {p0, p2}, Lfr/w3blog/zpl/constant/ZebraPPP;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-float p0, p1

    const p1, 0x40851eb8    # 4.16f

    mul-float/2addr p1, p0

    .line 125
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const p1, 0x4081eb85    # 4.06f

    mul-float/2addr p0, p1

    .line 126
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This PPP and this font are not yet supported. Please use ZebraAFontElement."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static variableObjectToZplCode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    .line 21
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 24
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Y"

    return-object p0

    :cond_1
    const-string p0, "N"

    return-object p0

    .line 30
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static zplCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static varargs zplCommand(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    array-length p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p0, v2, :cond_0

    .line 82
    aget-object p0, p1, v1

    invoke-static {p0}, Lfr/w3blog/zpl/utils/ZplUtils;->variableObjectToZplCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_1

    const-string p0, ","

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    aget-object p0, p1, v2

    invoke-static {p0}, Lfr/w3blog/zpl/utils/ZplUtils;->variableObjectToZplCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    array-length p0, p1

    if-ne p0, v2, :cond_1

    .line 89
    aget-object p0, p1, v1

    invoke-static {p0}, Lfr/w3blog/zpl/utils/ZplUtils;->variableObjectToZplCode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-object v0
.end method

.method public static zplCommandSautLigne(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    .line 63
    invoke-static {p0}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommand(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static varargs zplCommandSautLigne(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 0

    .line 104
    invoke-static {p0, p1}, Lfr/w3blog/zpl/utils/ZplUtils;->zplCommand(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method
