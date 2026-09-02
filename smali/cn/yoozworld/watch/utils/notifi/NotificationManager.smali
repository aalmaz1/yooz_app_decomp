.class public Lcn/yoozworld/watch/utils/notifi/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# static fields
.field public static final BUNDLE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final BUNDLE_TYPE:Ljava/lang/String; = "type"

.field public static final MSG_HIDE:I = 0x2

.field public static final MSG_SHOW:I = 0x1

.field private static volatile sInstance:Lcn/yoozworld/watch/utils/notifi/NotificationManager;


# instance fields
.field private final mHandler:Lcn/yoozworld/watch/utils/notifi/MyHandler;

.field private final mNodeLinkedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/yoozworld/watch/utils/notifi/NotificationNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmNodeLinkedList(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    return-object p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Lcn/yoozworld/watch/utils/notifi/MyHandler;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/utils/notifi/MyHandler;-><init>(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)V

    iput-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mHandler:Lcn/yoozworld/watch/utils/notifi/MyHandler;

    return-void
.end method

.method private findNodeByType(I)Lcn/yoozworld/watch/utils/notifi/NotificationNode;
    .registers 5

    .line 116
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    .line 117
    iget-object v2, v1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    iget v2, v2, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    if-ne p1, v2, :cond_6

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcn/yoozworld/watch/utils/notifi/NotificationManager;
    .registers 2

    .line 42
    sget-object v0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->sInstance:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    if-nez v0, :cond_17

    .line 43
    const-class v0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    monitor-enter v0

    .line 44
    :try_start_7
    sget-object v1, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->sInstance:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    if-nez v1, :cond_12

    .line 45
    new-instance v1, Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    invoke-direct {v1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;-><init>()V

    sput-object v1, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->sInstance:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    .line 47
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 49
    :cond_17
    :goto_17
    sget-object v0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->sInstance:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    return-object v0
.end method

.method private hideNotification(Lcn/yoozworld/watch/utils/notifi/NotificationNode;)V
    .registers 4

    .line 78
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    if-nez p1, :cond_b

    goto :goto_27

    .line 81
    :cond_b
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    move v0, v1

    .line 82
    :goto_17
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->removeNotificationNode(Lcn/yoozworld/watch/utils/notifi/NotificationNode;)V

    .line 83
    invoke-virtual {p1, v1}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->changeIsShowing(Z)V

    if-eqz v0, :cond_27

    .line 85
    new-instance v0, Lcn/yoozworld/watch/utils/notifi/NotificationManager$1;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/utils/notifi/NotificationManager$1;-><init>(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)V

    invoke-virtual {p1, v0}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->handleHide(Landroid/animation/Animator$AnimatorListener;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private insertNotificationLocked(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
    .registers 6

    .line 202
    new-instance v0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    invoke-direct {v0, p1, p0}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;-><init>(Lcn/yoozworld/watch/utils/notifi/CustomNotification;Lcn/yoozworld/watch/utils/notifi/NotificationManager;)V

    .line 203
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 205
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_74

    .line 206
    :cond_13
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_34

    .line 208
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    .line 209
    invoke-virtual {v0}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->getNotification()Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    move-result-object v0

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->setData(Ljava/lang/Object;Z)Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    goto :goto_74

    .line 210
    :cond_34
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->isHigherPriority(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 212
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_74

    .line 216
    :cond_40
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 217
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    :goto_4c
    if-eqz v1, :cond_62

    .line 219
    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->compareTo(Lcn/yoozworld/watch/utils/notifi/NotificationNode;)I

    move-result v3

    if-ne v3, v2, :cond_55

    goto :goto_63

    .line 223
    :cond_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 224
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    goto :goto_4c

    :cond_62
    const/4 v1, 0x0

    :goto_63
    if-nez v1, :cond_6b

    .line 230
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    goto :goto_74

    .line 232
    :cond_6b
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_74
    return-void
.end method

.method private isHigherPriority(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)Z
    .registers 3

    .line 192
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    iget-object v0, v0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    .line 193
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    invoke-virtual {v0}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->getPriority()I

    move-result p1

    if-ge v0, p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p1, 0x1

    :goto_2a
    return p1
.end method

.method private removeNotificationNode(Lcn/yoozworld/watch/utils/notifi/NotificationNode;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 246
    :cond_3
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private sendMessageHide(I)V
    .registers 5

    .line 271
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mHandler:Lcn/yoozworld/watch/utils/notifi/MyHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, p1, 0x2

    .line 276
    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/notifi/MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 277
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 278
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 280
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendMessageShow(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
    .registers 5

    .line 255
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mHandler:Lcn/yoozworld/watch/utils/notifi/MyHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 258
    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/notifi/MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 259
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "notification"

    .line 260
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->sendMessageHide(I)V

    return-void
.end method

.method protected hideNotification()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 69
    :cond_9
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    invoke-direct {p0, v0}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->hideNotification(Lcn/yoozworld/watch/utils/notifi/NotificationNode;)V

    return-void
.end method

.method protected hideNotification(I)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->findNodeByType(I)Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 104
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->hideNotification(Lcn/yoozworld/watch/utils/notifi/NotificationNode;)V

    :cond_9
    return-void
.end method

.method notify(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->sendMessageShow(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    return-void
.end method

.method protected showNotification(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
    .registers 4

    .line 144
    :try_start_0
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 146
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->insertNotificationLocked(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    .line 147
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->handleShow()V

    goto :goto_60

    .line 149
    :cond_17
    iget v0, p1, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    iget-object v1, v1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    iget v1, v1, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    if-ne v0, v1, :cond_3c

    .line 150
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->insertNotificationLocked(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    .line 151
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    .line 152
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->isShowing()Z

    move-result v0

    if-nez v0, :cond_60

    .line 154
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->handleShow()V

    goto :goto_60

    .line 158
    :cond_3c
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->isHigherPriority(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 160
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mNodeLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    .line 161
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->insertNotificationLocked(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    .line 162
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mHandler:Lcn/yoozworld/watch/utils/notifi/MyHandler;

    new-instance v1, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;

    invoke-direct {v1, p0, v0}, Lcn/yoozworld/watch/utils/notifi/NotificationManager$2;-><init>(Lcn/yoozworld/watch/utils/notifi/NotificationManager;Lcn/yoozworld/watch/utils/notifi/NotificationNode;)V

    invoke-virtual {p1, v1}, Lcn/yoozworld/watch/utils/notifi/MyHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_60

    .line 177
    :cond_58
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->insertNotificationLocked(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_60
    :goto_60
    return-void
.end method

.method protected startTimeout(II)V
    .registers 6

    .line 131
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mHandler:Lcn/yoozworld/watch/utils/notifi/MyHandler;

    if-eqz v0, :cond_11

    if-eqz p2, :cond_11

    add-int/lit8 p1, p1, 0x2

    .line 132
    invoke-virtual {v0, p1}, Lcn/yoozworld/watch/utils/notifi/MyHandler;->removeMessages(I)V

    .line 133
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->mHandler:Lcn/yoozworld/watch/utils/notifi/MyHandler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcn/yoozworld/watch/utils/notifi/MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_11
    return-void
.end method
