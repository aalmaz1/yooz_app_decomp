.class final Lcom/google/zxing/common/MinimalECIInput$InputEdge;
.super Ljava/lang/Object;
.source "MinimalECIInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/common/MinimalECIInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputEdge"
.end annotation


# instance fields
.field private final c:C

.field private final cachedTotalSize:I

.field private final encoderIndex:I

.field private final previous:Lcom/google/zxing/common/MinimalECIInput$InputEdge;


# direct methods
.method private constructor <init>(CLcom/google/zxing/common/ECIEncoderSet;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V
    .registers 7

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    if-ne p1, p5, :cond_9

    move p5, v0

    goto :goto_a

    :cond_9
    move p5, p1

    .line 326
    :goto_a
    iput-char p5, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->c:C

    .line 327
    iput p3, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I

    .line 328
    iput-object p4, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->previous:Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    if-ne p5, v0, :cond_14

    const/4 p1, 0x1

    goto :goto_19

    .line 330
    :cond_14
    invoke-virtual {p2, p1, p3}, Lcom/google/zxing/common/ECIEncoderSet;->encode(CI)[B

    move-result-object p1

    array-length p1, p1

    :goto_19
    if-nez p4, :cond_1d

    const/4 p2, 0x0

    goto :goto_1f

    .line 331
    :cond_1d
    iget p2, p4, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I

    :goto_1f
    if-eq p2, p3, :cond_23

    add-int/lit8 p1, p1, 0x3

    :cond_23
    if-eqz p4, :cond_28

    .line 336
    iget p2, p4, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I

    add-int/2addr p1, p2

    .line 338
    :cond_28
    iput p1, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I

    return-void
.end method

.method synthetic constructor <init>(CLcom/google/zxing/common/ECIEncoderSet;ILcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$1;)V
    .registers 7

    .line 319
    invoke-direct/range {p0 .. p5}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;-><init>(CLcom/google/zxing/common/ECIEncoderSet;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I
    .registers 1

    .line 319
    iget p0, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)I
    .registers 1

    .line 319
    iget p0, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)C
    .registers 1

    .line 319
    iget-char p0, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->c:C

    return p0
.end method

.method static synthetic access$400(Lcom/google/zxing/common/MinimalECIInput$InputEdge;)Lcom/google/zxing/common/MinimalECIInput$InputEdge;
    .registers 1

    .line 319
    iget-object p0, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->previous:Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    return-object p0
.end method


# virtual methods
.method isFNC1()Z
    .registers 3

    .line 342
    iget-char v0, p0, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->c:C

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
