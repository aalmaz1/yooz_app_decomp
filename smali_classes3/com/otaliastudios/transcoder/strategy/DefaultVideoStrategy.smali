.class public Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;
.super Ljava/lang/Object;
.source "DefaultVideoStrategy.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/strategy/TrackStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;,
        Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;
    }
.end annotation


# static fields
.field public static final BITRATE_UNKNOWN:J = -0x8000000000000000L

.field public static final DEFAULT_FRAME_RATE:I = 0x1e

.field public static final DEFAULT_KEY_FRAME_INTERVAL:F = 3.0f

.field private static final LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;


# instance fields
.field private final options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "DefaultVideoStrategy"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    return-void
.end method

.method public static aspectRatio(F)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 2

    .line 89
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    new-instance v1, Lcom/otaliastudios/transcoder/resize/AspectRatioResizer;

    invoke-direct {v1, p0}, Lcom/otaliastudios/transcoder/resize/AspectRatioResizer;-><init>(F)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>(Lcom/otaliastudios/transcoder/resize/Resizer;)V

    return-object v0
.end method

.method public static atMost(I)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 2

    .line 102
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    new-instance v1, Lcom/otaliastudios/transcoder/resize/AtMostResizer;

    invoke-direct {v1, p0}, Lcom/otaliastudios/transcoder/resize/AtMostResizer;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>(Lcom/otaliastudios/transcoder/resize/Resizer;)V

    return-object v0
.end method

.method public static atMost(II)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 2

    .line 116
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    new-instance v1, Lcom/otaliastudios/transcoder/resize/AtMostResizer;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/transcoder/resize/AtMostResizer;-><init>(II)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>(Lcom/otaliastudios/transcoder/resize/Resizer;)V

    return-object v0
.end method

.method private checkMimeType(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)Z"
        }
    .end annotation

    .line 293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    const-string v1, "mime"

    .line 294
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$500(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static exact(II)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 2

    .line 63
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    new-instance v1, Lcom/otaliastudios/transcoder/resize/ExactResizer;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/transcoder/resize/ExactResizer;-><init>(II)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>(Lcom/otaliastudios/transcoder/resize/Resizer;)V

    return-object v0
.end method

.method public static fraction(F)Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;
    .locals 2

    .line 76
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;

    new-instance v1, Lcom/otaliastudios/transcoder/resize/FractionResizer;

    invoke-direct {v1, p0}, Lcom/otaliastudios/transcoder/resize/FractionResizer;-><init>(F)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Builder;-><init>(Lcom/otaliastudios/transcoder/resize/Resizer;)V

    return-object v0
.end method

.method private getAverageIFrameInterval(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)I"
        }
    .end annotation

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    const-string v3, "i-frame-interval"

    .line 362
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 364
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    int-to-float p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 367
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method private getBestInputSize(Ljava/util/List;)Lcom/otaliastudios/transcoder/common/ExactSize;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)",
            "Lcom/otaliastudios/transcoder/common/ExactSize;"
        }
    .end annotation

    .line 313
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 315
    new-array v1, v0, [F

    .line 316
    new-array v2, v0, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-string v6, "height"

    const-string v7, "width"

    if-ge v5, v0, :cond_3

    .line 318
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaFormat;

    .line 319
    invoke-virtual {v8, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    .line 320
    invoke-virtual {v8, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    const-string v9, "rotation-degrees"

    .line 322
    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 323
    invoke-virtual {v8, v9}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :cond_0
    move v8, v4

    .line 325
    :goto_1
    rem-int/lit16 v8, v8, 0xb4

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    move v8, v4

    .line 326
    :goto_2
    aput-boolean v8, v2, v5

    if-eqz v8, :cond_2

    div-float/2addr v6, v7

    goto :goto_3

    :cond_2
    div-float v6, v7, v6

    .line 327
    :goto_3
    aput v6, v1, v5

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    int-to-float v5, v0

    div-float/2addr v3, v5

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move v8, v5

    move v5, v4

    :goto_4
    if-ge v4, v0, :cond_5

    .line 334
    aget v9, v1, v4

    sub-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v10, v9, v8

    if-gez v10, :cond_4

    move v5, v4

    move v8, v9

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 340
    :cond_5
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    .line 341
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 342
    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 343
    new-instance v1, Lcom/otaliastudios/transcoder/common/ExactSize;

    .line 344
    aget-boolean v2, v2, v5

    if-eqz v2, :cond_6

    move v3, p1

    goto :goto_5

    :cond_6
    move v3, v0

    :goto_5
    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move v0, p1

    .line 345
    :goto_6
    invoke-direct {v1, v3, v0}, Lcom/otaliastudios/transcoder/common/ExactSize;-><init>(II)V

    return-object v1
.end method

.method private getMinFrameRate(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)I"
        }
    .end annotation

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    const-string v3, "frame-rate"

    .line 351
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public createOutputFormat(Ljava/util/List;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/common/TrackStatus;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")",
            "Lcom/otaliastudios/transcoder/common/TrackStatus;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 220
    invoke-direct/range {p0 .. p1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->checkMimeType(Ljava/util/List;)Z

    move-result v2

    .line 223
    invoke-direct/range {p0 .. p1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->getBestInputSize(Ljava/util/List;)Lcom/otaliastudios/transcoder/common/ExactSize;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lcom/otaliastudios/transcoder/common/ExactSize;->getWidth()I

    move-result v4

    .line 225
    invoke-virtual {v3}, Lcom/otaliastudios/transcoder/common/ExactSize;->getHeight()I

    move-result v5

    .line 226
    sget-object v6, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Input width&height: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 229
    :try_start_0
    iget-object v7, v1, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v7}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$100(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)Lcom/otaliastudios/transcoder/resize/Resizer;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/otaliastudios/transcoder/resize/Resizer;->getOutputSize(Lcom/otaliastudios/transcoder/common/Size;)Lcom/otaliastudios/transcoder/common/Size;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    instance-of v9, v7, Lcom/otaliastudios/transcoder/common/ExactSize;

    if-eqz v9, :cond_0

    .line 235
    move-object v4, v7

    check-cast v4, Lcom/otaliastudios/transcoder/common/ExactSize;

    invoke-virtual {v4}, Lcom/otaliastudios/transcoder/common/ExactSize;->getWidth()I

    move-result v5

    .line 236
    invoke-virtual {v4}, Lcom/otaliastudios/transcoder/common/ExactSize;->getHeight()I

    move-result v4

    goto :goto_0

    :cond_0
    if-lt v4, v5, :cond_1

    .line 238
    invoke-virtual {v7}, Lcom/otaliastudios/transcoder/common/Size;->getMajor()I

    move-result v5

    .line 239
    invoke-virtual {v7}, Lcom/otaliastudios/transcoder/common/Size;->getMinor()I

    move-result v4

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v7}, Lcom/otaliastudios/transcoder/common/Size;->getMinor()I

    move-result v5

    .line 242
    invoke-virtual {v7}, Lcom/otaliastudios/transcoder/common/Size;->getMajor()I

    move-result v4

    .line 244
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Output width&height: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3}, Lcom/otaliastudios/transcoder/common/ExactSize;->getMinor()I

    move-result v8

    invoke-virtual {v7}, Lcom/otaliastudios/transcoder/common/Size;->getMinor()I

    move-result v9

    const/4 v10, 0x1

    if-gt v8, v9, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 249
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->getMinFrameRate(Ljava/util/List;)I

    move-result v9

    if-lez v9, :cond_3

    .line 251
    iget-object v12, v1, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v12}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$200(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_2

    .line 253
    :cond_3
    iget-object v12, v1, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v12}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$200(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)I

    move-result v12

    :goto_2
    if-gt v9, v12, :cond_4

    move v13, v10

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    .line 258
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->getAverageIFrameInterval(Ljava/util/List;)I

    move-result v14

    int-to-float v15, v14

    .line 259
    iget-object v11, v1, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v11}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$400(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)F

    move-result v11

    cmpl-float v11, v15, v11

    if-ltz v11, :cond_5

    move v11, v10

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    .line 265
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ne v15, v10, :cond_6

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_7

    if-eqz v2, :cond_7

    if-eqz v8, :cond_7

    if-eqz v13, :cond_7

    if-eqz v11, :cond_7

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Input minSize: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/otaliastudios/transcoder/common/ExactSize;->getMinor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", desired minSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/otaliastudios/transcoder/common/Size;->getMinor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nInput frameRate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", desired frameRate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nInput iFrameInterval: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", desired iFrameInterval: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    .line 269
    invoke-static {v2}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$400(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-virtual {v6, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackStatus;->PASS_THROUGH:Lcom/otaliastudios/transcoder/common/TrackStatus;

    return-object v0

    .line 274
    :cond_7
    iget-object v2, v1, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$500(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mime"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "width"

    .line 275
    invoke-virtual {v0, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "height"

    .line 276
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "rotation-degrees"

    const/4 v3, 0x0

    .line 277
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    .line 278
    invoke-virtual {v0, v2, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 280
    iget-object v2, v1, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$400(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)F

    move-result v2

    const-string v3, "i-frame-interval"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    const-string v2, "color-format"

    const v3, 0x7f000789

    .line 284
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 285
    iget-object v2, v1, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$300(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)J

    move-result-wide v2

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    .line 286
    invoke-static {v5, v4, v12}, Lcom/otaliastudios/transcoder/internal/utils/BitRates;->estimateVideoBitRate(III)J

    move-result-wide v2

    goto :goto_6

    .line 287
    :cond_8
    iget-object v2, v1, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;->access$300(Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy$Options;)J

    move-result-wide v2

    :goto_6
    long-to-int v2, v2

    const-string v3, "bitrate"

    .line 288
    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 289
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackStatus;->COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    return-object v0

    :catch_0
    move-exception v0

    .line 231
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Resizer error:"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
