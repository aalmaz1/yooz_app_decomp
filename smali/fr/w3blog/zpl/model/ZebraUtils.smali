.class public Lfr/w3blog/zpl/model/ZebraUtils;
.super Ljava/lang/Object;
.source "ZebraUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printZpl(Lfr/w3blog/zpl/model/ZebraLabel;Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfr/w3blog/zpl/model/ZebraPrintException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lfr/w3blog/zpl/model/ZebraLabel;->getZplCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lfr/w3blog/zpl/model/ZebraUtils;->printZpl(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static printZpl(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfr/w3blog/zpl/model/ZebraPrintException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1c

    .line 33
    :try_start_6
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_19

    .line 38
    :try_start_15
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    return-void

    :catchall_19
    move-exception p0

    move-object v0, v1

    goto :goto_1d

    :catchall_1c
    move-exception p0

    :goto_1d
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_22
    throw p0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_23

    :catch_23
    move-exception p0

    .line 42
    new-instance v0, Lfr/w3blog/zpl/model/ZebraPrintException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot print label on this printer : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lfr/w3blog/zpl/model/ZebraPrintException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static printZpl(Ljava/util/List;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfr/w3blog/zpl/model/ZebraLabel;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfr/w3blog/zpl/model/ZebraPrintException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr/w3blog/zpl/model/ZebraLabel;

    .line 77
    invoke-virtual {v1}, Lfr/w3blog/zpl/model/ZebraLabel;->getZplCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 79
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lfr/w3blog/zpl/model/ZebraUtils;->printZpl(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
