.class Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread$1;
.super Ljava/lang/Object;
.source "ProcessAndroidCrashLogThread.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread$1;->this$0:Lcn/yoozworld/watch/ui/ProcessAndroidCrashLogThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "crash-"

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
