.class public Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadIdPredicate"
.end annotation


# instance fields
.field private final threadId:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_c

    .line 339
    iput-wide p1, p0, Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;->threadId:J

    return-void

    .line 337
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The thread id must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public test(Ljava/lang/Thread;)Z
    .registers 6

    if-eqz p1, :cond_e

    .line 344
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;->threadId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
