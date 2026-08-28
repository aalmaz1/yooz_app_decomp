.class public Lcn/baos/watch/sdk/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static showD:Z = false

.field public static showE:Z = false

.field public static showI:Z = false

.field public static showV:Z = false

.field public static showW:Z = false

.field public static showWTF:Z = false

.field public static tagPrefix:Ljava/lang/String; = "w100log"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeMsg(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 1
    return-void
.end method

.method private static generateTag()Ljava/lang/String;
    .registers 1
    const-string v0, ""
    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 1
    return-void
.end method

.method public static setLogEnable(Z)V
    .registers 1
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 1
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 1
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .registers 1
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 1
    return-void
.end method
