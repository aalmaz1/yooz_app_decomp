.class final Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueInfoBuilder"
.end annotation


# static fields
.field private static final BORDER_AND_EDGE_TYPE_NONE:I = 0x0

.field private static final BORDER_AND_EDGE_TYPE_UNIFORM:I = 0x3

.field public static final COLOR_SOLID_BLACK:I

.field public static final COLOR_SOLID_WHITE:I

.field public static final COLOR_TRANSPARENT:I

.field private static final DEFAULT_PRIORITY:I = 0x4

.field private static final DIRECTION_BOTTOM_TO_TOP:I = 0x3

.field private static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field private static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final DIRECTION_TOP_TO_BOTTOM:I = 0x2

.field private static final HORIZONTAL_SIZE:I = 0xd1

.field private static final JUSTIFICATION_CENTER:I = 0x2

.field private static final JUSTIFICATION_FULL:I = 0x3

.field private static final JUSTIFICATION_LEFT:I = 0x0

.field private static final JUSTIFICATION_RIGHT:I = 0x1

.field private static final MAXIMUM_ROW_COUNT:I = 0xf

.field private static final PEN_FONT_STYLE_DEFAULT:I = 0x0

.field private static final PEN_FONT_STYLE_MONOSPACED_WITHOUT_SERIFS:I = 0x3

.field private static final PEN_FONT_STYLE_MONOSPACED_WITH_SERIFS:I = 0x1

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITHOUT_SERIFS:I = 0x4

.field private static final PEN_FONT_STYLE_PROPORTIONALLY_SPACED_WITH_SERIFS:I = 0x2

.field private static final PEN_OFFSET_NORMAL:I = 0x1

.field private static final PEN_SIZE_STANDARD:I = 0x1

.field private static final PEN_STYLE_BACKGROUND:[I

.field private static final PEN_STYLE_EDGE_TYPE:[I

.field private static final PEN_STYLE_FONT_STYLE:[I

.field private static final RELATIVE_CUE_SIZE:I = 0x63

.field private static final VERTICAL_SIZE:I = 0x4a

.field private static final WINDOW_STYLE_FILL:[I

.field private static final WINDOW_STYLE_JUSTIFICATION:[I

.field private static final WINDOW_STYLE_PRINT_DIRECTION:[I

.field private static final WINDOW_STYLE_SCROLL_DIRECTION:[I

.field private static final WINDOW_STYLE_WORD_WRAP:[Z


# instance fields
.field private anchorId:I

.field private backgroundColor:I

.field private backgroundColorStartPosition:I

.field private final captionStringBuilder:Landroid/text/SpannableStringBuilder;

.field private defined:Z

.field private foregroundColor:I

.field private foregroundColorStartPosition:I

.field private horizontalAnchor:I

.field private italicsStartPosition:I

.field private justification:I

.field private penStyleId:I

.field private priority:I

.field private relativePositioning:Z

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private rowCount:I

.field private underlineStartPosition:I

.field private verticalAnchor:I

.field private visible:Z

.field private windowFillColor:I

.field private windowStyleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 880
    invoke-static {v0, v0, v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    .line 881
    invoke-static {v1, v1, v1, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    const/4 v3, 0x3

    .line 882
    invoke-static {v1, v1, v1, v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v4

    sput v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    const/4 v5, 0x7

    new-array v6, v5, [I

    .line 898
    fill-array-data v6, :array_6a

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    new-array v6, v5, [I

    .line 904
    fill-array-data v6, :array_7c

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    new-array v6, v5, [I

    .line 910
    fill-array-data v6, :array_8e

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    new-array v6, v5, [Z

    .line 916
    fill-array-data v6, :array_a0

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    new-array v6, v5, [I

    aput v2, v6, v1

    const/4 v7, 0x1

    aput v4, v6, v7

    aput v2, v6, v0

    aput v2, v6, v3

    const/4 v8, 0x4

    aput v4, v6, v8

    const/4 v9, 0x5

    aput v2, v6, v9

    const/4 v10, 0x6

    aput v2, v6, v10

    .line 918
    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    new-array v6, v5, [I

    .line 930
    fill-array-data v6, :array_a8

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    new-array v6, v5, [I

    .line 940
    fill-array-data v6, :array_ba

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    new-array v5, v5, [I

    aput v2, v5, v1

    aput v2, v5, v7

    aput v2, v5, v0

    aput v2, v5, v3

    aput v2, v5, v8

    aput v4, v5, v9

    aput v4, v5, v10

    .line 946
    sput-object v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    return-void

    nop

    :array_6a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_8e
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_a0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_ba
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 985
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 986
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    return-void
.end method

.method public static getArgbColorFromCeaColor(III)I
    .registers 4

    const/4 v0, 0x0

    .line 1369
    invoke-static {p0, p1, p2, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result p0

    return p0
.end method

.method public static getArgbColorFromCeaColor(IIII)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1373
    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 1374
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 1375
    invoke-static {p2, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 1376
    invoke-static {p3, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eqz p3, :cond_21

    if-eq p3, v1, :cond_21

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1e

    const/4 v3, 0x3

    if-eq p3, v3, :cond_1c

    goto :goto_21

    :cond_1c
    move p3, v0

    goto :goto_22

    :cond_1e
    const/16 p3, 0x7f

    goto :goto_22

    :cond_21
    :goto_21
    move p3, v2

    :goto_22
    if-le p0, v1, :cond_26

    move p0, v2

    goto :goto_27

    :cond_26
    move p0, v0

    :goto_27
    if-le p1, v1, :cond_2b

    move p1, v2

    goto :goto_2c

    :cond_2b
    move p1, v0

    :goto_2c
    if-le p2, v1, :cond_2f

    move v0, v2

    .line 1398
    :cond_2f
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public append(C)V
    .registers 4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_50

    .line 1209
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1212
    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1a

    .line 1213
    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1215
    :cond_1a
    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq p1, v0, :cond_20

    .line 1216
    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    .line 1218
    :cond_20
    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    if-eq p1, v0, :cond_26

    .line 1219
    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1221
    :cond_26
    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq p1, v0, :cond_2c

    .line 1222
    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    .line 1225
    :cond_2c
    :goto_2c
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge p1, v0, :cond_4a

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1226
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_41

    goto :goto_4a

    .line 1230
    :cond_41
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    goto :goto_55

    .line 1227
    :cond_4a
    :goto_4a
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2c

    .line 1232
    :cond_50
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_55
    return-void
.end method

.method public backspace()V
    .registers 4

    .line 1201
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 1203
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_f
    return-void
.end method

.method public build()Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
    .registers 16

    .line 1280
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 1285
    :cond_8
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 1288
    :goto_f
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    .line 1289
    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 1290
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1293
    :cond_2a
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1298
    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_5c

    if-eq v1, v5, :cond_59

    if-eq v1, v3, :cond_56

    if-ne v1, v4, :cond_3f

    goto :goto_5c

    .line 1311
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected justification value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1308
    :cond_56
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_5e

    .line 1305
    :cond_59
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_5e

    .line 1302
    :cond_5c
    :goto_5c
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_5e
    move-object v6, v1

    .line 1316
    iget-boolean v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    if-eqz v1, :cond_6e

    .line 1317
    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v1, v1

    const/high16 v7, 0x42c60000    # 99.0f

    div-float/2addr v1, v7

    .line 1318
    iget v8, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    goto :goto_7b

    .line 1320
    :cond_6e
    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    int-to-float v1, v1

    const/high16 v7, 0x43510000    # 209.0f

    div-float/2addr v1, v7

    .line 1321
    iget v7, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    int-to-float v7, v7

    const/high16 v8, 0x42940000    # 74.0f

    div-float v8, v7, v8

    :goto_7b
    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v1, v7

    const v9, 0x3d4ccccd    # 0.05f

    add-float v10, v1, v9

    mul-float/2addr v8, v7

    add-float v7, v8, v9

    .line 1335
    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    div-int/lit8 v8, v1, 0x3

    if-nez v8, :cond_8f

    move v8, v0

    goto :goto_96

    .line 1337
    :cond_8f
    div-int/lit8 v8, v1, 0x3

    if-ne v8, v5, :cond_95

    move v8, v5

    goto :goto_96

    :cond_95
    move v8, v3

    .line 1344
    :goto_96
    rem-int/lit8 v9, v1, 0x3

    if-nez v9, :cond_9c

    move v9, v0

    goto :goto_a2

    .line 1346
    :cond_9c
    rem-int/2addr v1, v4

    if-ne v1, v5, :cond_a1

    move v9, v5

    goto :goto_a2

    :cond_a1
    move v9, v3

    .line 1352
    :goto_a2
    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    sget v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq v1, v3, :cond_a9

    move v0, v5

    .line 1354
    :cond_a9
    new-instance v13, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    const/4 v5, 0x0

    const v11, -0x800001

    iget v12, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    iget v14, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    move-object v1, v13

    move-object v3, v6

    move v4, v7

    move v6, v8

    move v7, v10

    move v8, v9

    move v9, v11

    move v10, v0

    move v11, v12

    move v12, v14

    invoke-direct/range {v1 .. v12}, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v13
.end method

.method public buildSpannableString()Landroid/text/SpannableString;
    .registers 7

    .line 1237
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1239
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4d

    .line 1242
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    .line 1243
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1250
    :cond_1f
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq v2, v4, :cond_2d

    .line 1251
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1258
    :cond_2d
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    if-eq v2, v4, :cond_3d

    .line 1259
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1266
    :cond_3d
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq v2, v4, :cond_4d

    .line 1267
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1275
    :cond_4d
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public clear()V
    .registers 2

    .line 1014
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1015
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    .line 1016
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1017
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    .line 1018
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1019
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    const/4 v0, 0x0

    .line 1020
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    return-void
.end method

.method public defineWindow(ZIZIIIIII)V
    .registers 21

    move-object v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    const/4 v3, 0x1

    .line 1045
    iput-boolean v3, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    move v4, p1

    .line 1046
    iput-boolean v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    move v4, p2

    .line 1047
    iput v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    move v4, p3

    .line 1048
    iput-boolean v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    move v4, p4

    .line 1049
    iput v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    move/from16 v4, p5

    .line 1050
    iput v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    move/from16 v4, p7

    .line 1051
    iput v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    .line 1054
    iget v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    add-int/lit8 v5, p6, 0x1

    if-eq v4, v5, :cond_3f

    .line 1055
    iput v5, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    .line 1058
    :goto_24
    iget-object v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge v4, v5, :cond_38

    iget-object v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 1059
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xf

    if-lt v4, v5, :cond_3f

    .line 1060
    :cond_38
    iget-object v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_24

    :cond_3f
    if-eqz v1, :cond_6e

    .line 1064
    iget v4, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    if-eq v4, v1, :cond_6e

    .line 1065
    iput v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    sub-int/2addr v1, v3

    .line 1069
    sget-object v4, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    aget v4, v4, v1

    sget v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_TRANSPARENT:I

    sget-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    aget-boolean v6, v6, v1

    const/4 v7, 0x0

    sget-object v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    aget v8, v8, v1

    sget-object v9, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    aget v9, v9, v1

    sget-object v10, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    aget v1, v10, v1

    move-object p1, p0

    move p2, v4

    move p3, v5

    move p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v1

    invoke-virtual/range {p1 .. p8}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setWindowAttributes(IIZIIII)V

    :cond_6e
    if-eqz v2, :cond_9f

    .line 1079
    iget v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    if-eq v1, v2, :cond_9f

    .line 1080
    iput v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    add-int/lit8 v1, v2, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1085
    sget-object v7, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    aget v7, v7, v1

    sget-object v8, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    aget v8, v8, v1

    move-object p1, p0

    move p2, v2

    move p3, v3

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p1 .. p8}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(IIIZZII)V

    .line 1093
    sget v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    sget-object v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    aget v1, v3, v1

    sget v3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    invoke-virtual {p0, v2, v1, v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(III)V

    :cond_9f
    return-void
.end method

.method public isDefined()Z
    .registers 2

    .line 1024
    iget-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 990
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 1032
    iget-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    return v0
.end method

.method public reset()V
    .registers 3

    .line 994
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    const/4 v0, 0x0

    .line 996
    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    .line 997
    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    const/4 v1, 0x4

    .line 998
    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    .line 999
    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    .line 1000
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    .line 1001
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    .line 1002
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    const/16 v1, 0xf

    .line 1003
    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    .line 1004
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    .line 1005
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    .line 1006
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    .line 1007
    sget v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 1009
    sget v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    .line 1010
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    return-void
.end method

.method public setPenAttributes(IIIZZII)V
    .registers 8

    .line 1125
    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/16 p2, 0x21

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1f

    if-nez p4, :cond_29

    .line 1127
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/StyleSpan;

    const/4 p6, 0x2

    invoke-direct {p4, p6}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget p6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    iget-object p7, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1130
    invoke-virtual {p7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p7

    .line 1127
    invoke-virtual {p1, p4, p6, p7, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1132
    iput p3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    goto :goto_29

    :cond_1f
    if-eqz p4, :cond_29

    .line 1135
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    .line 1138
    :cond_29
    :goto_29
    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq p1, p3, :cond_44

    if-nez p5, :cond_4e

    .line 1140
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/UnderlineSpan;

    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget p5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    iget-object p6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1143
    invoke-virtual {p6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    .line 1140
    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1145
    iput p3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    goto :goto_4e

    :cond_44
    if-eqz p5, :cond_4e

    .line 1148
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    :cond_4e
    :goto_4e
    return-void
.end method

.method public setPenColor(III)V
    .registers 9

    .line 1156
    iget p3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    const/16 v0, 0x21

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1f

    .line 1157
    iget p3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    if-eq p3, p1, :cond_1f

    .line 1158
    iget-object p3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1161
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1158
    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1165
    :cond_1f
    sget p3, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    if-eq p1, p3, :cond_2d

    .line 1166
    iget-object p3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    iput p3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    .line 1167
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    .line 1170
    :cond_2d
    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq p1, v1, :cond_49

    .line 1171
    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    if-eq p1, p2, :cond_49

    .line 1172
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    invoke-direct {p3, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 1175
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1172
    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1179
    :cond_49
    sget p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq p2, p1, :cond_57

    .line 1180
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    .line 1181
    iput p2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    :cond_57
    return-void
.end method

.method public setPenLocation(II)V
    .registers 3

    .line 1194
    iget p2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    if-eq p2, p1, :cond_9

    const/16 p2, 0xa

    .line 1195
    invoke-virtual {p0, p2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    .line 1197
    :cond_9
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    return-void
.end method

.method public setVisibility(Z)V
    .registers 2

    .line 1028
    iput-boolean p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    return-void
.end method

.method public setWindowAttributes(IIZIIII)V
    .registers 8

    .line 1105
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    .line 1110
    iput p7, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    return-void
.end method
