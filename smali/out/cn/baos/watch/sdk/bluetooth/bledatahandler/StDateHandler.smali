.class public Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;
.super Ljava/lang/Object;
.source "StDateHandler.java"


# instance fields
.field private mStDataFull:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleStBleDate(II)V
    .registers 5

    const/16 v0, 0x6400

    if-le p2, v0, :cond_a

    const-string p1, "\u8d85\u8fc725M,\u5f02\u5e38\u6570\u636e,\u4e0d\u5904\u7406"

    .line 18
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_a
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;->mStDataFull:[B

    if-nez v0, :cond_3f

    .line 22
    new-array v0, p2, [B

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;->mStDataFull:[B

    .line 23
    invoke-static {p1, v0, p2}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->readFromBuffer(I[BI)I

    move-result p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    if-gt p1, p2, :cond_22

    const-string p1, "bug: \u6ca1\u6709\u8bfb\u5230\u4efb\u4f55\u7684\u6570\u636e"

    .line 26
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 27
    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;->mStDataFull:[B

    return-void

    .line 30
    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "st:\u63a5\u6536\u5230\u4e00\u4e2a\u65b0\u5305\uff0cmessage\u603b\u957f\u5ea6:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    iget-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;->mStDataFull:[B

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->receiveMessageFromDevice([B)V

    .line 32
    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bledatahandler/StDateHandler;->mStDataFull:[B

    :cond_3f
    return-void
.end method
