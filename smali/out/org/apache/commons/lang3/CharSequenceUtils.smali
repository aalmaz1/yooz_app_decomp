.class public Lorg/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# static fields
.field private static final NOT_FOUND:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;II)I
    .registers 10

    .line 100
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 101
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    .line 103
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gez p2, :cond_13

    move p2, v1

    :cond_13
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_24

    move v2, p2

    :goto_18
    if-ge v2, v0, :cond_24

    .line 109
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_21

    return v2

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_24
    const v2, 0x10ffff

    if-gt p1, v2, :cond_47

    .line 116
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    :goto_2d
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    if-ge p2, v3, :cond_47

    .line 118
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, p2, 0x1

    .line 119
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 120
    aget-char v6, p1, v1

    if-ne v3, v6, :cond_45

    aget-char v2, p1, v2

    if-ne v5, v2, :cond_45

    return p2

    :cond_45
    move p2, v4

    goto :goto_2d

    :cond_47
    const/4 p0, -0x1

    return p0
.end method

.method static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 3

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 8

    .line 176
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 177
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0

    .line 179
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-gez p2, :cond_13

    return v1

    :cond_13
    if-lt p2, v0, :cond_17

    add-int/lit8 p2, v0, -0x1

    :cond_17
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_28

    move v2, p2

    :goto_1c
    if-ltz v2, :cond_28

    .line 188
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_25

    return v2

    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    :cond_28
    const v2, 0x10ffff

    if-gt p1, v2, :cond_4f

    .line 196
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_36

    return v1

    :cond_36
    :goto_36
    if-ltz p2, :cond_4f

    .line 202
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v3, p2, 0x1

    .line 203
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    .line 204
    aget-char v4, p1, v4

    if-ne v4, v0, :cond_4c

    aget-char v0, p1, v2

    if-ne v0, v3, :cond_4c

    return p2

    :cond_4c
    add-int/lit8 p2, p2, -0x1

    goto :goto_36

    :cond_4f
    return v1
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 3

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .registers 13

    .line 264
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_17

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 265
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    .line 272
    :cond_17
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    .line 273
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    const/4 v2, 0x0

    if-ltz p2, :cond_5f

    if-ltz p4, :cond_5f

    if-gez p5, :cond_29

    goto :goto_5f

    :cond_29
    if-lt v0, p5, :cond_5f

    if-ge v1, p5, :cond_2e

    goto :goto_5f

    :cond_2e
    :goto_2e
    add-int/lit8 v0, p5, -0x1

    if-lez p5, :cond_5d

    add-int/lit8 p5, p2, 0x1

    .line 286
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    add-int/lit8 v1, p4, 0x1

    .line 287
    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-ne p2, p4, :cond_41

    goto :goto_59

    :cond_41
    if-nez p1, :cond_44

    return v2

    .line 298
    :cond_44
    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {p4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_59

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    invoke-static {p4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p4

    if-eq p2, p4, :cond_59

    return v2

    :cond_59
    :goto_59
    move p2, p5

    move p5, v0

    move p4, v1

    goto :goto_2e

    :cond_5d
    const/4 p0, 0x1

    return p0

    :cond_5f
    :goto_5f
    return v2
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_c

    .line 57
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_c
    return-object p0
.end method

.method static toCharArray(Ljava/lang/CharSequence;)[C
    .registers 5

    .line 240
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 241
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    .line 243
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 244
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_21

    .line 246
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_21
    return-object v1
.end method
