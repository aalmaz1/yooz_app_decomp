.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final NOT_FOUND:I = -0x1

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2e

    .line 96
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 111
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 118
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x2f

    .line 119
    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_1b

    :cond_17
    const/16 v0, 0x5c

    .line 121
    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    :goto_1b
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 486
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    return-object v1

    :cond_8
    if-lez v0, :cond_f

    .line 491
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    if-nez p0, :cond_12

    return-object v1

    .line 496
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    .line 498
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 500
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 501
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 504
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static directoryContains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_16

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    .line 543
    :cond_6
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v1, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    .line 547
    :cond_f
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 536
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Directory must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 930
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    return-object v0

    .line 934
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_18

    if-eqz p1, :cond_17

    .line 936
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_17
    return-object p0

    .line 941
    :cond_18
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_24

    .line 943
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    add-int/2addr v0, p1

    if-nez v0, :cond_29

    add-int/lit8 v0, v0, 0x1

    .line 949
    :cond_29
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 846
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    return-object v0

    .line 850
    :cond_b
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    add-int/2addr p1, v0

    .line 852
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    if-ltz v0, :cond_23

    if-lt v1, p1, :cond_1b

    goto :goto_23

    .line 855
    :cond_1b
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 856
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    return-object p0

    :cond_23
    :goto_23
    const-string p0, ""

    return-object p0
.end method

.method private static doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    return-object v2

    .line 353
    :cond_8
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_12

    return-object v0

    .line 359
    :cond_12
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v5, v3, 0x2

    .line 364
    new-array v6, v5, [C

    .line 365
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7, v6, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 368
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v1, v0, :cond_2b

    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    :cond_2b
    move v7, v8

    :goto_2c
    if-ge v7, v5, :cond_37

    .line 370
    aget-char v9, v6, v7

    if-ne v9, v0, :cond_34

    .line 371
    aput-char v1, v6, v7

    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_37
    add-int/lit8 v0, v3, -0x1

    .line 377
    aget-char v0, v6, v0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_45

    add-int/lit8 v0, v3, 0x1

    .line 378
    aput-char v1, v6, v3

    move v3, v0

    move v0, v8

    goto :goto_46

    :cond_45
    move v0, v5

    :goto_46
    add-int/lit8 v7, v4, 0x1

    move v9, v7

    :goto_49
    if-ge v9, v3, :cond_60

    .line 384
    aget-char v10, v6, v9

    if-ne v10, v1, :cond_5e

    add-int/lit8 v10, v9, -0x1

    aget-char v11, v6, v10

    if-ne v11, v1, :cond_5e

    sub-int v11, v3, v9

    .line 385
    invoke-static {v6, v9, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v9, v9, -0x1

    :cond_5e
    add-int/2addr v9, v5

    goto :goto_49

    :cond_60
    move v9, v7

    :goto_61
    const/16 v10, 0x2e

    if-ge v9, v3, :cond_89

    .line 393
    aget-char v11, v6, v9

    if-ne v11, v1, :cond_87

    add-int/lit8 v11, v9, -0x1

    aget-char v12, v6, v11

    if-ne v12, v10, :cond_87

    if-eq v9, v7, :cond_77

    add-int/lit8 v10, v9, -0x2

    aget-char v10, v6, v10

    if-ne v10, v1, :cond_87

    :cond_77
    add-int/lit8 v10, v3, -0x1

    if-ne v9, v10, :cond_7c

    move v0, v5

    :cond_7c
    add-int/lit8 v10, v9, 0x1

    sub-int v12, v3, v9

    .line 398
    invoke-static {v6, v10, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v9, v9, -0x1

    :cond_87
    add-int/2addr v9, v5

    goto :goto_61

    :cond_89
    add-int/lit8 v9, v4, 0x2

    move v11, v9

    :goto_8c
    if-ge v11, v3, :cond_d2

    .line 407
    aget-char v12, v6, v11

    if-ne v12, v1, :cond_d0

    add-int/lit8 v12, v11, -0x1

    aget-char v12, v6, v12

    if-ne v12, v10, :cond_d0

    add-int/lit8 v12, v11, -0x2

    aget-char v12, v6, v12

    if-ne v12, v10, :cond_d0

    if-eq v11, v9, :cond_a6

    add-int/lit8 v12, v11, -0x3

    aget-char v12, v6, v12

    if-ne v12, v1, :cond_d0

    :cond_a6
    if-ne v11, v9, :cond_a9

    return-object v2

    :cond_a9
    add-int/lit8 v12, v3, -0x1

    if-ne v11, v12, :cond_ae

    move v0, v5

    :cond_ae
    add-int/lit8 v12, v11, -0x4

    :goto_b0
    if-lt v12, v4, :cond_c6

    .line 417
    aget-char v13, v6, v12

    if-ne v13, v1, :cond_c3

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v14, v12, 0x1

    sub-int v15, v3, v11

    .line 419
    invoke-static {v6, v13, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v11, v12

    sub-int/2addr v3, v11

    move v11, v14

    goto :goto_d0

    :cond_c3
    add-int/lit8 v12, v12, -0x1

    goto :goto_b0

    :cond_c6
    add-int/lit8 v12, v11, 0x1

    sub-int v11, v3, v11

    .line 426
    invoke-static {v6, v12, v6, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v12, v4

    sub-int/2addr v3, v12

    move v11, v7

    :cond_d0
    :goto_d0
    add-int/2addr v11, v5

    goto :goto_8c

    :cond_d2
    if-gtz v3, :cond_d7

    const-string v0, ""

    return-object v0

    :cond_d7
    if-gt v3, v4, :cond_df

    .line 436
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_df
    if-eqz v0, :cond_e9

    if-eqz p2, :cond_e9

    .line 439
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 441
    :cond_e9
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v5

    invoke-direct {v0, v6, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1092
    sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
    .registers 4

    if-eqz p0, :cond_25

    if-nez p1, :cond_5

    goto :goto_25

    :cond_5
    if-eqz p2, :cond_1c

    .line 1162
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1163
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    goto :goto_1c

    .line 1165
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Error normalizing one or both of the file names"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    if-nez p3, :cond_20

    .line 1170
    sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1172
    :cond_20
    invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_25
    :goto_25
    if-nez p0, :cond_2b

    if-nez p1, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 1123
    sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 1140
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1107
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method private static failIfNullBytePresent(Ljava/lang/String;)V
    .registers 4

    .line 986
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    .line 988
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_10

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 989
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null byte present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    return-void
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1014
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1039
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const-string p0, ""

    return-object p0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 1043
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 886
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 916
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 974
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 975
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 976
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 804
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 832
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 767
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    return-object v0

    .line 771
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_39

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    const/4 v0, 0x0

    .line 775
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 776
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .registers 10

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 637
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 641
    :cond_c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_15

    return v0

    :cond_15
    const/16 v4, 0x7e

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v1, v6, :cond_23

    if-ne v2, v4, :cond_1e

    return v5

    .line 649
    :cond_1e
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result p0

    return p0

    :cond_23
    const/16 v7, 0x5c

    const/16 v8, 0x2f

    if-ne v2, v4, :cond_43

    .line 652
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 653
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-ne v2, v0, :cond_37

    if-ne p0, v0, :cond_37

    add-int/2addr v1, v6

    return v1

    :cond_37
    if-ne v2, v0, :cond_3a

    move v2, p0

    :cond_3a
    if-ne p0, v0, :cond_3d

    move p0, v2

    .line 659
    :cond_3d
    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_41
    add-int/2addr p0, v6

    return p0

    .line 661
    :cond_43
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_69

    .line 663
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_65

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_65

    if-eq v1, v5, :cond_64

    .line 665
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result p0

    if-nez p0, :cond_62

    goto :goto_64

    :cond_62
    const/4 p0, 0x3

    return p0

    :cond_64
    :goto_64
    return v5

    :cond_65
    if-ne v2, v8, :cond_68

    return v6

    :cond_68
    return v0

    .line 674
    :cond_69
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 675
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 676
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-ne v1, v0, :cond_81

    if-eq p0, v0, :cond_91

    :cond_81
    if-eq v1, v5, :cond_91

    if-ne p0, v5, :cond_86

    goto :goto_91

    :cond_86
    if-ne v1, v0, :cond_89

    move v1, p0

    :cond_89
    if-ne p0, v0, :cond_8c

    move p0, v1

    .line 682
    :cond_8c
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_41

    :cond_91
    :goto_91
    return v0

    .line 684
    :cond_92
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result p0

    return p0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x2e

    .line 728
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 729
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result p0

    if-le p0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    return v0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    const/16 v0, 0x2f

    .line 705
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x5c

    .line 706
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 707
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1192
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    if-eqz p1, :cond_19

    .line 1194
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_19

    .line 1197
    :cond_10
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1198
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1195
    :cond_19
    :goto_19
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1247
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_2d

    .line 1249
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_2d

    .line 1252
    :cond_11
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1253
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1254
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_2c
    return v0

    .line 1250
    :cond_2d
    :goto_2d
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_35

    move v0, v1

    :cond_35
    return v0
.end method

.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1217
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_23

    .line 1219
    array-length v2, p1

    if-nez v2, :cond_e

    goto :goto_23

    .line 1222
    :cond_e
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1223
    array-length v2, p1

    move v3, v0

    :goto_14
    if-ge v3, v2, :cond_22

    aget-object v4, p1, v3

    .line 1224
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_22
    return v0

    .line 1220
    :cond_23
    :goto_23
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2b

    move v0, v1

    :cond_2b
    return v0
.end method

.method private static isSeparator(C)Z
    .registers 2

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_b

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method static isSystemWindows()Z
    .registers 2

    .line 139
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 195
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x2f

    goto :goto_7

    :cond_5
    const/16 p1, 0x5c

    :goto_7
    const/4 v0, 0x1

    .line 243
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 289
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x2f

    goto :goto_7

    :cond_5
    const/16 p1, 0x5c

    :goto_7
    const/4 v0, 0x0

    .line 337
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1069
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 1071
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return-object p0

    :cond_f
    const/4 v1, 0x0

    .line 1075
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 587
    :cond_4
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 588
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 590
    :cond_f
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_12

    const/16 v0, 0x5c

    .line 558
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    goto :goto_12

    :cond_c
    const/16 v1, 0x2f

    .line 561
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_12
    :goto_12
    return-object p0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_12

    const/16 v0, 0x2f

    .line 571
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    goto :goto_12

    :cond_c
    const/16 v1, 0x5c

    .line 574
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_12
    :goto_12
    return-object p0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/16 v0, 0x3f

    .line 1422
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2a

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_18

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_18

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v3

    return-object v0

    .line 1426
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 1427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1430
    array-length v5, p0

    move v6, v3

    move v7, v6

    :goto_29
    if-ge v6, v5, :cond_59

    aget-char v8, p0, v6

    if-eq v8, v0, :cond_36

    if-ne v8, v2, :cond_32

    goto :goto_36

    .line 1442
    :cond_32
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 1432
    :cond_36
    :goto_36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_46

    .line 1433
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_46
    if-ne v8, v0, :cond_4e

    const-string v7, "?"

    .line 1437
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_4e
    if-eq v7, v2, :cond_55

    const-string v7, "*"

    .line 1439
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_29

    .line 1446
    :cond_59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_66

    .line 1447
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    :cond_66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1285
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .registers 11

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_a0

    if-nez p1, :cond_d

    goto/16 :goto_a0

    :cond_d
    if-nez p2, :cond_11

    .line 1336
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1338
    :cond_11
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1342
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move v3, v1

    move v4, v3

    move v5, v4

    .line 1346
    :cond_1d
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v6

    if-lez v6, :cond_2e

    .line 1347
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1348
    aget v5, v3, v1

    .line 1349
    aget v4, v3, v0

    move v3, v0

    .line 1354
    :cond_2e
    :goto_2e
    array-length v6, p1

    if-ge v5, v6, :cond_90

    .line 1356
    aget-object v6, p1, v5

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    add-int/lit8 v4, v4, 0x1

    .line 1359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v4, v6, :cond_44

    goto :goto_90

    :cond_44
    :goto_44
    move v3, v1

    goto :goto_8d

    .line 1364
    :cond_46
    aget-object v6, p1, v5

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 1367
    array-length v3, p1

    sub-int/2addr v3, v0

    if-ne v5, v3, :cond_59

    .line 1368
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v4, v3

    :cond_59
    move v3, v0

    goto :goto_8d

    :cond_5b
    if-eqz v3, :cond_7c

    .line 1375
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v4, v6}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_67

    goto :goto_90

    :cond_67
    add-int/lit8 v3, v4, 0x1

    .line 1380
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v3, v6}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_85

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v5, v6, v1

    aput v3, v6, v0

    .line 1382
    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    .line 1386
    :cond_7c
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v4, v6}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_85

    goto :goto_90

    .line 1393
    :cond_85
    :goto_85
    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_44

    :goto_8d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 1401
    :cond_90
    :goto_90
    array-length v6, p1

    if-ne v5, v6, :cond_9a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v4, v6, :cond_9a

    return v0

    .line 1405
    :cond_9a
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v6

    if-gtz v6, :cond_1d

    :cond_a0
    :goto_a0
    return v1
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1311
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method
