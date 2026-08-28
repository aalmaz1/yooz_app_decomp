.class Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$3;
.super Ljava/lang/Object;
.source "NotificationServiceImpl.java"

# interfaces
.implements Lcn/yoozworld/watch/utils/notifi/OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->initNotificationView(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$3;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .line 170
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$3;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationManager(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->hideNotification()V

    return-void
.end method
