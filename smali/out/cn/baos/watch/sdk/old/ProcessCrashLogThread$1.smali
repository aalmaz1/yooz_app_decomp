.class Lcn/baos/watch/sdk/old/ProcessCrashLogThread$1;
.super Ljava/lang/Object;
.source "ProcessCrashLogThread.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/old/ProcessCrashLogThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/old/ProcessCrashLogThread;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/old/ProcessCrashLogThread;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcn/baos/watch/sdk/old/ProcessCrashLogThread$1;->this$0:Lcn/baos/watch/sdk/old/ProcessCrashLogThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "crash-"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ".log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
