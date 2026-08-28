.class Lio/flutter/embedding/engine/loader/FlutterLoader$1;
.super Ljava/lang/Object;
.source "FlutterLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    .registers 9

    const-string v0, "Could not load libflutter.so this is possibly because the application is running on an architecture that Flutter Android does not support (e.g. x86) see https://docs.flutter.dev/deployment/android#what-are-the-supported-target-architectures for more detail.\nApp is using cpu architecture: "

    const-string v1, "FlutterLoader initTask"

    .line 179
    invoke-static {v1}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v1

    .line 180
    :try_start_8
    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iget-object v3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$000(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)Lio/flutter/embedding/engine/loader/ResourceExtractor;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_b4

    .line 183
    :try_start_10
    iget-object v3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v3}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v3

    invoke-virtual {v3}, Lio/flutter/embedding/engine/FlutterJNI;->loadLibrary()V
    :try_end_19
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10 .. :try_end_19} :catch_53
    .catchall {:try_start_10 .. :try_end_19} :catchall_b4

    .line 216
    :try_start_19
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->updateRefreshRate()V

    .line 220
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$300(Lio/flutter/embedding/engine/loader/FlutterLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lio/flutter/embedding/engine/loader/FlutterLoader$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lio/flutter/embedding/engine/loader/FlutterLoader$1$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader$1;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_35

    .line 223
    invoke-virtual {v2}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->waitForCompletion()V

    .line 226
    :cond_35
    new-instance v0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 227
    invoke-static {v2}, Lio/flutter/util/PathUtils;->getFilesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 228
    invoke-static {v3}, Lio/flutter/util/PathUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 229
    invoke-static {v4}, Lio/flutter/util/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/loader/FlutterLoader$1;)V
    :try_end_4d
    .catchall {:try_start_19 .. :try_end_4d} :catchall_b4

    if-eqz v1, :cond_52

    .line 230
    invoke-virtual {v1}, Lio/flutter/util/TraceSection;->close()V

    :cond_52
    return-object v0

    :catch_53
    move-exception v2

    :try_start_54
    const-string v3, "couldn\'t find \"libflutter.so\""

    const-string v4, "dlopen failed: library \"libflutter.so\" not found"

    .line 188
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 189
    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6d

    goto :goto_6e

    .line 213
    :cond_6d
    throw v2

    :cond_6e
    :goto_6e
    const-string v3, "os.arch"

    .line 195
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v5}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$200(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Lio/flutter/embedding/engine/loader/FlutterApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 199
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", and the native libraries directory (with path "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") contains the following files: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_b4
    .catchall {:try_start_54 .. :try_end_b4} :catchall_b4

    :catchall_b4
    move-exception v0

    if-eqz v1, :cond_bf

    .line 179
    :try_start_b7
    invoke-virtual {v1}, Lio/flutter/util/TraceSection;->close()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_bb

    goto :goto_bf

    :catchall_bb
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_bf
    :goto_bf
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->call()Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$call$0$io-flutter-embedding-engine-loader-FlutterLoader$1()V
    .registers 2

    .line 220
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManager()V

    return-void
.end method
