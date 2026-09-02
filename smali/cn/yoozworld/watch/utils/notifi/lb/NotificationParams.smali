.class public final Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
.super Ljava/lang/Object;
.source "NotificationParams.java"


# instance fields
.field public defaults:I

.field public flags:[I

.field public intent:Landroid/app/PendingIntent;

.field public ongoing:Z

.field public onlyAlertOnce:Z

.field public pattern:[J

.field public priority:I

.field public remoteViews:Landroid/widget/RemoteViews;

.field public sound:Landroid/net/Uri;

.field public ticker:Ljava/lang/String;

.field public when:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->onlyAlertOnce:Z

    .line 28
    iput v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->defaults:I

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->pattern:[J

    .line 33
    iput-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ongoing:Z

    .line 34
    iput-object v1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->remoteViews:Landroid/widget/RemoteViews;

    .line 35
    iput-object v1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->intent:Landroid/app/PendingIntent;

    const-string v2, ""

    .line 36
    iput-object v2, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ticker:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->priority:I

    const-wide/16 v2, 0x0

    .line 38
    iput-wide v2, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->when:J

    .line 39
    iput-object v1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->sound:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public setContent(Landroid/widget/RemoteViews;)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 58
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->remoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 68
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->intent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setDefaults(I)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 134
    iput p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->defaults:I

    return-object p0
.end method

.method public varargs setFlags([I)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 154
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    return-object p0
.end method

.method public setOngoing(Z)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ongoing:Z

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 103
    iput-boolean p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->onlyAlertOnce:Z

    return-object p0
.end method

.method public setPriority(I)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 93
    iput p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->priority:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 123
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->sound:Landroid/net/Uri;

    return-object p0
.end method

.method public setTicker(Ljava/lang/String;)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 78
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ticker:Ljava/lang/String;

    return-object p0
.end method

.method public setVibrate([J)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 144
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->pattern:[J

    return-object p0
.end method

.method public setWhen(J)Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 3

    .line 113
    iput-wide p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->when:J

    return-object p0
.end method
