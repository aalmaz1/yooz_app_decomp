.class public final Lcn/yoozworld/watch/utils/notifi/LoggerUtils;
.super Ljava/lang/Object;
.source "LoggerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;
    }
.end annotation


# static fields
.field private static sLogger:Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;
    .registers 1

    .line 45
    sget-object v0, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->sLogger:Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;

    return-object v0
.end method

.method public static log(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 26
    sget-object v0, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->sLogger:Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p0, :cond_c

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_c
    const-string p0, ""

    .line 33
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    sget-object p1, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->sLogger:Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;

    invoke-interface {p1, p0}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;->log(Ljava/lang/String;)V

    .line 35
    sget-object p1, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->sLogger:Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;

    invoke-interface {p1}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;->debugLogEnable()Z

    move-result p1

    if-eqz p1, :cond_37

    const-string p1, "LoggerUtils"

    .line 36
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    .line 19
    sget-object v0, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->sLogger:Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, ""

    .line 22
    invoke-static {v0, p0}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->log(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogger(Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;)V
    .registers 1

    .line 41
    sput-object p0, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->sLogger:Lcn/yoozworld/watch/utils/notifi/LoggerUtils$Logger;

    return-void
.end method
