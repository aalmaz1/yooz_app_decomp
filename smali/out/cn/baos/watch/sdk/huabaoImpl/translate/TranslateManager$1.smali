.class Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$1;
.super Ljava/lang/Object;
.source "TranslateManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->onCommandBleOTAFileInfoCallBack(Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V
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

    .line 339
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$1;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iput-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$1;->val$commandBleOTAResult:Lcn/baos/watch/w100/messages/CommandBleOTAResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IMessageSendStatus(IZ)V
    .registers 3

    if-eqz p2, :cond_d

    .line 343
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$1;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$1;->val$commandBleOTAResult:Lcn/baos/watch/w100/messages/CommandBleOTAResult;

    iget p2, p2, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->sendInAdvanceData(I)V

    :cond_d
    return-void
.end method
