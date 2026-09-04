.class public Lcn/baos/watch/sdk/database/contacts/ContactsManager;
.super Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;
.source "ContactsManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/database/contacts/ContactsInterface;


# static fields
.field private static instance:Lcn/baos/watch/sdk/database/contacts/ContactsManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHandler:Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataBaseManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/database/contacts/ContactsManager;
    .locals 2

    .line 26
    sget-object v0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->instance:Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->instance:Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->instance:Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->instance:Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->close()V

    return-void
.end method

.method public dlt()V
    .locals 2

    .line 58
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->open()V

    .line 60
    iget-object v1, p0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->deleteAll()V

    .line 61
    invoke-virtual {p0}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->close()V

    .line 62
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDatabaseHandler()Lcn/baos/watch/sdk/database/fromwatch/DataBaseFartherHandler;
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;

    return-object v0
.end method

.method public open()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->open()V

    return-void
.end method

.method public queryList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "\u67e5\u8be2\u533a\u95f4\u5185n\u5929\u7684\u8fd0\u52a8\u9759\u6001\u6570\u636e:"

    .line 78
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->open()V

    .line 81
    iget-object v2, p0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;

    invoke-virtual {v2}, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->queryArrayAll()Ljava/util/ArrayList;

    move-result-object v2

    .line 83
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->close()V

    .line 86
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveContactsToDb(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getDataBaseLocker()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->open()V

    const/4 v1, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 70
    iget-object v2, p0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;

    invoke-virtual {v2, v3}, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->insert(Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->close()V

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 37
    iput-object p1, p0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;

    invoke-direct {v0, p1}, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->mDatabaseHandler:Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;

    .line 39
    invoke-virtual {v0}, Lcn/baos/watch/sdk/database/contacts/DatabaseContactsHandler;->createDatabase()V

    return-void
.end method
