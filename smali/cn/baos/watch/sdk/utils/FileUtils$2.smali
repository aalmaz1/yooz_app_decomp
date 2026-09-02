.class Lcn/baos/watch/sdk/utils/FileUtils$2;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/utils/FileUtils;->writeZplValueToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$macAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 516
    iput-object p1, p0, Lcn/baos/watch/sdk/utils/FileUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/baos/watch/sdk/utils/FileUtils$2;->val$macAddress:Ljava/lang/String;

    iput-object p3, p0, Lcn/baos/watch/sdk/utils/FileUtils$2;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "\u5199\u5165\u6587\u4ef6\u5185\u5bb9:\n"

    .line 520
    iget-object v1, p0, Lcn/baos/watch/sdk/utils/FileUtils$2;->val$context:Landroid/content/Context;

    const-string v2, "zpl"

    invoke-static {v1, v2}, Lcn/baos/watch/sdk/utils/FileUtils;->getDirAndCreate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5199\u5165\u672c\u5730\u6587\u4ef6\u76ee\u5f55:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    if-nez v1, :cond_24

    const-string v0, "make dir failed!"

    .line 523
    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 526
    :cond_24
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/baos/watch/sdk/utils/FileUtils$2;->val$macAddress:Ljava/lang/String;

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u5199\u5165\u672c\u5730\u6587\u4ef6\u8def\u5f84:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_68

    const-string v1, "watchType.txt\u5df2\u5b58\u5728,\u5f00\u59cb\u5199\u5165"

    .line 532
    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_6d

    :cond_68
    const-string v1, "watchType.txt\u4e0d\u5b58\u5728,\u5199\u5165\u5f00\u59cb"

    .line 534
    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_6d
    const/4 v1, 0x0

    .line 539
    :try_start_6e
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 540
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_79} :catch_b2
    .catchall {:try_start_6e .. :try_end_79} :catchall_b0

    .line 541
    :try_start_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/baos/watch/sdk/utils/FileUtils$2;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/utils/FileUtils$2;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a3} :catch_ad
    .catchall {:try_start_79 .. :try_end_a3} :catchall_aa

    .line 548
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 550
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a9} :catch_bf

    goto :goto_c3

    :catchall_aa
    move-exception v0

    move-object v1, v2

    goto :goto_c4

    :catch_ad
    move-exception v0

    move-object v1, v2

    goto :goto_b3

    :catchall_b0
    move-exception v0

    goto :goto_c4

    :catch_b2
    move-exception v0

    .line 544
    :goto_b3
    :try_start_b3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b0

    if-eqz v1, :cond_c3

    .line 548
    :try_start_b8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 550
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_be} :catch_bf

    goto :goto_c3

    :catch_bf
    move-exception v0

    .line 556
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c3
    :goto_c3
    return-void

    :goto_c4
    if-eqz v1, :cond_d1

    .line 548
    :try_start_c6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 550
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_cc} :catch_cd

    goto :goto_d1

    :catch_cd
    move-exception v1

    .line 556
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 558
    :cond_d1
    :goto_d1
    throw v0
.end method
