.class public Lcom/king/zxing/analyze/QRCodeAnalyzer;
.super Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;
.source "QRCodeAnalyzer.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    new-instance v0, Lcom/king/zxing/DecodeConfig;

    invoke-direct {v0}, Lcom/king/zxing/DecodeConfig;-><init>()V

    sget-object v1, Lcom/king/zxing/DecodeFormatManager;->QR_CODE_HINTS:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/king/zxing/DecodeConfig;->setHints(Ljava/util/Map;)Lcom/king/zxing/DecodeConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/king/zxing/analyze/QRCodeAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/king/zxing/DecodeConfig;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/king/zxing/analyze/BarcodeFormatAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/king/zxing/DecodeConfig;

    invoke-direct {v0}, Lcom/king/zxing/DecodeConfig;-><init>()V

    invoke-virtual {v0, p1}, Lcom/king/zxing/DecodeConfig;->setHints(Ljava/util/Map;)Lcom/king/zxing/DecodeConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/king/zxing/analyze/QRCodeAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    return-void
.end method


# virtual methods
.method public createReader()Lcom/google/zxing/Reader;
    .registers 2

    .line 35
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    return-object v0
.end method
