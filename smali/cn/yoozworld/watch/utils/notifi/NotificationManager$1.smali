.class Lcn/yoozworld/watch/utils/notifi/NotificationManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/utils/notifi/NotificationManager;->hideNotification(Lcn/yoozworld/watch/utils/notifi/NotificationNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/utils/notifi/NotificationManager;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 88
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->-$$Nest$fgetmNodeLinkedList(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 89
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->-$$Nest$fgetmNodeLinkedList(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    iget-object v0, v0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    invoke-virtual {p1, v0}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->showNotification(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    :cond_1d
    return-void
.end method
