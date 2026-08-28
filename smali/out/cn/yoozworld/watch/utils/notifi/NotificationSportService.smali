.class public Lcn/yoozworld/watch/utils/notifi/NotificationSportService;
.super Landroid/app/Service;
.source "NotificationSportService.java"


# instance fields
.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field private notificationManager:Landroid/app/NotificationManager;

.field private final serviceId:I

.field private totalSecond:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x3

    .line 19
    iput v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationSportService;->serviceId:I

    return-void
.end method

.method private getStringTime(I)Ljava/lang/String;
    .registers 7

    .line 67
    div-int/lit16 v0, p1, 0xe10

    .line 68
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 69
    rem-int/lit8 p1, p1, 0x3c

    .line 70
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public stopService()V
    .registers 2

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/utils/notifi/NotificationSportService;->stopForeground(Z)V

    return-void
.end method
