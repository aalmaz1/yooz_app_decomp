.class Lcn/baos/watch/sdk/code/ProcessCrashLogThread$2;
.super Ljava/lang/Object;
.source "ProcessCrashLogThread.java"

# interfaces
.implements Lcn/baos/watch/sdk/code/mail/SendMailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/code/ProcessCrashLogThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/code/ProcessCrashLogThread;

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/code/ProcessCrashLogThread;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcn/baos/watch/sdk/code/ProcessCrashLogThread$2;->this$0:Lcn/baos/watch/sdk/code/ProcessCrashLogThread;

    iput-object p2, p0, Lcn/baos/watch/sdk/code/ProcessCrashLogThread$2;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 1

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "APP\u5954\u6e83\u65f6\u90ae\u4ef6\u53d1\u9001\u5931\u8d25: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/code/ProcessCrashLogThread$2;->val$f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "w100log"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "APP\u5954\u6e83\u65f6\u90ae\u4ef6\u53d1\u9001\u6210\u529f: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/code/ProcessCrashLogThread$2;->val$f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "w100log"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcn/baos/watch/sdk/code/ProcessCrashLogThread$2;->val$f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
