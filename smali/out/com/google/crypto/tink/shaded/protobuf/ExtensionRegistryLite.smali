.class public Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite$ObjectIntPair;,
        Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite$ExtensionClassHolder;
    }
.end annotation


# static fields
.field static final EMPTY_REGISTRY_LITE:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

.field static final EXTENSION_CLASS_NAME:Ljava/lang/String; = "com.google.crypto.tink.shaded.protobuf.Extension"

.field private static volatile eagerlyParseMessageSets:Z = false

.field private static volatile emptyRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;


# instance fields
.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 168
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_e

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    goto :goto_16

    .line 174
    :cond_e
    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    :goto_16
    return-void
.end method

.method constructor <init>(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "empty"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public static getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .registers 2

    .line 99
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->assumeLiteRuntime:Z

    if-eqz v0, :cond_7

    .line 100
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    return-object v0

    .line 102
    :cond_7
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1d

    .line 104
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    monitor-enter v1

    .line 105
    :try_start_e
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_18

    .line 107
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryFactory;->createEmpty()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->emptyRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 109
    :cond_18
    monitor-exit v1

    goto :goto_1d

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public static isEagerlyParseMessageSets()Z
    .registers 1

    .line 73
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    return v0
.end method

.method public static newInstance()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 87
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->assumeLiteRuntime:Z

    if-eqz v0, :cond_a

    .line 88
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;-><init>()V

    goto :goto_e

    .line 89
    :cond_a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryFactory;->create()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public static setEagerlyParseMessageSets(Z)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEagerlyParse"
        }
    .end annotation

    .line 77
    sput-boolean p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    return-void
.end method


# virtual methods
.method public final add(Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite<",
            "**>;)V"
        }
    .end annotation

    .line 144
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->add(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 147
    :cond_12
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->assumeLiteRuntime:Z

    if-nez v0, :cond_47

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryFactory;->isFullRegistry(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 149
    :try_start_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "add"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite$ExtensionClassHolder;->INSTANCE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_35} :catch_36

    goto :goto_47

    :catch_36
    move-exception v2

    .line 151
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Could not invoke ExtensionRegistry#add for %s"

    .line 152
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_47
    :goto_47
    return-void
.end method

.method public final add(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite$ObjectIntPair;

    .line 135
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 134
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public findLiteExtensionByNumber(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;I)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "fieldNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 129
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object p1
.end method

.method public getUnmodifiable()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .registers 2

    .line 116
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    return-object v0
.end method
