.class public Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;
.super Ljava/lang/Object;
.source "ZplPrinterManager.java"


# instance fields
.field private zebraLabel:Lfr/w3blog/zpl/model/ZebraLabel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lfr/w3blog/zpl/model/ZebraLabel;

    invoke-direct {v0}, Lfr/w3blog/zpl/model/ZebraLabel;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;->zebraLabel:Lfr/w3blog/zpl/model/ZebraLabel;

    return-void
.end method


# virtual methods
.method public macAddressToLongValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ":"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "zpl\u5373\u5c06\u8f6c\u6362\u5341\u8fdb\u5236\u6761\u5f62\u7801:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Lcn/baos/watch/sdk/util/FileUtils;->decodeHEXLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveSnCodeToLocal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 25
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;->macAddressToLongValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;->zebraLabel:Lfr/w3blog/zpl/model/ZebraLabel;

    new-instance v2, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;

    const-string v3, "^BY2,2,80\n"

    invoke-direct {v2, v3}, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lfr/w3blog/zpl/model/ZebraLabel;->addElement(Lfr/w3blog/zpl/model/ZebraElement;)Lfr/w3blog/zpl/model/ZebraLabel;

    .line 29
    iget-object v1, p0, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;->zebraLabel:Lfr/w3blog/zpl/model/ZebraLabel;

    new-instance v2, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "^FO55,0^BC^FD"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "^FS\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lfr/w3blog/zpl/model/ZebraLabel;->addElement(Lfr/w3blog/zpl/model/ZebraElement;)Lfr/w3blog/zpl/model/ZebraLabel;

    .line 30
    iget-object v1, p0, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;->zebraLabel:Lfr/w3blog/zpl/model/ZebraLabel;

    new-instance v2, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "^FO55,115^BC^FD"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lfr/w3blog/zpl/model/ZebraLabel;->addElement(Lfr/w3blog/zpl/model/ZebraElement;)Lfr/w3blog/zpl/model/ZebraLabel;

    .line 31
    iget-object v1, p0, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;->zebraLabel:Lfr/w3blog/zpl/model/ZebraLabel;

    new-instance v2, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "^FO55,240^BC^FD"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lfr/w3blog/zpl/model/ZebraLabel;->addElement(Lfr/w3blog/zpl/model/ZebraElement;)Lfr/w3blog/zpl/model/ZebraLabel;

    .line 35
    iget-object v0, p0, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;->zebraLabel:Lfr/w3blog/zpl/model/ZebraLabel;

    new-instance v1, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;

    const-string v2, "^PQ1,0,1\n"

    invoke-direct {v1, v2}, Lfr/w3blog/zpl/model/element/ZebraNativeZpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfr/w3blog/zpl/model/ZebraLabel;->addElement(Lfr/w3blog/zpl/model/ZebraElement;)Lfr/w3blog/zpl/model/ZebraLabel;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "zpl:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;->zebraLabel:Lfr/w3blog/zpl/model/ZebraLabel;

    invoke-virtual {v1}, Lfr/w3blog/zpl/model/ZebraLabel;->getZplCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcn/baos/watch/sdk/code/zplprint/ZplPrinterManager;->zebraLabel:Lfr/w3blog/zpl/model/ZebraLabel;

    invoke-virtual {v0}, Lfr/w3blog/zpl/model/ZebraLabel;->getZplCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcn/baos/watch/sdk/util/FileUtils;->writeZplValueToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
