.class Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;
.super Ljava/lang/Object;
.source "ContactsLoaderCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;

.field final synthetic val$data:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;Landroid/database/Cursor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;->this$0:Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;

    iput-object p2, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;->val$data:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v1, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;->val$data:Landroid/database/Cursor;

    if-eqz v1, :cond_78

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 64
    :cond_f
    iget-object v1, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;->val$data:Landroid/database/Cursor;

    const-string v2, "display_name"

    .line 65
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 64
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;->val$data:Landroid/database/Cursor;

    const-string v3, "_id"

    .line 68
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 67
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "data1"

    .line 72
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    .line 76
    iget-object v4, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;->this$0:Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;

    invoke-static {v4}, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->-$$Nest$fgetcontext(Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "contact_id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 83
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 86
    :cond_56
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 85
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    new-instance v5, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;

    invoke-direct {v5}, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;-><init>()V

    .line 96
    iput-object v1, v5, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->name:Ljava/lang/String;

    .line 97
    iput-object v4, v5, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;->phone:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_56

    .line 102
    :cond_70
    iget-object v1, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;->val$data:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_f

    .line 108
    :cond_78
    iget-object v1, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;->this$0:Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;

    invoke-static {v1}, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->-$$Nest$fgetlistener(Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;)Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 109
    iget-object v1, p0, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$1;->this$0:Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;

    invoke-static {v1}, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;->-$$Nest$fgetlistener(Lcn/baos/watch/sdk/contact/ContactsLoaderCallback;)Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/baos/watch/sdk/contact/ContactsLoaderCallback$QueryListener;->success(Ljava/util/ArrayList;)V

    :cond_89
    return-void
.end method
