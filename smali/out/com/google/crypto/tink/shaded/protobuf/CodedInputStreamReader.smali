.class final Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "CodedInputStreamReader.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Reader;


# annotations
.annotation runtime Lcom/google/crypto/tink/shaded/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final FIXED64_MULTIPLE_MASK:I = 0x7

.field private static final NEXT_TAG_UNSET:I


# instance fields
.field private endGroupTag:I

.field private final input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

.field private nextTag:I

.field private tag:I


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    const-string v0, "input"

    .line 44
    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    .line 45
    iput-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->wrapper:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;

    return-void
.end method

.method public static forCodedInput(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->wrapper:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_7

    .line 38
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->wrapper:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;

    return-object p0

    .line 40
    :cond_7
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;-><init>(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)V

    return-object v0
.end method

.method private mergeGroupFieldInternal(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 220
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 223
    :try_start_f
    invoke-interface {p2, p1, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 224
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    iget p2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->endGroupTag:I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_20

    if-ne p1, p2, :cond_1b

    .line 229
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->endGroupTag:I

    return-void

    .line 225
    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p1

    .line 229
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 230
    throw p1
.end method

.method private mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    iget v1, v1, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->recursionDepth:I

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    iget v2, v2, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v1, v2, :cond_35

    .line 192
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    iget v2, v1, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->recursionDepth:I

    .line 194
    invoke-interface {p2, p1, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 195
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 196
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    iget p2, p1, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->recursionDepth:I

    .line 198
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->popLimit(I)V

    return-void

    .line 188
    :cond_35
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private readField(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldType",
            "messageType",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1281
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_a0

    .line 1317
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1315
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readUInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1313
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1311
    :pswitch_25
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1309
    :pswitch_2a
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readSInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1307
    :pswitch_33
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readSInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1305
    :pswitch_3c
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readSFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1303
    :pswitch_45
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readSFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1301
    :pswitch_4e
    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1299
    :pswitch_53
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1297
    :pswitch_5c
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readInt32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1295
    :pswitch_65
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1293
    :pswitch_6e
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1291
    :pswitch_77
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1289
    :pswitch_80
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readEnum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1287
    :pswitch_89
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1285
    :pswitch_92
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 1283
    :pswitch_97
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readBool()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_97
        :pswitch_92
        :pswitch_89
        :pswitch_80
        :pswitch_77
        :pswitch_6e
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_4e
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_2a
        :pswitch_25
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method private readGroup(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 236
    invoke-direct {p0, v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 237
    invoke-interface {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private readMessage(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 205
    invoke-direct {p0, v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 206
    invoke-interface {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    return-object v0
.end method

.method private requirePosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    .line 1330
    :cond_9
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private requireWireType(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requiredWireType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    .line 82
    :cond_9
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method private verifyPackedFixed32Length(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_5

    return-void

    .line 1324
    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private verifyPackedFixed64Length(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_5

    return-void

    .line 1225
    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getFieldNumber()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_a

    .line 56
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_12

    .line 59
    :cond_a
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    .line 61
    :goto_12
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eqz v0, :cond_20

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_1b

    goto :goto_20

    .line 64
    :cond_1b
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0

    :cond_20
    :goto_20
    const v0, 0x7fffffff

    return v0
.end method

.method public getTag()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    return v0
.end method

.method public mergeGroupField(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 213
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public mergeMessageField(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 180
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readBool()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 131
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_58

    .line 692
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    .line 693
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_39

    if-ne p1, v1, :cond_34

    .line 695
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 696
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 698
    :cond_1f
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 699
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 700
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_87

    .line 716
    :cond_34
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 704
    :cond_39
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 705
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    .line 708
    :cond_4b
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 709
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_39

    .line 711
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 719
    :cond_58
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_8d

    if-ne v0, v1, :cond_88

    .line 721
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 722
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 724
    :cond_6f
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_6f

    .line 726
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_87
    return-void

    .line 742
    :cond_88
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 730
    :cond_8d
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    .line 734
    :cond_a3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 735
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8d

    .line 737
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 243
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 244
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readBytesList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 861
    :cond_9
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 865
    :cond_19
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 866
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_9

    .line 868
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 857
    :cond_26
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 89
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_59

    .line 286
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    .line 287
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_3a

    if-ne p1, v1, :cond_35

    .line 289
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 290
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 291
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 293
    :cond_23
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->addDouble(D)V

    .line 294
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_23

    goto :goto_88

    .line 310
    :cond_35
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 298
    :cond_3a
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->addDouble(D)V

    .line 299
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4c

    return-void

    .line 302
    :cond_4c
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 303
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_3a

    .line 305
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 313
    :cond_59
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_8e

    if-ne v0, v1, :cond_89

    .line 315
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 316
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 317
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 319
    :cond_73
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_73

    :goto_88
    return-void

    .line 336
    :cond_89
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 324
    :cond_8e
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a4

    return-void

    .line 328
    :cond_a4
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 329
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8e

    .line 331
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 256
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_58

    .line 935
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    .line 936
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_39

    if-ne p1, v1, :cond_34

    .line 938
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 939
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 941
    :cond_1f
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 942
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 943
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_87

    .line 959
    :cond_34
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 947
    :cond_39
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 948
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    .line 951
    :cond_4b
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 952
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_39

    .line 954
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 962
    :cond_58
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_8d

    if-ne v0, v1, :cond_88

    .line 964
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 965
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 967
    :cond_6f
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_6f

    .line 969
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_87
    return-void

    .line 985
    :cond_88
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 973
    :cond_8d
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    .line 977
    :cond_a3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 978
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8d

    .line 980
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 124
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 125
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5a

    .line 634
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    .line 635
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_37

    if-ne p1, v1, :cond_32

    .line 646
    :cond_13
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFixed32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 647
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_25

    return-void

    .line 650
    :cond_25
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 651
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_13

    .line 653
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 658
    :cond_32
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 637
    :cond_37
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 638
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 639
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int v3, v1, p1

    .line 641
    :cond_48
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFixed32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 642
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v3, :cond_48

    goto :goto_b1

    .line 661
    :cond_5a
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_8c

    if-ne v0, v1, :cond_87

    .line 672
    :cond_64
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7a

    return-void

    .line 676
    :cond_7a
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 677
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_64

    .line 679
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 684
    :cond_87
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 663
    :cond_8c
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 664
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 665
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 667
    :cond_9c
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_9c

    :goto_b1
    return-void
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 118
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 119
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_59

    .line 576
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    .line 577
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_3a

    if-ne p1, v1, :cond_35

    .line 579
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 580
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 581
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 583
    :cond_23
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->addLong(J)V

    .line 584
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_23

    goto :goto_88

    .line 600
    :cond_35
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 588
    :cond_3a
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->addLong(J)V

    .line 589
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4c

    return-void

    .line 592
    :cond_4c
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 593
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_3a

    .line 595
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 603
    :cond_59
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_8e

    if-ne v0, v1, :cond_89

    .line 605
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 606
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 607
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 609
    :cond_73
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_73

    :goto_88
    return-void

    .line 626
    :cond_89
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 614
    :cond_8e
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a4

    return-void

    .line 618
    :cond_a4
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 619
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8e

    .line 621
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 94
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 95
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5a

    .line 344
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    .line 345
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_37

    if-ne p1, v1, :cond_32

    .line 356
    :cond_13
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->addFloat(F)V

    .line 357
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_25

    return-void

    .line 360
    :cond_25
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 361
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_13

    .line 363
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 368
    :cond_32
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 347
    :cond_37
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 348
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 349
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int v3, v1, p1

    .line 351
    :cond_48
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->addFloat(F)V

    .line 352
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v3, :cond_48

    goto :goto_b1

    .line 371
    :cond_5a
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_8c

    if-ne v0, v1, :cond_87

    .line 382
    :cond_64
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7a

    return-void

    .line 386
    :cond_7a
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 387
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_64

    .line 389
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 394
    :cond_87
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 373
    :cond_8c
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 374
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 375
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 377
    :cond_9c
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_9c

    :goto_b1
    return-void
.end method

.method public readGroup(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 165
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 166
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readGroup(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readGroupBySchemaWithCheck(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 173
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readGroup(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readGroupList(Ljava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 836
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    .line 839
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    .line 841
    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readGroup(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_29

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_1f

    goto :goto_29

    .line 845
    :cond_1f
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eq v1, v0, :cond_b

    .line 848
    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    :cond_29
    :goto_29
    return-void

    .line 837
    :cond_2a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "targetType",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 827
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p2

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readGroupList(Ljava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 113
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_58

    .line 518
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    .line 519
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_39

    if-ne p1, v1, :cond_34

    .line 521
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 522
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 524
    :cond_1f
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 525
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 526
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_87

    .line 542
    :cond_34
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 530
    :cond_39
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 531
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    .line 534
    :cond_4b
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 535
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_39

    .line 537
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 545
    :cond_58
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_8d

    if-ne v0, v1, :cond_88

    .line 547
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 548
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 550
    :cond_6f
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_6f

    .line 552
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_87
    return-void

    .line 568
    :cond_88
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 556
    :cond_8d
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    .line 560
    :cond_a3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 561
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8d

    .line 563
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 107
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_58

    .line 460
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    .line 461
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_39

    if-ne p1, v1, :cond_34

    .line 463
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 464
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 466
    :cond_1f
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->addLong(J)V

    .line 467
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 468
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_87

    .line 484
    :cond_34
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 472
    :cond_39
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->addLong(J)V

    .line 473
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    .line 476
    :cond_4b
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 477
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_39

    .line 479
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 487
    :cond_58
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_8d

    if-ne v0, v1, :cond_88

    .line 489
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 492
    :cond_6f
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_6f

    .line 494
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_87
    return-void

    .line 510
    :cond_88
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 498
    :cond_8d
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    .line 502
    :cond_a3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 503
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8d

    .line 505
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readMap(Ljava/util/Map;Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "metadata",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1236
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 1237
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 1238
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 1239
    iget-object v2, p2, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1240
    iget-object v3, p2, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1243
    :goto_14
    :try_start_14
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5c

    .line 1244
    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v5
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_65

    if-eqz v5, :cond_26

    goto :goto_5c

    :cond_26
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_47

    if-eq v4, v0, :cond_3a

    .line 1259
    :try_start_2d
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_14

    .line 1260
    :cond_34
    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1253
    :cond_3a
    iget-object v4, p2, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->valueType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    iget-object v5, p2, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1256
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1255
    invoke-direct {p0, v4, v5, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readField(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_14

    .line 1250
    :cond_47
    iget-object v4, p2, Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;->keyType:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readField(Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4e
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2d .. :try_end_4e} :catch_4f
    .catchall {:try_start_2d .. :try_end_4e} :catchall_65

    goto :goto_14

    .line 1266
    :catch_4f
    :try_start_4f
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v4

    if-eqz v4, :cond_56

    goto :goto_14

    .line 1267
    :cond_56
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, v6}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1271
    :cond_5c
    :goto_5c
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_65

    .line 1274
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->popLimit(I)V

    return-void

    :catchall_65
    move-exception p1

    iget-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p2, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->popLimit(I)V

    .line 1275
    throw p1
.end method

.method public readMessage(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 149
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 150
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readMessage(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readMessageBySchemaWithCheck(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 157
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readMessage(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readMessageList(Ljava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "schema",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 807
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    .line 809
    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readMessage(Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_29

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_1f

    goto :goto_29

    .line 813
    :cond_1f
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eq v1, v0, :cond_b

    .line 816
    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    :cond_29
    :goto_29
    return-void

    .line 805
    :cond_2a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "targetType",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p2

    .line 797
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readMessageList(Ljava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 261
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 262
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5a

    .line 993
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    .line 994
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_37

    if-ne p1, v1, :cond_32

    .line 1005
    :cond_13
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSFixed32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 1006
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_25

    return-void

    .line 1009
    :cond_25
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 1010
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_13

    .line 1012
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 1017
    :cond_32
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 996
    :cond_37
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 997
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 998
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int v3, v1, p1

    .line 1000
    :cond_48
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSFixed32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 1001
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v3, :cond_48

    goto :goto_b1

    .line 1020
    :cond_5a
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_8c

    if-ne v0, v1, :cond_87

    .line 1031
    :cond_64
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7a

    return-void

    .line 1035
    :cond_7a
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1036
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_64

    .line 1038
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 1043
    :cond_87
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1022
    :cond_8c
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1023
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 1024
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1026
    :cond_9c
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_9c

    :goto_b1
    return-void
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 267
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 268
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1050
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_59

    .line 1051
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    .line 1052
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eq p1, v2, :cond_3a

    if-ne p1, v1, :cond_35

    .line 1054
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 1055
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 1056
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 1058
    :cond_23
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->addLong(J)V

    .line 1059
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_23

    goto :goto_88

    .line 1075
    :cond_35
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1063
    :cond_3a
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->addLong(J)V

    .line 1064
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4c

    return-void

    .line 1067
    :cond_4c
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 1068
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_3a

    .line 1070
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 1078
    :cond_59
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eq v0, v2, :cond_8e

    if-ne v0, v1, :cond_89

    .line 1080
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1081
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 1082
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1084
    :cond_73
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_73

    :goto_88
    return-void

    .line 1101
    :cond_89
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1089
    :cond_8e
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a4

    return-void

    .line 1093
    :cond_a4
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1094
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8e

    .line 1096
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 274
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_58

    .line 1109
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    .line 1110
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_39

    if-ne p1, v1, :cond_34

    .line 1112
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 1113
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 1115
    :cond_1f
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 1116
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 1117
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_87

    .line 1133
    :cond_34
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1121
    :cond_39
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 1122
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    .line 1125
    :cond_4b
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 1126
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_39

    .line 1128
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 1136
    :cond_58
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_8d

    if-ne v0, v1, :cond_88

    .line 1138
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1139
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1141
    :cond_6f
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_6f

    .line 1143
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_87
    return-void

    .line 1159
    :cond_88
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1147
    :cond_8d
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    .line 1151
    :cond_a3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1152
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8d

    .line 1154
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 280
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_58

    .line 1167
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    .line 1168
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_39

    if-ne p1, v1, :cond_34

    .line 1170
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 1171
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 1173
    :cond_1f
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->addLong(J)V

    .line 1174
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 1175
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_87

    .line 1191
    :cond_34
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1179
    :cond_39
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->addLong(J)V

    .line 1180
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    .line 1183
    :cond_4b
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 1184
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_39

    .line 1186
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 1194
    :cond_58
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_8d

    if-ne v0, v1, :cond_88

    .line 1196
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1197
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1199
    :cond_6f
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_6f

    .line 1201
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_87
    return-void

    .line 1217
    :cond_88
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 1205
    :cond_8d
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    .line 1209
    :cond_a3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1210
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8d

    .line 1212
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 136
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 137
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 749
    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "requireUtf8"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    .line 762
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyStringList;

    if-eqz v0, :cond_2f

    if-nez p2, :cond_2f

    .line 763
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/LazyStringList;

    .line 765
    :cond_12
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyStringList;->add(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 766
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_22

    return-void

    .line 769
    :cond_22
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 770
    iget p2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, p2, :cond_12

    .line 772
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2f
    if-eqz p2, :cond_36

    .line 778
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_36
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_46

    return-void

    .line 782
    :cond_46
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 783
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_2f

    .line 785
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 759
    :cond_53
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 754
    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 142
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 143
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 250
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_58

    .line 877
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    .line 878
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_39

    if-ne p1, v1, :cond_34

    .line 880
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 881
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 883
    :cond_1f
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 884
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 885
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_87

    .line 901
    :cond_34
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 889
    :cond_39
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    .line 890
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    .line 893
    :cond_4b
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 894
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_39

    .line 896
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 904
    :cond_58
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_8d

    if-ne v0, v1, :cond_88

    .line 906
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 907
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 909
    :cond_6f
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_6f

    .line 911
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_87
    return-void

    .line 927
    :cond_88
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 915
    :cond_8d
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    .line 919
    :cond_a3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 920
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8d

    .line 922
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 101
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    const/4 v1, 0x2

    if-eqz v0, :cond_58

    .line 402
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    .line 403
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result p1

    if-eqz p1, :cond_39

    if-ne p1, v1, :cond_34

    .line 405
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    .line 406
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p1

    .line 408
    :cond_1f
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->addLong(J)V

    .line 409
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result p1

    if-lt p1, v1, :cond_1f

    .line 410
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    goto :goto_87

    .line 426
    :cond_34
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 414
    :cond_39
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->addLong(J)V

    .line 415
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result p1

    if-eqz p1, :cond_4b

    return-void

    .line 418
    :cond_4b
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result p1

    .line 419
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq p1, v1, :cond_39

    .line 421
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    .line 429
    :cond_58
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-eqz v0, :cond_8d

    if-ne v0, v1, :cond_88

    .line 431
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 432
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 434
    :cond_6f
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-lt v0, v1, :cond_6f

    .line 436
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->requirePosition(I)V

    :goto_87
    return-void

    .line 452
    :cond_88
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 440
    :cond_8d
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    .line 444
    :cond_a3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 445
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_8d

    .line 447
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->nextTag:I

    return-void
.end method

.method public shouldDiscardUnknownFields()Z
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->shouldDiscardUnknownFields()Z

    move-result v0

    return v0
.end method

.method public skipField()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_f

    goto :goto_16

    .line 77
    :cond_f
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->input:Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    return v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method
