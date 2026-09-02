.class final Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/encoder/MinimalEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Edge"
.end annotation


# instance fields
.field private final cachedTotalSize:I

.field private final characterLength:I

.field private final charsetEncoderIndex:I

.field private final fromPosition:I

.field private final mode:Lcom/google/zxing/qrcode/decoder/Mode;

.field private final previous:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

.field final synthetic this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;


# direct methods
.method private constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;)V
    .registers 13

    .line 414
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 416
    iput p3, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->fromPosition:I

    .line 417
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq p2, v0, :cond_13

    if-nez p6, :cond_10

    goto :goto_13

    :cond_10
    iget v0, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    goto :goto_14

    :cond_13
    :goto_13
    move v0, p4

    :goto_14
    iput v0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    .line 419
    iput p5, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->characterLength:I

    .line 420
    iput-object p6, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    const/4 v1, 0x0

    if-eqz p6, :cond_20

    .line 422
    iget v2, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    goto :goto_21

    :cond_20
    move v2, v1

    .line 424
    :goto_21
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v4, 0x1

    if-ne p2, v3, :cond_2a

    if-nez p6, :cond_2a

    if-nez v0, :cond_30

    :cond_2a
    if-eqz p6, :cond_31

    iget v3, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    if-eq v0, v3, :cond_31

    :cond_30
    move v1, v4

    :cond_31
    const/4 v0, 0x4

    if-eqz p6, :cond_3a

    .line 428
    iget-object p6, p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne p2, p6, :cond_3a

    if-eqz v1, :cond_40

    .line 429
    :cond_3a
    invoke-virtual {p2, p7}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result p6

    add-int/2addr p6, v0

    add-int/2addr v2, p6

    .line 431
    :cond_40
    sget-object p6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result p2

    aget p2, p6, p2

    if-eq p2, v4, :cond_80

    const/4 p6, 0x2

    if-eq p2, p6, :cond_78

    const/4 p7, 0x3

    if-eq p2, p7, :cond_6d

    if-eq p2, v0, :cond_53

    goto :goto_82

    .line 442
    :cond_53
    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->access$600(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Lcom/google/zxing/common/ECIEncoderSet;

    move-result-object p2

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->access$500(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p5, p3

    invoke-virtual {p1, p3, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Lcom/google/zxing/common/ECIEncoderSet;->encode(Ljava/lang/String;I)[B

    move-result-object p1

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v2, p1

    if-eqz v1, :cond_82

    add-int/lit8 v2, v2, 0xc

    goto :goto_82

    :cond_6d
    if-ne p5, v4, :cond_70

    goto :goto_76

    :cond_70
    if-ne p5, p6, :cond_74

    const/4 v0, 0x7

    goto :goto_76

    :cond_74
    const/16 v0, 0xa

    :goto_76
    add-int/2addr v2, v0

    goto :goto_82

    :cond_78
    if-ne p5, v4, :cond_7c

    const/4 p1, 0x6

    goto :goto_7e

    :cond_7c
    const/16 p1, 0xb

    :goto_7e
    add-int/2addr v2, p1

    goto :goto_82

    :cond_80
    add-int/lit8 v2, v2, 0xd

    .line 449
    :cond_82
    :goto_82
    iput v2, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;)V
    .registers 9

    .line 405
    invoke-direct/range {p0 .. p7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I
    .registers 1

    .line 405
    iget p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->characterLength:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I
    .registers 1

    .line 405
    iget p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I
    .registers 1

    .line 405
    iget p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)I
    .registers 1

    .line 405
    iget p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->fromPosition:I

    return p0
.end method
