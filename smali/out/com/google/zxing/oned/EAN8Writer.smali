.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN8Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x43


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 10

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_37

    const/16 v2, 0x8

    if-ne v0, v2, :cond_22

    .line 63
    :try_start_b
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4c

    .line 64
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents do not pass checksum"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1a
    .catch Lcom/google/zxing/FormatException; {:try_start_b .. :try_end_1a} :catch_1a

    .line 67
    :catch_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal contents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested contents should be 7 or 8 digits long, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_37
    :try_start_37
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_3b
    .catch Lcom/google/zxing/FormatException; {:try_start_37 .. :try_end_3b} :catch_9a

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    :goto_4c
    invoke-static {p1}, Lcom/google/zxing/oned/EAN8Writer;->checkNumeric(Ljava/lang/String;)V

    const/16 v0, 0x43

    new-array v0, v0, [Z

    .line 80
    sget-object v2, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v2, v4}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v2

    add-int/2addr v2, v3

    move v5, v3

    :goto_5d
    const/4 v6, 0x3

    const/16 v7, 0xa

    if-gt v5, v6, :cond_76

    .line 83
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 84
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v6, v7, v6

    invoke-static {v0, v2, v6, v3}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 87
    :cond_76
    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v0, v2, v5, v3}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x4

    :goto_7e
    if-gt v3, v1, :cond_94

    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 91
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v5, v6, v5

    invoke-static {v0, v2, v5, v4}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 93
    :cond_94
    sget-object p1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v0, v2, p1, v4}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    return-object v0

    :catch_9a
    move-exception p1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getSupportedWriteFormats()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
