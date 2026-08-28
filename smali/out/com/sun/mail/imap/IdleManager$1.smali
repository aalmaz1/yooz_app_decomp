.class Lcom/sun/mail/imap/IdleManager$1;
.super Ljava/lang/Object;
.source "IdleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IdleManager;-><init>(Ljavax/mail/Session;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IdleManager;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IdleManager;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "IdleManager select terminating"

    .line 163
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v1}, Lcom/sun/mail/imap/IdleManager;->access$000(Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    const-string v2, "IdleManager select starting"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 165
    :try_start_e
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sun/mail/imap/IdleManager;->access$102(Lcom/sun/mail/imap/IdleManager;Z)Z

    .line 166
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v2}, Lcom/sun/mail/imap/IdleManager;->access$200(Lcom/sun/mail/imap/IdleManager;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_28

    .line 168
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v2, v1}, Lcom/sun/mail/imap/IdleManager;->access$102(Lcom/sun/mail/imap/IdleManager;Z)Z

    .line 169
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v1}, Lcom/sun/mail/imap/IdleManager;->access$000(Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    return-void

    :catchall_28
    move-exception v2

    .line 168
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v3, v1}, Lcom/sun/mail/imap/IdleManager;->access$102(Lcom/sun/mail/imap/IdleManager;Z)Z

    .line 169
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager$1;->this$0:Lcom/sun/mail/imap/IdleManager;

    invoke-static {v1}, Lcom/sun/mail/imap/IdleManager;->access$000(Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 170
    throw v2
.end method
