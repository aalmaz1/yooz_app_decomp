.class final Ljavax/activation/SecuritySupport$3;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cl:Ljava/lang/ClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 3

    .line 86
    iput-object p1, p0, Ljavax/activation/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;

    iput-object p2, p0, Ljavax/activation/SecuritySupport$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 90
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v2, p0, Ljavax/activation/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;

    iget-object v3, p0, Ljavax/activation/SecuritySupport$3;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    :cond_e
    :goto_e
    if-eqz v2, :cond_22

    .line 92
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 93
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    if-eqz v3, :cond_e

    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 97
    :cond_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/net/URL;

    .line 99
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/URL;

    check-cast v1, [Ljava/net/URL;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_36} :catch_37
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_36} :catch_37

    move-object v0, v1

    :catch_37
    :cond_37
    return-object v0
.end method
