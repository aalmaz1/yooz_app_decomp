.class final Ljavax/mail/Session$4;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/ClassLoader;
    .registers 2

    .line 1349
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .line 1344
    invoke-virtual {p0}, Ljavax/mail/Session$4;->run()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
