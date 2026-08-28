.class Lcn/baos/watch/sdk/code/test/TestHandler$7;
.super Ljava/lang/Object;
.source "TestHandler.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/code/test/TestHandler;->transferFile(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

.field final synthetic val$finalFilePath:Ljava/lang/String;

.field final synthetic val$finalFilePath1:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$oEnG2LRKolH5MrNDnJqGoEvmH8A(Lcn/baos/watch/sdk/code/test/TestHandler$7;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler$7;->lambda$onTransferFinish$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rksKZw75UYDSHHk-tmmYGS6HJvw(Lcn/baos/watch/sdk/code/test/TestHandler$7;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler$7;->lambda$onTransferFail$1(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcn/baos/watch/sdk/code/test/TestHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 572
    iput-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    iput-object p2, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->val$finalFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->val$finalFilePath1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTransferFail$1(Ljava/lang/String;)V
    .registers 4

    .line 628
    iget-object v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->transferFile(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onTransferFinish$0(Ljava/lang/String;)V
    .registers 4

    .line 610
    iget-object v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->transferFile(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onLoadFile(I)V
    .registers 2

    return-void
.end method

.method public onLoadFileFail()V
    .registers 1

    return-void
.end method

.method public onTransferFail(I)V
    .registers 8

    .line 618
    iget-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-static {p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->-$$Nest$fgetnumber_fail(Lcn/baos/watch/sdk/code/test/TestHandler;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->-$$Nest$fputnumber_fail(Lcn/baos/watch/sdk/code/test/TestHandler;I)V

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 620
    iget-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-static {p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->-$$Nest$fgetmAutoTimeDial(Lcn/baos/watch/sdk/code/test/TestHandler;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x927c0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_39

    .line 621
    iget-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5927\u5c0f\u5305\u8868\u76d8-\u8868\u76d8-end onTransferFail\uff1atime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    return-void

    .line 625
    :cond_39
    iget-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    const-string v2, "\u5927\u5c0f\u5305\u8868\u76d8-\u8868\u76d8-\uff1aonTransferFail"

    invoke-virtual {p1, v2}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 626
    iget-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5927\u5c0f\u5305\u8868\u76d8-\u8868\u76d8-\u5269\u4f59\u65f6\u95f4\uff1atime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-static {v3}, Lcn/baos/watch/sdk/code/test/TestHandler;->-$$Nest$fgetmAutoTimeDial(Lcn/baos/watch/sdk/code/test/TestHandler;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 628
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    iget-object v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->val$finalFilePath1:Ljava/lang/String;

    new-instance v1, Lcn/baos/watch/sdk/code/test/TestHandler$7$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcn/baos/watch/sdk/code/test/TestHandler$7$$ExternalSyntheticLambda1;-><init>(Lcn/baos/watch/sdk/code/test/TestHandler$7;Ljava/lang/String;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {p1, v1, v2, v3}, Lcn/baos/watch/sdk/code/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 629
    iget-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    const/4 v0, 0x0

    iput v0, p1, Lcn/baos/watch/sdk/code/test/TestHandler;->progress:I

    return-void
.end method

.method public onTransferFinish()V
    .registers 7

    .line 600
    iget-object v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-static {v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->-$$Nest$fgetnumber_success(Lcn/baos/watch/sdk/code/test/TestHandler;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->-$$Nest$fputnumber_success(Lcn/baos/watch/sdk/code/test/TestHandler;I)V

    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 602
    iget-object v2, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-static {v2}, Lcn/baos/watch/sdk/code/test/TestHandler;->-$$Nest$fgetmAutoTimeDial(Lcn/baos/watch/sdk/code/test/TestHandler;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_63

    .line 603
    iget-object v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5927\u5c0f\u5305\u8868\u76d8-\u8868\u76d8-end\uff1aonTransferFinish time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-virtual {v2}, Lcn/baos/watch/sdk/code/test/TestHandler;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5927\u5c0f\u5305\u8868\u76d8-\u8868\u76d8-\u6210\u529f\u6b21\u6570\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-static {v2}, Lcn/baos/watch/sdk/code/test/TestHandler;->-$$Nest$fgetnumber_success(Lcn/baos/watch/sdk/code/test/TestHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5931\u8d25\u6b21\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-static {v2}, Lcn/baos/watch/sdk/code/test/TestHandler;->-$$Nest$fgetnumber_fail(Lcn/baos/watch/sdk/code/test/TestHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    return-void

    .line 608
    :cond_63
    iget-object v2, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5927\u5c0f\u5305\u8868\u76d8-\u8868\u76d8-\u5269\u4f59\u65f6\u95f4\uff1aonTransferFinish time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-static {v4}, Lcn/baos/watch/sdk/code/test/TestHandler;->-$$Nest$fgetmAutoTimeDial(Lcn/baos/watch/sdk/code/test/TestHandler;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    iget v0, v0, Lcn/baos/watch/sdk/code/test/TestHandler;->progress:I

    const/16 v1, 0x63

    if-lt v0, v1, :cond_9e

    .line 610
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->val$finalFilePath:Ljava/lang/String;

    new-instance v2, Lcn/baos/watch/sdk/code/test/TestHandler$7$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcn/baos/watch/sdk/code/test/TestHandler$7$$ExternalSyntheticLambda0;-><init>(Lcn/baos/watch/sdk/code/test/TestHandler$7;Ljava/lang/String;)V

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, v2, v3, v4}, Lcn/baos/watch/sdk/code/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 611
    iget-object v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    const/4 v1, 0x0

    iput v1, v0, Lcn/baos/watch/sdk/code/test/TestHandler;->progress:I

    :cond_9e
    return-void
.end method

.method public onTransferProgress(I)V
    .registers 3

    .line 595
    iget-object v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler$7;->this$0:Lcn/baos/watch/sdk/code/test/TestHandler;

    iput p1, v0, Lcn/baos/watch/sdk/code/test/TestHandler;->progress:I

    return-void
.end method

.method public onTranslateStart()V
    .registers 1

    return-void
.end method

.method public onWaitWatchStartTranslate()V
    .registers 1

    return-void
.end method
