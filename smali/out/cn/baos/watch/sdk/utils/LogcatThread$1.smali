.class Lcn/baos/watch/sdk/utils/LogcatThread$1;
.super Ljava/lang/Object;
.source "LogcatThread.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/utils/LogcatThread;->cleanLogFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/utils/LogcatThread;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/utils/LogcatThread;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcn/baos/watch/sdk/utils/LogcatThread$1;->this$0:Lcn/baos/watch/sdk/utils/LogcatThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .registers 5

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 200
    :try_start_9
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogcatThread;->-$$Nest$sfgetlogFileSdf()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_1c

    .line 201
    :try_start_11
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogcatThread;->-$$Nest$sfgetlogFileSdf()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    move-exception p2

    goto :goto_1e

    :catch_1c
    move-exception p2

    move-object p1, v0

    .line 203
    :goto_1e
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    if-eqz p1, :cond_31

    if-nez v0, :cond_26

    goto :goto_31

    .line 207
    :cond_26
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1

    :cond_31
    :goto_31
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 192
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/utils/LogcatThread$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
