.class public final synthetic Lcom/tekartik/sqflite/Database$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/tekartik/sqflite/Database;

.field public final synthetic f$1:Lcom/tekartik/sqflite/operation/Operation;


# direct methods
.method public synthetic constructor <init>(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tekartik/sqflite/Database$$ExternalSyntheticLambda1;->f$0:Lcom/tekartik/sqflite/Database;

    iput-object p2, p0, Lcom/tekartik/sqflite/Database$$ExternalSyntheticLambda1;->f$1:Lcom/tekartik/sqflite/operation/Operation;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tekartik/sqflite/Database$$ExternalSyntheticLambda1;->f$0:Lcom/tekartik/sqflite/Database;

    iget-object v1, p0, Lcom/tekartik/sqflite/Database$$ExternalSyntheticLambda1;->f$1:Lcom/tekartik/sqflite/operation/Operation;

    invoke-static {v0, v1}, Lcom/tekartik/sqflite/Database;->$r8$lambda$xH--LKz1rutG_Q4dzTgLhc2hlAA(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)V

    return-void
.end method
