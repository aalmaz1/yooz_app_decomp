.class Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$1;
.super Ljava/lang/Object;
.source "CbtLogs.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs;->input2File(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$input:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$1;->val$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$1;->val$input:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 557
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$1;->val$filePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_27
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    .line 558
    :try_start_e
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$1;->val$input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 559
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_20
    .catchall {:try_start_e .. :try_end_17} :catchall_3e

    .line 566
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    .line 569
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    goto :goto_2b

    :catchall_22
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3f

    :catch_27
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 561
    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    .line 562
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_3e

    if-eqz v1, :cond_3d

    .line 566
    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception v1

    .line 569
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3d
    :goto_3d
    return-object v0

    :catchall_3e
    move-exception v0

    :goto_3f
    if-eqz v1, :cond_49

    .line 566
    :try_start_41
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v1

    .line 569
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 571
    :cond_49
    :goto_49
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/bt/utils/CbtLogs$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
