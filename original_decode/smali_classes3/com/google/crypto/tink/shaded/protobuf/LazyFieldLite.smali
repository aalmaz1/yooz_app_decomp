.class public Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# instance fields
.field private delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

.field private volatile memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field protected volatile value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extensionRegistry",
            "bytes"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->checkArguments(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 95
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 96
    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private static checkArguments(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extensionRegistry",
            "bytes"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    return-void

    .line 413
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "found null ByteString"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 410
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "found null ExtensionRegistry"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;-><init>()V

    .line 108
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object v0
.end method

.method private static mergeValueAndBytes(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "otherBytes",
            "extensionRegistry"
        }
    .end annotation

    .line 308
    :try_start_0
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 168
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 169
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method public containsDefaultInstance()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected ensureInitialized(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_0

    return-void

    .line 384
    :cond_0
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_1

    .line 386
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 389
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 392
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Parser;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 393
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 394
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    goto :goto_0

    .line 396
    :cond_2
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 397
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 403
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 405
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 122
    :cond_1
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;

    .line 128
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 129
    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    .line 135
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->getValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 137
    :cond_4
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->getValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->ensureInitialized(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 199
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public merge(Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->set(Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;)V

    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v1, :cond_3

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->concat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_4

    .line 254
    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-static {p1, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-void

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_5

    .line 257
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-void

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-void
.end method

.method public mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setByteString(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1

    .line 281
    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->concat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    iget-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setByteString(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    return-void

    .line 298
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public set(Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 179
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 180
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 181
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 186
    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    if-eqz p1, :cond_0

    .line 187
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    :cond_0
    return-void
.end method

.method public setByteString(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "extensionRegistry"
        }
    .end annotation

    .line 318
    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->checkArguments(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 319
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 320
    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 322
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method public setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    const/4 v1, 0x0

    .line 210
    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 211
    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 212
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object v0
.end method

.method public toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_1

    return-object v0

    .line 353
    :cond_1
    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_3

    .line 358
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 363
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeTo(Lcom/google/crypto/tink/shaded/protobuf/Writer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "fieldNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 371
    invoke-interface {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 375
    :cond_2
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    :goto_0
    return-void
.end method
