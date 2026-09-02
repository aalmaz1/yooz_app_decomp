.class Lcn/baos/watch/sdk/contact/ContactHelper$1;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/contact/ContactHelper;->queryContactList()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/contact/ContactHelper;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/contact/ContactHelper;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcn/baos/watch/sdk/contact/ContactHelper$1;->this$0:Lcn/baos/watch/sdk/contact/ContactHelper;

    iput-object p2, p0, Lcn/baos/watch/sdk/contact/ContactHelper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcn/baos/watch/sdk/contact/ContactHelper$1;->this$0:Lcn/baos/watch/sdk/contact/ContactHelper;

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/contact/ContactHelper;->-$$Nest$fputcontacts(Lcn/baos/watch/sdk/contact/ContactHelper;Ljava/util/ArrayList;)V

    .line 31
    iget-object p1, p0, Lcn/baos/watch/sdk/contact/ContactHelper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
