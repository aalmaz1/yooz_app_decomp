.class public Lcn/baos/watch/sdk/contact/ContactHelper;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactHelper"


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;


# direct methods
.method static bridge synthetic -$$Nest$fputcontacts(Lcn/baos/watch/sdk/contact/ContactHelper;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcn/baos/watch/sdk/contact/ContactHelper;->contacts:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/baos/watch/sdk/contact/ContactHelper;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public queryContactList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 26
    new-instance v1, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;

    iget-object v2, p0, Lcn/baos/watch/sdk/contact/ContactHelper;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v2, Lcn/baos/watch/sdk/contact/ContactHelper$1;

    invoke-direct {v2, p0, v0}, Lcn/baos/watch/sdk/contact/ContactHelper$1;-><init>(Lcn/baos/watch/sdk/contact/ContactHelper;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->setQueryListener(Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;)V

    .line 34
    iget-object v2, p0, Lcn/baos/watch/sdk/contact/ContactHelper;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 37
    :try_start_20
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 41
    :goto_28
    iget-object v0, p0, Lcn/baos/watch/sdk/contact/ContactHelper;->contacts:Ljava/util/ArrayList;

    return-object v0
.end method
