.class public final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoderTestAdapter;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoderTestAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
