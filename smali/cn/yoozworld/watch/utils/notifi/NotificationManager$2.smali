.class Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/utils/notifi/NotificationManager;->showNotification(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

.field final synthetic val$oldFirst:Lcn/yoozworld/watch/utils/notifi/NotificationNode;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/utils/notifi/NotificationManager;Lcn/yoozworld/watch/utils/notifi/NotificationNode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    iput-object p2, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;->val$oldFirst:Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;->val$oldFirst:Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    new-instance v1, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2$1;

    invoke-direct {v1, p0}, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2$1;-><init>(Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;)V

    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->handleHide(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
