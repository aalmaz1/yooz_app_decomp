.class public Lcn/baos/watch/sdk/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static showD:Z = true

.field public static showE:Z = true

.field public static showI:Z = true

.field public static showV:Z = true

.field public static showW:Z = true

.field public static showWTF:Z = true

.field public static tagPrefix:Ljava/lang/String; = "w100log"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeMsg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u2721"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    .line 59
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showD:Z

    if-eqz v0, :cond_f

    .line 60
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 66
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showD:Z

    if-eqz v0, :cond_f

    .line 67
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .line 101
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showE:Z

    if-eqz v0, :cond_f

    .line 102
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 108
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showE:Z

    if-eqz v0, :cond_f

    .line 109
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    return-void
.end method

.method private static generateTag()Ljava/lang/String;
    .registers 5

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 35
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 38
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v0, "%s.%s(L:%d)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sget-object v1, Lcn/baos/watch/sdk/utils/LogUtil;->tagPrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_5a

    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/baos/watch/sdk/utils/LogUtil;->tagPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5a
    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2

    .line 73
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showI:Z

    if-eqz v0, :cond_f

    .line 74
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 80
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showI:Z

    if-eqz v0, :cond_f

    .line 81
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    return-void
.end method

.method public static setLogEnable(Z)V
    .registers 1

    .line 20
    sput-boolean p0, Lcn/baos/watch/sdk/utils/LogUtil;->showV:Z

    .line 21
    sput-boolean p0, Lcn/baos/watch/sdk/utils/LogUtil;->showD:Z

    .line 22
    sput-boolean p0, Lcn/baos/watch/sdk/utils/LogUtil;->showI:Z

    .line 23
    sput-boolean p0, Lcn/baos/watch/sdk/utils/LogUtil;->showW:Z

    .line 24
    sput-boolean p0, Lcn/baos/watch/sdk/utils/LogUtil;->showE:Z

    .line 25
    sput-boolean p0, Lcn/baos/watch/sdk/utils/LogUtil;->showWTF:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2

    .line 45
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showV:Z

    if-eqz v0, :cond_f

    .line 46
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 52
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showV:Z

    if-eqz v0, :cond_f

    .line 53
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2

    .line 87
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showW:Z

    if-eqz v0, :cond_f

    .line 88
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 94
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showW:Z

    if-eqz v0, :cond_f

    .line 95
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .registers 2

    .line 115
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showWTF:Z

    if-eqz v0, :cond_f

    .line 116
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 122
    sget-boolean v0, Lcn/baos/watch/sdk/utils/LogUtil;->showWTF:Z

    if-eqz v0, :cond_f

    .line 123
    invoke-static {}, Lcn/baos/watch/sdk/utils/LogUtil;->generateTag()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->changeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    return-void
.end method
