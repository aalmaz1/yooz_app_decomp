.class Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.super Ljava/lang/Object;
.source "C40Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .registers 6

    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int p4, v0, p4

    .line 104
    invoke-virtual {p2, p4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 105
    iget p2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 106
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result p2

    .line 107
    invoke-virtual {p0, p2, p3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p2

    .line 108
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    return p2
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 206
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    mul-int/lit16 v1, v1, 0x640

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    mul-int/lit8 v3, v3, 0x28

    add-int/2addr v1, v3

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    add-int/2addr v1, p0

    add-int/2addr v1, v2

    .line 207
    div-int/lit16 p0, v1, 0x100

    int-to-char p0, p0

    .line 208
    rem-int/lit16 v1, v1, 0x100

    int-to-char v1, v1

    .line 209
    new-instance v4, Ljava/lang/String;

    new-array v3, v3, [C

    aput-char p0, v3, v0

    aput-char v1, v3, v2

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method static writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 113
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x3

    .line 114
    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .registers 10

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 65
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 66
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v1

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x3

    div-int/2addr v2, v4

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    .line 72
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v6

    add-int/2addr v6, v2

    .line 73
    invoke-virtual {p1, v6}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 74
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v2

    sub-int/2addr v2, v6

    .line 76
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    if-nez v6, :cond_5a

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    rem-int/2addr v7, v4

    if-ne v7, v5, :cond_4a

    if-eq v2, v5, :cond_4a

    .line 80
    invoke-direct {p0, p1, v0, v6, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    .line 82
    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    rem-int/2addr v5, v4

    if-ne v5, v3, :cond_79

    if-gt v1, v4, :cond_55

    if-eq v2, v3, :cond_79

    .line 83
    :cond_55
    invoke-direct {p0, p1, v0, v6, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    goto :goto_4a

    .line 88
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 89
    rem-int/2addr v1, v4

    if-nez v1, :cond_5

    .line 90
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 91
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 98
    :cond_79
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .registers 7

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_a

    const/4 p1, 0x3

    .line 163
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_a
    const/16 v2, 0x30

    if-lt p1, v2, :cond_1a

    const/16 v3, 0x39

    if-gt p1, v3, :cond_1a

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x4

    int-to-char p1, p1

    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_1a
    const/16 v2, 0x41

    if-lt p1, v2, :cond_2a

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_2a

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0xe

    int-to-char p1, p1

    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_2a
    const/4 v2, 0x2

    if-ge p1, v1, :cond_35

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_35
    const/16 v1, 0x2f

    if-gt p1, v1, :cond_43

    .line 180
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x21

    int-to-char p1, p1

    .line 181
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_43
    const/16 v1, 0x40

    if-gt p1, v1, :cond_53

    .line 185
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x3a

    add-int/lit8 p1, p1, 0xf

    int-to-char p1, p1

    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_53
    const/16 v1, 0x5f

    if-gt p1, v1, :cond_63

    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x5b

    add-int/lit8 p1, p1, 0x16

    int-to-char p1, p1

    .line 191
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_63
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_71

    .line 195
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x60

    int-to-char p1, p1

    .line 196
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_71
    const-string v0, "\u0001\u001e"

    .line 199
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x80

    int-to-char p1, p1

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v2

    return p1
.end method

.method encodeMaximal(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .registers 11

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const/4 v2, 0x0

    move v3, v2

    .line 31
    :cond_9
    :goto_9
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v4, :cond_2c

    .line 32
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v3

    .line 33
    iget v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v4, v6

    iput v4, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 34
    invoke-virtual {p0, v3, v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v3

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    rem-int/2addr v4, v5

    if-nez v4, :cond_9

    .line 36
    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    goto :goto_9

    .line 40
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eq v2, v4, :cond_5f

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    div-int/2addr v4, v5

    const/4 v7, 0x2

    mul-int/2addr v4, v7

    .line 43
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v8

    add-int/2addr v8, v4

    add-int/2addr v8, v6

    .line 44
    invoke-virtual {p1, v8}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v4

    sub-int/2addr v4, v8

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    rem-int/2addr v8, v5

    if-ne v8, v7, :cond_54

    if-ne v4, v7, :cond_5a

    :cond_54
    if-ne v8, v6, :cond_5f

    if-gt v3, v5, :cond_5a

    if-eq v4, v6, :cond_5f

    .line 49
    :cond_5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    iput v1, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 53
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6a

    const/16 v1, 0xe6

    .line 54
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 57
    :cond_6a
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public getEncodingMode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .registers 9

    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    .line 125
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    rem-int/2addr v3, v1

    .line 127
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v4

    add-int/2addr v4, v0

    .line 128
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 129
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    const/16 v5, 0xfe

    if-ne v3, v2, :cond_3a

    .line 132
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    :goto_26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_30

    .line 134
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_26

    .line 136
    :cond_30
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 137
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    goto :goto_6f

    :cond_3a
    const/4 v2, 0x1

    if-ne v0, v2, :cond_58

    if-ne v3, v2, :cond_58

    .line 140
    :goto_3f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_49

    .line 141
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_3f

    .line 143
    :cond_49
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 144
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 147
    :cond_52
    iget p2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr p2, v2

    iput p2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_6f

    :cond_58
    if-nez v3, :cond_73

    .line 149
    :goto_5a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v1, :cond_64

    .line 150
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_5a

    :cond_64
    if-gtz v0, :cond_6c

    .line 152
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 153
    :cond_6c
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 158
    :cond_6f
    :goto_6f
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    return-void

    .line 156
    :cond_73
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected case. Please report!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
