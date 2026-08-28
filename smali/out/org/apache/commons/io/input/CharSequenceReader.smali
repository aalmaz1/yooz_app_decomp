.class public Lorg/apache/commons/io/input/CharSequenceReader;
.super Ljava/io/Reader;
.source "CharSequenceReader.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x33aef9076e3a9d04L


# instance fields
.field private final charSequence:Ljava/lang/CharSequence;

.field private idx:I

.field private mark:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_8

    :cond_6
    const-string p1, ""

    .line 45
    :goto_8
    iput-object p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    .line 54
    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    return-void
.end method

.method public mark(I)V
    .registers 2

    .line 64
    iget p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4

    .line 85
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, -0x1

    return v0

    .line 88
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public read([CII)I
    .registers 9

    .line 103
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_c

    return v2

    :cond_c
    if-eqz p1, :cond_57

    if-ltz p3, :cond_2d

    if-ltz p2, :cond_2d

    add-int v0, p2, p3

    .line 109
    array-length v1, p1

    if-gt v0, v1, :cond_2d

    const/4 v0, 0x0

    move v1, v0

    :goto_19
    if-ge v0, p3, :cond_2c

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceReader;->read()I

    move-result v3

    if-ne v3, v2, :cond_22

    return v1

    :cond_22
    add-int v4, p2, v0

    int-to-char v3, v3

    .line 119
    aput-char v3, p1, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2c
    return v1

    .line 110
    :cond_2d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array Size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", offset="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", length="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_57
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Character array is missing"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 2

    .line 131
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->mark:I

    iput v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    return-void
.end method

.method public skip(J)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2b

    .line 146
    iget v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    iget-object v1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_13

    const-wide/16 p1, -0x1

    return-wide p1

    .line 149
    :cond_13
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    .line 150
    iget p2, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    sub-int p2, p1, p2

    .line 151
    iput p1, p0, Lorg/apache/commons/io/input/CharSequenceReader;->idx:I

    int-to-long p1, p2

    return-wide p1

    .line 143
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number of characters to skip is less than zero: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceReader;->charSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
