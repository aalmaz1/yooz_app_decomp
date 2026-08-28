.class Ljavax/mail/EventQueue;
.super Ljava/lang/Object;
.source "EventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/EventQueue$QueueElement;,
        Ljavax/mail/EventQueue$TerminatorEvent;
    }
.end annotation


# static fields
.field private static appq:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/ClassLoader;",
            "Ljavax/mail/EventQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private volatile q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljavax/mail/EventQueue$QueueElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Ljavax/mail/EventQueue;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static declared-synchronized getApplicationEventQueue(Ljava/util/concurrent/Executor;)Ljavax/mail/EventQueue;
    .registers 4

    const-class v0, Ljavax/mail/EventQueue;

    monitor-enter v0

    .line 140
    :try_start_3
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 141
    sget-object v2, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    if-nez v2, :cond_12

    .line 142
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    .line 143
    :cond_12
    sget-object v2, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/EventQueue;

    if-nez v2, :cond_26

    .line 145
    new-instance v2, Ljavax/mail/EventQueue;

    invoke-direct {v2, p0}, Ljavax/mail/EventQueue;-><init>(Ljava/util/concurrent/Executor;)V

    .line 146
    sget-object p0, Ljavax/mail/EventQueue;->appq:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 148
    :cond_26
    monitor-exit v0

    return-object v2

    :catchall_28
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method declared-synchronized enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/mail/event/MailEvent;",
            "Ljava/util/Vector<",
            "+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_22

    .line 111
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    .line 112
    iget-object v0, p0, Ljavax/mail/EventQueue;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_14

    .line 113
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_22

    .line 115
    :cond_14
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "JavaMail-EventQueue"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    :cond_22
    :goto_22
    iget-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljavax/mail/EventQueue$QueueElement;

    invoke-direct {v1, p1, p2}, Ljavax/mail/EventQueue$QueueElement;-><init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 121
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .registers 6

    .line 157
    iget-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_5

    return-void

    .line 164
    :cond_5
    :try_start_5
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/EventQueue$QueueElement;

    .line 165
    iget-object v2, v1, Ljavax/mail/EventQueue$QueueElement;->event:Ljavax/mail/event/MailEvent;

    .line 166
    iget-object v1, v1, Ljavax/mail/EventQueue$QueueElement;->vector:Ljava/util/Vector;

    const/4 v3, 0x0

    .line 168
    :goto_10
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_14} :catch_27

    if-ge v3, v4, :cond_5

    .line 170
    :try_start_16
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/mail/event/MailEvent;->dispatch(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_24

    :catchall_1e
    move-exception v4

    .line 172
    :try_start_1f
    instance-of v4, v4, Ljava/lang/InterruptedException;
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_21} :catch_27

    if-eqz v4, :cond_24

    goto :goto_27

    :cond_24
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :catch_27
    :goto_27
    return-void
.end method

.method declared-synchronized terminateQueue()V
    .registers 5

    monitor-enter p0

    .line 127
    :try_start_1
    iget-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_20

    .line 128
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 130
    iget-object v1, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljavax/mail/EventQueue$QueueElement;

    new-instance v3, Ljavax/mail/EventQueue$TerminatorEvent;

    invoke-direct {v3}, Ljavax/mail/EventQueue$TerminatorEvent;-><init>()V

    invoke-direct {v2, v3, v0}, Ljavax/mail/EventQueue$QueueElement;-><init>(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Ljavax/mail/EventQueue;->q:Ljava/util/concurrent/BlockingQueue;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 133
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method
