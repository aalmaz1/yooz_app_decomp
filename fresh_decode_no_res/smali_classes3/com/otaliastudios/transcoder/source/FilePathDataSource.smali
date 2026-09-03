.class public Lcom/otaliastudios/transcoder/source/FilePathDataSource;
.super Lcom/otaliastudios/transcoder/source/DataSourceWrapper;
.source "FilePathDataSource.java"


# instance fields
.field private final mPath:Ljava/lang/String;

.field private mStream:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/otaliastudios/transcoder/source/FilePathDataSource;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deinitialize()V
    .locals 1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/transcoder/source/FilePathDataSource;->mStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    invoke-super {p0}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->deinitialize()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 30
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/FilePathDataSource;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/source/FilePathDataSource;->mStream:Ljava/io/FileInputStream;

    .line 31
    new-instance v0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/FilePathDataSource;->mStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/source/FilePathDataSource;->setSource(Lcom/otaliastudios/transcoder/source/DataSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    invoke-super {p0}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->initialize()V

    return-void

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
