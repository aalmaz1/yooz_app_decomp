.class final Lcom/tekartik/sqflite/DatabaseTask;
.super Ljava/lang/Object;
.source "DatabaseTask.java"


# instance fields
.field private final database:Lcom/tekartik/sqflite/DatabaseDelegate;

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tekartik/sqflite/DatabaseDelegate;Ljava/lang/Runnable;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tekartik/sqflite/DatabaseTask;->database:Lcom/tekartik/sqflite/DatabaseDelegate;

    .line 22
    iput-object p2, p0, Lcom/tekartik/sqflite/DatabaseTask;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getDatabaseId()Ljava/lang/Integer;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/tekartik/sqflite/DatabaseTask;->database:Lcom/tekartik/sqflite/DatabaseDelegate;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/tekartik/sqflite/DatabaseDelegate;->getDatabaseId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public isInTransaction()Z
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/tekartik/sqflite/DatabaseTask;->database:Lcom/tekartik/sqflite/DatabaseDelegate;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/tekartik/sqflite/DatabaseDelegate;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
