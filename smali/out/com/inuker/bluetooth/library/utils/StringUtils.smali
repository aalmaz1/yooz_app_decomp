.class public Lcom/inuker/bluetooth/library/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    .line 13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1c

    :cond_a
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_1c

    .line 17
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_19

    return v2

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .registers 1

    .line 8
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
