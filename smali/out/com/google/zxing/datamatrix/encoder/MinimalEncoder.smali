.class public final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;,
        Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    }
.end annotation


# static fields
.field static final C40_SHIFT2_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1b

    new-array v0, v0, [C

    .line 71
    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->C40_SHIFT2_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(C)Z
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift1Set(C)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(C)Z
    .registers 1

    .line 61
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInTextShift1Set(C)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(CI)Z
    .registers 2

    .line 61
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift2Set(CI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(CI)Z
    .registers 2

    .line 61
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInTextShift2Set(CI)Z

    move-result p0

    return p0
.end method

.method static addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .registers 5

    .line 157
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$100(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v0

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$200(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    aget-object v1, p0, v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_2d

    aget-object v1, p0, v0

    .line 159
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v1

    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v2

    if-le v1, v2, :cond_39

    .line 160
    :cond_2d
    aget-object p0, p0, v0

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ordinal()I

    move-result v0

    aput-object p1, p0, v0

    :cond_39
    return-void
.end method

.method static addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 204
    invoke-virtual {v7, v9}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isECI(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 205
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    return-void

    .line 209
    :cond_20
    invoke-virtual {v7, v9}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz p3, :cond_31

    .line 210
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v2, :cond_f7

    .line 212
    :cond_31
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    const/4 v13, 0x2

    if-eqz v0, :cond_5e

    invoke-virtual {v7, v9, v13}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v0

    if-eqz v0, :cond_5e

    add-int/lit8 v0, v9, 0x1

    .line 213
    invoke-virtual {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 215
    new-instance v14, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v8, v14}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    goto :goto_71

    .line 218
    :cond_5e
    new-instance v14, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v8, v14}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :goto_71
    new-array v14, v13, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    .line 221
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    aput-object v0, v14, v11

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    aput-object v0, v14, v12

    move v15, v11

    :goto_7c
    if-ge v15, v13, :cond_a9

    .line 222
    aget-object v2, v14, v15

    new-array v0, v12, [I

    .line 224
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v1, :cond_88

    move v1, v12

    goto :goto_89

    :cond_88
    move v1, v11

    :goto_89
    invoke-static {v7, v9, v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I

    move-result v1

    if-lez v1, :cond_a5

    .line 225
    new-instance v6, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    aget v4, v0, v11

    const/16 v16, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object v11, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v8, v11}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :cond_a5
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x0

    goto :goto_7c

    .line 229
    :cond_a9
    invoke-virtual {v7, v9, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 230
    invoke-virtual {v7, v9}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v0

    if-eqz v0, :cond_e4

    add-int/lit8 v0, v9, 0x1

    .line 231
    invoke-virtual {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v0

    if-eqz v0, :cond_e4

    add-int/lit8 v0, v9, 0x2

    .line 232
    invoke-virtual {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 233
    new-instance v11, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v8, v11}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    .line 236
    :cond_e4
    new-instance v11, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v8, v11}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :cond_f7
    const/4 v11, 0x0

    :goto_f8
    if-ge v11, v10, :cond_122

    add-int v0, v9, v11

    .line 244
    invoke-virtual {v7, v0, v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v1

    if-eqz v1, :cond_122

    invoke-virtual {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 245
    new-instance v13, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v3, p2

    move v4, v11

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v8, v13}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    goto :goto_f8

    :cond_122
    if-ne v11, v10, :cond_14a

    const/4 v0, 0x4

    .line 250
    invoke-virtual {v7, v9, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->haveNCharacters(II)Z

    move-result v0

    if-eqz v0, :cond_14a

    add-int/lit8 v0, v9, 0x3

    invoke-virtual {v7, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 251
    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :cond_14a
    return-void
.end method

.method static encode(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)[B
    .registers 13

    .line 153
    new-instance v7, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$1;)V

    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeMinimally(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    .line 110
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Ljava/lang/String;
    .registers 7

    const-string v0, "[)>\u001e05\u001d"

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x7

    const-string v2, "\u001e\u0004"

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    goto :goto_38

    :cond_1d
    const-string v0, "[)>\u001e06\u001d"

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    .line 135
    :goto_38
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;I)[B

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method static encodeMinimally(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;)Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;
    .registers 10

    .line 441
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x6

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v1, v2, v5

    .line 445
    const-class v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    const/4 v2, 0x0

    .line 446
    invoke-static {p0, v1, v5, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    move v6, v3

    :goto_1d
    if-gt v6, v0, :cond_3f

    move v7, v5

    :goto_20
    if-ge v7, v4, :cond_30

    .line 450
    aget-object v8, v1, v6

    aget-object v8, v8, v7

    if-eqz v8, :cond_2d

    if-ge v6, v0, :cond_2d

    .line 451
    invoke-static {p0, v1, v6, v8}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :cond_2d
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_30
    move v7, v5

    :goto_31
    if-ge v7, v4, :cond_3c

    add-int/lit8 v8, v6, -0x1

    .line 456
    aget-object v8, v1, v8

    aput-object v2, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_3f
    const/4 v2, -0x1

    const v6, 0x7fffffff

    :goto_43
    if-ge v5, v4, :cond_61

    .line 463
    aget-object v7, v1, v0

    aget-object v7, v7, v5

    if-eqz v7, :cond_5e

    if-lt v5, v3, :cond_56

    const/4 v8, 0x3

    if-gt v5, v8, :cond_56

    .line 465
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v7

    add-int/2addr v7, v3

    goto :goto_5a

    :cond_56
    invoke-static {v7}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->access$300(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)I

    move-result v7

    :goto_5a
    if-ge v7, v6, :cond_5e

    move v2, v5

    move v6, v7

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    :cond_61
    if-ltz v2, :cond_6d

    .line 477
    new-instance p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;

    aget-object v0, v1, v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Result;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    return-object p0

    .line 475
    :cond_6d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to encode \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I
    .registers 9

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    .line 173
    :goto_3
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v3

    if-ge v1, v3, :cond_7c

    .line 174
    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->isECI(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 175
    aput v0, p3, v0

    return v0

    .line 178
    :cond_12
    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->charAt(I)C

    move-result v3

    if-eqz p2, :cond_1e

    .line 179
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v4

    if-nez v4, :cond_26

    :cond_1e
    if-nez p2, :cond_29

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 181
    :cond_29
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->getFNC1Character()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v4

    if-nez v4, :cond_36

    add-int/lit8 v2, v2, 0x2

    goto :goto_57

    :cond_36
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    if-lt v3, v4, :cond_55

    if-eqz p2, :cond_47

    add-int/lit8 v4, v3, -0x80

    int-to-char v4, v4

    .line 185
    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v4

    if-nez v4, :cond_52

    :cond_47
    if-nez p2, :cond_55

    add-int/lit8 v3, v3, -0x80

    int-to-char v3, v3

    .line 186
    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v3

    if-eqz v3, :cond_55

    :cond_52
    add-int/lit8 v2, v2, 0x3

    goto :goto_57

    :cond_55
    add-int/lit8 v2, v2, 0x4

    .line 193
    :goto_57
    rem-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_6d

    add-int/lit8 v3, v2, -0x2

    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_6a

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->length()I

    move-result v4

    if-ne v3, v4, :cond_6a

    goto :goto_6d

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6d
    :goto_6d
    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 194
    aput v1, p3, v0

    int-to-double p0, v2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    div-double/2addr p0, p2

    .line 195
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    .line 198
    :cond_7c
    aput v0, p3, v0

    return v0
.end method

.method static isExtendedASCII(CI)Z
    .registers 2

    if-eq p0, p1, :cond_c

    const/16 p1, 0x80

    if-lt p0, p1, :cond_c

    const/16 p1, 0xff

    if-gt p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static isInC40Shift1Set(C)Z
    .registers 2

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static isInC40Shift2Set(CI)Z
    .registers 8

    .line 87
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->C40_SHIFT2_CHARS:[C

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    const/4 v4, 0x1

    if-ge v3, v1, :cond_10

    aget-char v5, v0, v3

    if-ne v5, p0, :cond_d

    return v4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    if-ne p0, p1, :cond_13

    move v2, v4

    :cond_13
    return v2
.end method

.method private static isInTextShift1Set(C)Z
    .registers 1

    .line 96
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift1Set(C)Z

    move-result p0

    return p0
.end method

.method private static isInTextShift2Set(CI)Z
    .registers 2

    .line 100
    invoke-static {p0, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isInC40Shift2Set(CI)Z

    move-result p0

    return p0
.end method
