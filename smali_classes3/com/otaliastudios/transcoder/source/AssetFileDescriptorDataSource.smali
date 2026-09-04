.class public Lcom/otaliastudios/transcoder/source/AssetFileDescriptorDataSource;
.super Lcom/otaliastudios/transcoder/source/DataSourceWrapper;
.source "AssetFileDescriptorDataSource.java"


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7

    .line 16
    new-instance v6, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;

    .line 17
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 19
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    .line 16
    invoke-direct {p0, v6}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;)V

    return-void
.end method
