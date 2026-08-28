.class Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$2;
.super Ljava/lang/Object;
.source "TranslateManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->onCommandBleOTAEachPackageCallBack(Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

.field final synthetic val$commandBleOTAResult:Lcn/baos/watch/w100/messages/CommandBleOTAResult;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$2;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iput-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$2;->val$commandBleOTAResult:Lcn/baos/watch/w100/messages/CommandBleOTAResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IMessageSendStatus(IZ)V
    .registers 5

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OTA---- STRING"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 411
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$2;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iget v0, p1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->normalSendNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->normalSendNum:I

    if-eqz p2, :cond_3d

    .line 412
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$2;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iget p1, p1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->normalSendNum:I

    const/4 p2, 0x2

    if-le p1, p2, :cond_3d

    .line 413
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$2;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    const/4 p2, 0x0

    iput p2, p1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->normalSendNum:I

    .line 414
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$2;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$2;->val$commandBleOTAResult:Lcn/baos/watch/w100/messages/CommandBleOTAResult;

    iget p2, p2, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->sendInAdvanceData(I)V

    :cond_3d
    return-void
.end method
