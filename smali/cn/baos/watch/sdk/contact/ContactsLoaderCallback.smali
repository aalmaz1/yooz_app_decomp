.class public Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;
.super Ljava/lang/Object;
.source "ContactsLoaderCallback.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsLoaderCallback"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;

.field private result:Lorg/json/JSONObject;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;)Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->listener:Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const-string p1, "_id"

    const-string p2, "display_name"

    .line 35
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    .line 39
    new-instance p1, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->context:Landroid/content/Context;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 57
    :cond_7
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;

    invoke-direct {v0, p0, p2}, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;-><init>(Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;Landroid/database/Cursor;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 19
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setQueryListener(Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->listener:Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;

    return-void
.end method
