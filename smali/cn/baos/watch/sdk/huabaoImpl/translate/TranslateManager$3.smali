.class Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$3;
.super Ljava/lang/Object;
.source "TranslateManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->sendInAdvanceData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;)V
    .registers 2

    .line 458
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$3;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IMessageSendStatus(IZ)V
    .registers 3

    if-eqz p2, :cond_3f

    .line 462
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "OTA-+++: mNowIndex="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$3;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iget p2, p2, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "____mInAdvanceIndex = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$3;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iget p2, p2, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mInAdvanceIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$3;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iget p1, p1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$3;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iget p2, p2, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mInAdvanceIndex:I

    if-ne p1, p2, :cond_3f

    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$3;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iget-boolean p1, p1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isSend:Z

    if-eqz p1, :cond_3f

    .line 464
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$3;->this$0:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    iget p2, p1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mInAdvanceIndex:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->sendInAdvanceData(I)V

    :cond_3f
    return-void
.end method
