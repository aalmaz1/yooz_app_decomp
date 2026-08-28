.class Lcn/yoozworld/watch/utils/notifi/NotificationManager$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2$1;->this$1:Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 168
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 169
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2$1;->this$1:Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;

    iget-object p1, p1, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->-$$Nest$fgetmNodeLinkedList(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 170
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2$1;->this$1:Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;

    iget-object p1, p1, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->-$$Nest$fgetmNodeLinkedList(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->handleShow()V

    :cond_22
    return-void
.end method
