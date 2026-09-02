.class public Lcn/yoozworld/watch/ui/QRCodeScanActivity;
.super Lcom/king/zxing/BarcodeCameraScanActivity;
.source "QRCodeScanActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/king/zxing/BarcodeCameraScanActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnalyzer()Lcom/king/camera/scan/analyze/Analyzer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/king/camera/scan/analyze/Analyzer<",
            "Lcom/google/zxing/Result;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/king/zxing/DecodeConfig;

    invoke-direct {v0}, Lcom/king/zxing/DecodeConfig;-><init>()V

    .line 77
    sget-object v1, Lcom/king/zxing/DecodeFormatManager;->QR_CODE_HINTS:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/king/zxing/DecodeConfig;->setHints(Ljava/util/Map;)Lcom/king/zxing/DecodeConfig;

    move-result-object v1

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v1, v2}, Lcom/king/zxing/DecodeConfig;->setFullAreaScan(Z)Lcom/king/zxing/DecodeConfig;

    move-result-object v1

    const v3, 0x3f4ccccd    # 0.8f

    .line 79
    invoke-virtual {v1, v3}, Lcom/king/zxing/DecodeConfig;->setAreaRectRatio(F)Lcom/king/zxing/DecodeConfig;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v2}, Lcom/king/zxing/DecodeConfig;->setAreaRectVerticalOffset(I)Lcom/king/zxing/DecodeConfig;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v2}, Lcom/king/zxing/DecodeConfig;->setAreaRectHorizontalOffset(I)Lcom/king/zxing/DecodeConfig;

    .line 83
    new-instance v1, Lcom/king/zxing/analyze/QRCodeAnalyzer;

    invoke-direct {v1, v0}, Lcom/king/zxing/analyze/QRCodeAnalyzer;-><init>(Lcom/king/zxing/DecodeConfig;)V

    return-object v1
.end method

.method public getLayoutId()I
    .registers 2

    const v0, 0x7f0c001c

    return v0
.end method

.method public initCameraScan(Lcom/king/camera/scan/CameraScan;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/camera/scan/CameraScan<",
            "Lcom/google/zxing/Result;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lcom/king/zxing/BarcodeCameraScanActivity;->initCameraScan(Lcom/king/camera/scan/CameraScan;)V

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p1, v0}, Lcom/king/camera/scan/CameraScan;->setPlayBeep(Z)Lcom/king/camera/scan/CameraScan;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 37
    invoke-super {p0, p1}, Lcom/king/zxing/BarcodeCameraScanActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tips"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "scanTitle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "scanTips"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "scan_tab"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0901c1

    .line 47
    invoke-virtual {p0, v4}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0901c0

    .line 48
    invoke-virtual {p0, v5}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0900d6

    .line 49
    invoke-virtual {p0, v6}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 50
    new-instance v7, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;

    invoke-direct {v7, p0, v1, v2, v3}, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;-><init>(Lcn/yoozworld/watch/ui/QRCodeScanActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onScanResultCallback(Lcom/king/camera/scan/AnalyzeResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/camera/scan/AnalyzeResult<",
            "Lcom/google/zxing/Result;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->getCameraScan()Lcom/king/camera/scan/CameraScan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/king/camera/scan/CameraScan;->setAnalyzeImage(Z)Lcom/king/camera/scan/CameraScan;

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    sget-object v1, Lcom/king/camera/scan/CameraScan;->SCAN_RESULT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/king/camera/scan/AnalyzeResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 103
    invoke-virtual {p0, p1, v0}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->finish()V

    return-void
.end method
