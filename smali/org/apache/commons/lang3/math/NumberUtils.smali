.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    const-wide/16 v0, -0x1

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    const/4 v2, -0x1

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 47
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 49
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 51
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 53
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 55
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 57
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    const-wide/16 v0, 0x0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const/high16 v0, -0x40800000    # -1.0f

    .line 69
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(BB)I
    .registers 2

    sub-int/2addr p0, p1

    return p0
.end method

.method public static compare(II)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static compare(JJ)I
    .registers 4

    cmp-long p0, p0, p2

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    if-gez p0, :cond_a

    const/4 p0, -0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x1

    :goto_b
    return p0
.end method

.method public static compare(SS)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-ge p0, p1, :cond_8

    const/4 p0, -0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 788
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 791
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 798
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 796
    :cond_1c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is not a valid number."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_35
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "A blank string is not a valid number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "-"

    .line 755
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "0x"

    .line 759
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_42

    const-string v1, "0X"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_42

    :cond_1d
    const-string v1, "#"

    .line 762
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_28

    add-int/lit8 v1, v0, 0x1

    goto :goto_44

    :cond_28
    const-string v1, "0"

    .line 765
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_3e

    const/16 v1, 0x8

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_44

    :cond_3e
    const/16 v2, 0xa

    move v1, v0

    goto :goto_44

    :cond_42
    :goto_42
    add-int/lit8 v1, v0, 0x2

    .line 770
    :goto_44
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v0, :cond_53

    .line 771
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_53
    return-object v3
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 698
    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 682
    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 717
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 735
    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 455
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_242

    const-string v2, "0x"

    const-string v3, "0X"

    const-string v4, "-0x"

    const-string v5, "-0X"

    const-string v6, "#"

    const-string v7, "-#"

    .line 459
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    const/4 v4, 0x6

    if-ge v3, v4, :cond_30

    .line 461
    aget-object v4, v1, v3

    .line 462
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 463
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_31

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_30
    move v1, v2

    :goto_31
    if-lez v1, :cond_6f

    move v0, v1

    .line 469
    :goto_34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_47

    .line 470
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_47

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 477
    :cond_47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v0, 0x10

    if-gt v1, v0, :cond_6a

    const/16 v3, 0x37

    if-ne v1, v0, :cond_57

    if-le v2, v3, :cond_57

    goto :goto_6a

    :cond_57
    const/16 v0, 0x8

    if-gt v1, v0, :cond_65

    if-ne v1, v0, :cond_60

    if-le v2, v3, :cond_60

    goto :goto_65

    .line 484
    :cond_60
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 482
    :cond_65
    :goto_65
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 479
    :cond_6a
    :goto_6a
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 486
    :cond_6f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    .line 490
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x65

    .line 491
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v7, 0x45

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    const-string v7, " is not a valid number."

    const/4 v8, -0x1

    if-le v5, v8, :cond_c5

    if-le v6, v8, :cond_ba

    if-lt v6, v5, :cond_a3

    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v6, v9, :cond_a3

    add-int/lit8 v9, v5, 0x1

    .line 500
    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_c0

    .line 498
    :cond_a3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ba
    add-int/lit8 v9, v5, 0x1

    .line 502
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 504
    :goto_c0
    invoke-static {p0, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_ee

    :cond_c5
    if-le v6, v8, :cond_e9

    .line 507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v6, v5, :cond_d2

    .line 510
    invoke-static {p0, v6}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_ed

    .line 508
    :cond_d2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_e9
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_ed
    move-object v9, v0

    .line 516
    :goto_ee
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-nez v10, :cond_1c0

    if-eq v1, v4, :cond_1c0

    if-le v6, v8, :cond_10c

    .line 517
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v6, v4, :cond_10c

    add-int/2addr v6, v3

    .line 518
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 523
    :cond_10c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 524
    invoke-static {v5}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_123

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_123

    move v5, v3

    goto :goto_124

    :cond_123
    move v5, v2

    :goto_124
    const/16 v6, 0x44

    if-eq v1, v6, :cond_18e

    const/16 v6, 0x46

    if-eq v1, v6, :cond_179

    const/16 v6, 0x4c

    if-eq v1, v6, :cond_13c

    const/16 v6, 0x64

    if-eq v1, v6, :cond_18e

    const/16 v6, 0x66

    if-eq v1, v6, :cond_179

    const/16 v5, 0x6c

    if-ne v1, v5, :cond_1a9

    :cond_13c
    if-nez v9, :cond_162

    if-nez v0, :cond_162

    .line 528
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_152

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_158

    :cond_152
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 532
    :cond_158
    :try_start_158
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_15c
    .catch Ljava/lang/NumberFormatException; {:try_start_158 .. :try_end_15c} :catch_15d

    return-object p0

    .line 536
    :catch_15d
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 539
    :cond_162
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_179
    :try_start_179
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_18e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_187
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_187} :catch_18e

    cmpl-float v1, v1, v11

    if-nez v1, :cond_18d

    if-eqz v5, :cond_18e

    :cond_18d
    return-object v0

    .line 557
    :catch_18e
    :cond_18e
    :try_start_18e
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_1a4

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v1
    :try_end_19c
    .catch Ljava/lang/NumberFormatException; {:try_start_18e .. :try_end_19c} :catch_1a4

    float-to-double v1, v1

    cmpl-double v1, v1, v12

    if-nez v1, :cond_1a3

    if-eqz v5, :cond_1a4

    :cond_1a3
    return-object v0

    .line 565
    :catch_1a4
    :cond_1a4
    :try_start_1a4
    invoke-static {v4}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_1a8
    .catch Ljava/lang/NumberFormatException; {:try_start_1a4 .. :try_end_1a8} :catch_1a9

    return-object p0

    .line 571
    :catch_1a9
    :cond_1a9
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c0
    if-le v6, v8, :cond_1d2

    .line 577
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v6, v1, :cond_1d2

    add-int/2addr v6, v3

    .line 578
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1d2
    if-nez v9, :cond_1e5

    if-nez v0, :cond_1e5

    .line 585
    :try_start_1d6
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1da
    .catch Ljava/lang/NumberFormatException; {:try_start_1d6 .. :try_end_1da} :catch_1db

    return-object p0

    .line 590
    :catch_1db
    :try_start_1db
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0
    :try_end_1df
    .catch Ljava/lang/NumberFormatException; {:try_start_1db .. :try_end_1df} :catch_1e0

    return-object p0

    .line 594
    :catch_1e0
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 598
    :cond_1e5
    invoke-static {v5}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f2

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f2

    move v2, v3

    .line 600
    :cond_1f2
    :try_start_1f2
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 601
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 602
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v3

    if-nez v3, :cond_219

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v11

    if-nez v3, :cond_20a

    if-eqz v2, :cond_219

    :cond_20a
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_219

    return-object v0

    .line 607
    :cond_219
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_23d

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v0, v3, v12

    if-nez v0, :cond_229

    if-eqz v2, :cond_23d

    .line 608
    :cond_229
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 609
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0
    :try_end_239
    .catch Ljava/lang/NumberFormatException; {:try_start_1f2 .. :try_end_239} :catch_23d

    if-nez p0, :cond_23c

    return-object v1

    :cond_23c
    return-object v0

    .line 617
    :catch_23d
    :cond_23d
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 456
    :cond_242
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "A blank string is not a valid number"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getMantissa(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 629
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_11

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_f

    goto :goto_11

    :cond_f
    move v1, v0

    goto :goto_12

    :cond_11
    :goto_11
    move v1, v3

    :goto_12
    if-eqz v1, :cond_19

    .line 645
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    :cond_19
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1d
    return-object p0
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 660
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_9
    const/4 v2, 0x0

    if-ltz v1, :cond_18

    .line 661
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_15

    return v2

    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 665
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    return v0
.end method

.method public static isCreatable(Ljava/lang/String;)Z
    .registers 18

    .line 1400
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1403
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1404
    array-length v2, v0

    .line 1410
    aget-char v3, v0, v1

    const/16 v4, 0x2d

    const/16 v5, 0x2b

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1b

    if-ne v3, v5, :cond_19

    goto :goto_1b

    :cond_19
    move v7, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v7, v6

    :goto_1c
    if-ne v7, v6, :cond_22

    if-ne v3, v5, :cond_22

    move v3, v6

    goto :goto_23

    :cond_22
    move v3, v1

    :goto_23
    add-int/lit8 v8, v7, 0x1

    const/16 v9, 0x46

    const/16 v10, 0x66

    const/16 v11, 0x39

    const/16 v12, 0x30

    if-le v2, v8, :cond_75

    .line 1412
    aget-char v13, v0, v7

    if-ne v13, v12, :cond_75

    .line 1413
    aget-char v13, v0, v8

    const/16 v14, 0x78

    if-eq v13, v14, :cond_55

    const/16 v14, 0x58

    if-ne v13, v14, :cond_3e

    goto :goto_55

    .line 1427
    :cond_3e
    invoke-static {v13}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    if-eqz v13, :cond_75

    .line 1430
    :goto_44
    array-length v2, v0

    if-ge v8, v2, :cond_54

    .line 1431
    aget-char v2, v0, v8

    if-lt v2, v12, :cond_53

    const/16 v3, 0x37

    if-le v2, v3, :cond_50

    goto :goto_53

    :cond_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    :cond_53
    :goto_53
    return v1

    :cond_54
    return v6

    :cond_55
    :goto_55
    add-int/lit8 v7, v7, 0x2

    if-ne v7, v2, :cond_5a

    return v1

    .line 1419
    :cond_5a
    :goto_5a
    array-length v2, v0

    if-ge v7, v2, :cond_74

    .line 1420
    aget-char v2, v0, v7

    if-lt v2, v12, :cond_63

    if-le v2, v11, :cond_70

    :cond_63
    const/16 v3, 0x61

    if-lt v2, v3, :cond_69

    if-le v2, v10, :cond_70

    :cond_69
    const/16 v3, 0x41

    if-lt v2, v3, :cond_73

    if-le v2, v9, :cond_70

    goto :goto_73

    :cond_70
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_73
    :goto_73
    return v1

    :cond_74
    return v6

    :cond_75
    add-int/lit8 v2, v2, -0x1

    move v8, v1

    move v13, v8

    move v14, v13

    move v15, v14

    :goto_7b
    const/16 v4, 0x45

    const/16 v5, 0x65

    const/16 v9, 0x2e

    if-lt v7, v2, :cond_da

    add-int/lit8 v10, v2, 0x1

    if-ge v7, v10, :cond_8e

    if-eqz v8, :cond_8e

    if-nez v13, :cond_8e

    const/16 v10, 0x66

    goto :goto_da

    .line 1476
    :cond_8e
    array-length v2, v0

    if-ge v7, v2, :cond_d4

    .line 1477
    aget-char v0, v0, v7

    if-lt v0, v12, :cond_a1

    if-gt v0, v11, :cond_a1

    .line 1478
    sget-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_JAVA_1_6:Z

    if-eqz v0, :cond_a0

    if-eqz v3, :cond_a0

    if-nez v15, :cond_a0

    return v1

    :cond_a0
    return v6

    :cond_a1
    if-eq v0, v5, :cond_d3

    if-ne v0, v4, :cond_a6

    goto :goto_d3

    :cond_a6
    if-ne v0, v9, :cond_af

    if-nez v15, :cond_ae

    if-eqz v14, :cond_ad

    goto :goto_ae

    :cond_ad
    return v13

    :cond_ae
    :goto_ae
    return v1

    :cond_af
    if-nez v8, :cond_c2

    const/16 v2, 0x64

    if-eq v0, v2, :cond_c1

    const/16 v2, 0x44

    if-eq v0, v2, :cond_c1

    const/16 v10, 0x66

    if-eq v0, v10, :cond_c1

    const/16 v2, 0x46

    if-ne v0, v2, :cond_c2

    :cond_c1
    return v13

    :cond_c2
    const/16 v2, 0x6c

    if-eq v0, v2, :cond_cc

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_cb

    goto :goto_cc

    :cond_cb
    return v1

    :cond_cc
    :goto_cc
    if-eqz v13, :cond_d3

    if-nez v14, :cond_d3

    if-nez v15, :cond_d3

    move v1, v6

    :cond_d3
    :goto_d3
    return v1

    :cond_d4
    if-nez v8, :cond_d9

    if-eqz v13, :cond_d9

    move v1, v6

    :cond_d9
    return v1

    :cond_da
    :goto_da
    const/16 v16, 0x46

    .line 1444
    aget-char v6, v0, v7

    if-lt v6, v12, :cond_e9

    if-gt v6, v11, :cond_e9

    move v8, v1

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v13, 0x1

    goto :goto_118

    :cond_e9
    if-ne v6, v9, :cond_f7

    if-nez v15, :cond_f6

    if-eqz v14, :cond_f0

    goto :goto_f6

    :cond_f0
    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v15, 0x1

    goto :goto_118

    :cond_f6
    :goto_f6
    return v1

    :cond_f7
    if-eq v6, v5, :cond_10c

    if-ne v6, v4, :cond_fc

    goto :goto_10c

    :cond_fc
    const/16 v4, 0x2b

    const/16 v5, 0x2d

    if-eq v6, v4, :cond_106

    if-ne v6, v5, :cond_105

    goto :goto_106

    :cond_105
    return v1

    :cond_106
    :goto_106
    if-nez v8, :cond_109

    return v1

    :cond_109
    move v8, v1

    move v13, v8

    goto :goto_118

    :cond_10c
    :goto_10c
    const/16 v4, 0x2b

    const/16 v5, 0x2d

    if-eqz v14, :cond_113

    return v1

    :cond_113
    if-nez v13, :cond_116

    return v1

    :cond_116
    const/4 v8, 0x1

    const/4 v14, 0x1

    :goto_118
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    move/from16 v9, v16

    const/4 v6, 0x1

    goto/16 :goto_7b
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .registers 1

    .line 1344
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1374
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->isCreatable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .registers 5

    .line 1534
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1537
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_17

    return v1

    .line 1540
    :cond_17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2b

    .line 1541
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_26

    return v1

    .line 1544
    :cond_26
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 1546
    :cond_2b
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static max(BBB)B
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([B)B
    .registers 4

    .line 1040
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1043
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 1044
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1045
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static max(DDD)D
    .registers 6

    .line 1313
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs max([D)D
    .registers 7

    .line 1065
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1068
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 1069
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_1f

    .line 1070
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 1073
    :cond_15
    aget-wide v3, p0, v2

    cmpl-double v5, v3, v0

    if-lez v5, :cond_1c

    move-wide v0, v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    return-wide v0
.end method

.method public static max(FFF)F
    .registers 3

    .line 1329
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static varargs max([F)F
    .registers 5

    .line 1093
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1096
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 1097
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    .line 1098
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 1101
    :cond_15
    aget v2, p0, v1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1c

    move v0, v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return v0
.end method

.method public static max(III)I
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([I)I
    .registers 4

    .line 992
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 995
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 996
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 997
    aget v2, p0, v1

    if-le v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static max(JJJ)J
    .registers 7

    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    move-wide p0, p2

    :cond_5
    cmp-long p2, p4, p0

    if-lez p2, :cond_a

    goto :goto_b

    :cond_a
    move-wide p4, p0

    :goto_b
    return-wide p4
.end method

.method public static varargs max([J)J
    .registers 7

    .line 968
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 971
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 972
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_14

    .line 973
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_11

    move-wide v0, v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    return-wide v0
.end method

.method public static max(SSS)S
    .registers 3

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs max([S)S
    .registers 4

    .line 1016
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1019
    aget-short v0, p0, v0

    const/4 v1, 0x1

    .line 1020
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1021
    aget-short v2, p0, v1

    if-le v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static min(BBB)B
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([B)B
    .registers 4

    .line 886
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 889
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 890
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 891
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static min(DDD)D
    .registers 6

    .line 1207
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs min([D)D
    .registers 7

    .line 911
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 914
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 915
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_1f

    .line 916
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_15

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 919
    :cond_15
    aget-wide v3, p0, v2

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1c

    move-wide v0, v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1f
    return-wide v0
.end method

.method public static min(FFF)F
    .registers 3

    .line 1223
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static varargs min([F)F
    .registers 5

    .line 939
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 942
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 943
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    .line 944
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 947
    :cond_15
    aget v2, p0, v1

    cmpg-float v3, v2, v0

    if-gez v3, :cond_1c

    move v0, v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    return v0
.end method

.method public static min(III)I
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([I)I
    .registers 4

    .line 838
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 841
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 842
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 843
    aget v2, p0, v1

    if-ge v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static min(JJJ)J
    .registers 7

    cmp-long v0, p2, p0

    if-gez v0, :cond_5

    move-wide p0, p2

    :cond_5
    cmp-long p2, p4, p0

    if-gez p2, :cond_a

    goto :goto_b

    :cond_a
    move-wide p4, p0

    :goto_b
    return-wide p4
.end method

.method public static varargs min([J)J
    .registers 7

    .line 814
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 817
    aget-wide v0, p0, v0

    const/4 v2, 0x1

    .line 818
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_14

    .line 819
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-gez v5, :cond_11

    move-wide v0, v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    return-wide v0
.end method

.method public static min(SSS)S
    .registers 3

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    goto :goto_7

    :cond_6
    move p2, p0

    :goto_7
    return p2
.end method

.method public static varargs min([S)S
    .registers 4

    .line 862
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 865
    aget-short v0, p0, v0

    const/4 v1, 0x1

    .line 866
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 867
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_f

    move v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return v0
.end method

.method public static toByte(Ljava/lang/String;)B
    .registers 2

    const/4 v0, 0x0

    .line 304
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result p0

    return p0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 329
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toDouble(Ljava/lang/String;)D
    .registers 3

    const-wide/16 v0, 0x0

    .line 252
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .registers 3

    if-nez p0, :cond_3

    return-wide p1

    .line 279
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p1
.end method

.method public static toFloat(Ljava/lang/String;)F
    .registers 2

    const/4 v0, 0x0

    .line 200
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 227
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 126
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, 0x0

    .line 150
    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .registers 3

    if-nez p0, :cond_3

    return-wide p1

    .line 175
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide p0

    :catch_8
    return-wide p1
.end method

.method public static toShort(Ljava/lang/String;)S
    .registers 2

    const/4 v0, 0x0

    .line 353
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result p0

    return p0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .registers 2

    if-nez p0, :cond_3

    return p1

    .line 378
    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return p0

    :catch_8
    return p1
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "The Array must not be null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 1116
    invoke-static {v2, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    const-string p0, "Array cannot be empty."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 1551
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_2b

    .line 1552
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v0

    :goto_14
    if-eqz v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    :cond_18
    if-le v1, v3, :cond_1b

    return v0

    :cond_1b
    if-nez v2, :cond_28

    .line 1559
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_28

    return v0

    :cond_28
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2b
    return v3
.end method
