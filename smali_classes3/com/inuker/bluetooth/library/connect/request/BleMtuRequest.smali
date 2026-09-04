.class public Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;
.super Lcom/inuker/bluetooth/library/connect/request/BleRequest;
.source "BleMtuRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/listener/RequestMtuListener;


# instance fields
.field private mMtu:I


# direct methods
.method public constructor <init>(ILcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 21
    invoke-direct {p0, p2}, Lcom/inuker/bluetooth/library/connect/request/BleRequest;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    .line 22
    iput p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->mMtu:I

    return-void
.end method

.method private requestMtu()V
    .locals 1

    .line 47
    iget v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->mMtu:I

    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->requestMtu(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->startRequestTiming()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onMtuChanged(II)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->stopRequestTiming()V

    if-nez p2, :cond_0

    const-string p2, "extra.mtu"

    .line 59
    invoke-virtual {p0, p2, p1}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->putIntExtra(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->onRequestCompleted(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method

.method public processRequest()V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->getCurrentStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    .line 41
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->onRequestCompleted(I)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->requestMtu()V

    goto :goto_0

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->requestMtu()V

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleMtuRequest;->onRequestCompleted(I)V

    :goto_0
    return-void
.end method
