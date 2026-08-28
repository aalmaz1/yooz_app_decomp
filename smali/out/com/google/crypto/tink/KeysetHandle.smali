.class public final Lcom/google/crypto/tink/KeysetHandle;
.super Ljava/lang/Object;
.source "KeysetHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/KeysetHandle$Entry;,
        Lcom/google/crypto/tink/KeysetHandle$Builder;
    }
.end annotation


# instance fields
.field private final annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final keyset:Lcom/google/crypto/tink/proto/Keyset;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/proto/Keyset;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyset",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/proto/Keyset;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Entry;",
            ">;)V"
        }
    .end annotation

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    .line 584
    iput-object p2, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    .line 585
    sget-object p1, Lcom/google/crypto/tink/internal/MonitoringAnnotations;->EMPTY:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/proto/Keyset;Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyset",
            "entries",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/proto/Keyset;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Entry;",
            ">;",
            "Lcom/google/crypto/tink/internal/MonitoringAnnotations;",
            ")V"
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    .line 591
    iput-object p2, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    .line 592
    iput-object p3, p0, Lcom/google/crypto/tink/KeysetHandle;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/Keyset;Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/KeysetHandle$1;)V
    .registers 5

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Lcom/google/crypto/tink/proto/Keyset;Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;I)Lcom/google/crypto/tink/proto/Keyset$Key;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 63
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/KeysetHandle;->createKeysetKey(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/crypto/tink/proto/Keyset;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertEnoughKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V

    return-void
.end method

.method private static assertEnoughEncryptedKeyMaterial(Lcom/google/crypto/tink/proto/EncryptedKeyset;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_d

    .line 1071
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->getEncryptedKeyset()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result p0

    if-eqz p0, :cond_d

    return-void

    .line 1072
    :cond_d
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static assertEnoughKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 1059
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyCount()I

    move-result p0

    if-lez p0, :cond_9

    return-void

    .line 1060
    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static assertNoSecretKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1041
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 1042
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->UNKNOWN_KEYMATERIAL:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-eq v1, v2, :cond_39

    .line 1043
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-eq v1, v2, :cond_39

    .line 1044
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-eq v1, v2, :cond_39

    goto :goto_8

    .line 1045
    :cond_39
    new-instance p0, Ljava/security/GeneralSecurityException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1048
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "keyset contains key material of type %s for type url %s"

    .line 1046
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    return-void
.end method

.method public static final createFromKey(Lcom/google/crypto/tink/tinkkey/KeyHandle;Lcom/google/crypto/tink/tinkkey/KeyAccess;)Lcom/google/crypto/tink/KeysetHandle;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyHandle",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 791
    invoke-static {}, Lcom/google/crypto/tink/KeysetManager;->withEmptyKeyset()Lcom/google/crypto/tink/KeysetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/KeysetManager;->add(Lcom/google/crypto/tink/tinkkey/KeyHandle;)Lcom/google/crypto/tink/KeysetManager;

    move-result-object p0

    .line 792
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/KeysetHandle;->getKeysetInfo()Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/KeysetInfo;->getKeyInfo(I)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;->getKeyId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/KeysetManager;->setPrimary(I)Lcom/google/crypto/tink/KeysetManager;

    .line 793
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method private static createKeysetKey(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;I)Lcom/google/crypto/tink/proto/Keyset$Key;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "keyStatus",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1248
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 1249
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 1250
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1251
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1d

    goto :goto_25

    .line 1252
    :cond_1d
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Wrong ID set for key with ID requirement"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1254
    :cond_25
    :goto_25
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle;->serializeStatus(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/google/crypto/tink/KeysetHandle;->toKeysetKey(ILcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object p0

    return-object p0
.end method

.method private static decrypt(Lcom/google/crypto/tink/proto/EncryptedKeyset;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/proto/Keyset;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encryptedKeyset",
            "masterKey",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 954
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->getEncryptedKeyset()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object p0

    .line 955
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object p1

    .line 953
    invoke-static {p0, p1}, Lcom/google/crypto/tink/proto/Keyset;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    .line 957
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertEnoughKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V
    :try_end_17
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p0

    .line 961
    :catch_18
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encrypt(Lcom/google/crypto/tink/proto/Keyset;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/proto/EncryptedKeyset;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyset",
            "masterKey",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object p1

    .line 940
    invoke-static {}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->newBuilder()Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;

    move-result-object p2

    .line 941
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;->setEncryptedKeyset(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;

    move-result-object p1

    .line 942
    invoke-static {p0}, Lcom/google/crypto/tink/Util;->getKeysetInfo(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;->setKeysetInfo(Lcom/google/crypto/tink/proto/KeysetInfo;)Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;

    move-result-object p0

    .line 943
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/EncryptedKeyset$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/EncryptedKeyset;

    return-object p0
.end method

.method private entryByIndex(I)Lcom/google/crypto/tink/KeysetHandle$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 533
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/KeysetHandle$Entry;

    return-object p1

    .line 530
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Keyset-Entry at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " has wrong status or key parsing failed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final fromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 600
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertEnoughKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 601
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->getEntriesFromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Ljava/util/List;

    move-result-object v0

    .line 603
    new-instance v1, Lcom/google/crypto/tink/KeysetHandle;

    invoke-direct {v1, p0, v0}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Lcom/google/crypto/tink/proto/Keyset;Ljava/util/List;)V

    return-object v1
.end method

.method static final fromKeysetAndAnnotations(Lcom/google/crypto/tink/proto/Keyset;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)Lcom/google/crypto/tink/KeysetHandle;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyset",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 612
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertEnoughKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 613
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->getEntriesFromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Ljava/util/List;

    move-result-object v0

    .line 614
    new-instance v1, Lcom/google/crypto/tink/KeysetHandle;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Lcom/google/crypto/tink/proto/Keyset;Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V

    return-object v1
.end method

.method public static generateEntryFromParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 570
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;-><init>(Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/KeysetHandle$1;)V

    return-object v0
.end method

.method public static generateEntryFromParametersName(Ljava/lang/String;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parametersName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 561
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->get(Ljava/lang/String;)Lcom/google/crypto/tink/Parameters;

    move-result-object p0

    .line 562
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;-><init>(Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/KeysetHandle$1;)V

    return-object v0
.end method

.method public static final generateNew(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/KeysetHandle;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeyTemplate;->toParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->generateNew(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final generateNew(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 742
    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle;->newBuilder()Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object v0

    .line 743
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->generateEntryFromParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withRandomId()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->makePrimary()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object p0

    .line 744
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->build()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final generateNew(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/KeysetHandle;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/TinkProtoParametersFormat;->parse([B)Lcom/google/crypto/tink/Parameters;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->generateNew(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method private static getEntriesFromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/proto/Keyset;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Entry;",
            ">;"
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 512
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 513
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v6

    .line 515
    :try_start_21
    invoke-static {v2}, Lcom/google/crypto/tink/KeysetHandle;->toKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/Key;

    move-result-object v4

    .line 516
    new-instance v9, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 518
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/KeysetHandle;->parseStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->getPrimaryKeyId()I

    move-result v2

    if-ne v6, v2, :cond_37

    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    move v7, v2

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;IZLcom/google/crypto/tink/KeysetHandle$1;)V

    .line 516
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/security/GeneralSecurityException; {:try_start_21 .. :try_end_41} :catch_42

    goto :goto_11

    :catch_42
    const/4 v2, 0x0

    .line 520
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 523
    :cond_47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getPrimitiveWithKnownInputPrimitive(Lcom/google/crypto/tink/internal/InternalConfiguration;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "classObject",
            "inputPrimitiveClassObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/internal/InternalConfiguration;",
            "Ljava/lang/Class<",
            "TP;>;",
            "Ljava/lang/Class<",
            "TB;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0}, Lcom/google/crypto/tink/Util;->validateKeyset(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 1081
    invoke-static {p3}, Lcom/google/crypto/tink/internal/PrimitiveSet;->newBuilder(Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;

    move-result-object v0

    .line 1082
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetHandle;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->setAnnotations(Lcom/google/crypto/tink/internal/MonitoringAnnotations;)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;

    const/4 v1, 0x0

    .line 1083
    :goto_f
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v2

    if-ge v1, v2, :cond_ac

    .line 1084
    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/proto/Keyset;->getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v2

    .line 1085
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/proto/KeyStatusType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1086
    iget-object v3, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/KeysetHandle$Entry;

    if-eqz v3, :cond_7b

    .line 1096
    invoke-virtual {v3}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object v3

    .line 1099
    :try_start_35
    invoke-virtual {p1, v3, p3}, Lcom/google/crypto/tink/internal/InternalConfiguration;->getPrimitive(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4
    :try_end_39
    .catch Ljava/security/GeneralSecurityException; {:try_start_35 .. :try_end_39} :catch_4d

    .line 1109
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v5

    iget-object v6, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v6}, Lcom/google/crypto/tink/proto/Keyset;->getPrimaryKeyId()I

    move-result v6

    if-ne v5, v6, :cond_49

    .line 1110
    invoke-virtual {v0, v4, v3, v2}, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->addPrimaryFullPrimitive(Ljava/lang/Object;Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;

    goto :goto_a8

    .line 1112
    :cond_49
    invoke-virtual {v0, v4, v3, v2}, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->addFullPrimitive(Ljava/lang/Object;Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;

    goto :goto_a8

    :catch_4d
    move-exception p1

    .line 1101
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to get primitive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " for key of type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1105
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", see https://developers.google.com/tink/faq/registration_errors"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 1089
    :cond_7b
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Key parsing of key with index "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " and type_url "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 1093
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " failed, unable to get primitive"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a8
    :goto_a8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    .line 1116
    :cond_ac
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveSet$Builder;->build()Lcom/google/crypto/tink/internal/PrimitiveSet;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/google/crypto/tink/internal/InternalConfiguration;->wrap(Lcom/google/crypto/tink/internal/PrimitiveSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static getPublicKeyDataFromRegistry(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/KeyData;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKeyData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1017
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    if-ne v0, v1, :cond_15

    .line 1021
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyData;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/crypto/tink/Registry;->getPublicKeyData(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object p0

    return-object p0

    .line 1018
    :cond_15
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "The keyset contains a non-private key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static importKey(Lcom/google/crypto/tink/Key;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 544
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeysetHandle$1;)V

    .line 545
    invoke-virtual {p0}, Lcom/google/crypto/tink/Key;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 547
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withFixedId(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    :cond_13
    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/KeysetHandle$Builder;
    .registers 1

    .line 624
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/KeysetHandle$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetHandle$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 629
    new-instance v0, Lcom/google/crypto/tink/KeysetHandle$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/KeysetHandle$Builder;-><init>()V

    const/4 v1, 0x0

    .line 630
    :goto_6
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 632
    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/KeysetHandle$Entry;

    if-nez v2, :cond_34

    .line 634
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Keyset-Entry in original keyset at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has wrong status or key parsing failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->access$1700(Lcom/google/crypto/tink/KeysetHandle$Builder;Ljava/security/GeneralSecurityException;)V

    goto :goto_5a

    .line 643
    :cond_34
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object v3

    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle;->importKey(Lcom/google/crypto/tink/Key;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withFixedId(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v3

    .line 644
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getStatus()Lcom/google/crypto/tink/KeyStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->setStatus(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 645
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 646
    invoke-virtual {v3}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->makePrimary()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 648
    :cond_54
    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/KeysetHandle$Builder;->addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5a
    :goto_5a
    return-object v0
.end method

.method private static parseStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/KeyStatus;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/google/crypto/tink/KeysetHandle$1;->$SwitchMap$com$google$crypto$tink$proto$KeyStatusType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyStatusType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-ne p0, v0, :cond_14

    .line 485
    sget-object p0, Lcom/google/crypto/tink/KeyStatus;->DESTROYED:Lcom/google/crypto/tink/KeyStatus;

    return-object p0

    .line 487
    :cond_14
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unknown key status"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 483
    :cond_1c
    sget-object p0, Lcom/google/crypto/tink/KeyStatus;->DISABLED:Lcom/google/crypto/tink/KeyStatus;

    return-object p0

    .line 481
    :cond_1f
    sget-object p0, Lcom/google/crypto/tink/KeyStatus;->ENABLED:Lcom/google/crypto/tink/KeyStatus;

    return-object p0
.end method

.method public static final read(Lcom/google/crypto/tink/KeysetReader;Lcom/google/crypto/tink/Aead;)Lcom/google/crypto/tink/KeysetHandle;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "masterKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 812
    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/KeysetHandle;->readWithAssociatedData(Lcom/google/crypto/tink/KeysetReader;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final readNoSecret(Lcom/google/crypto/tink/KeysetReader;)Lcom/google/crypto/tink/KeysetHandle;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    :try_start_0
    invoke-interface {p0}, Lcom/google/crypto/tink/KeysetReader;->read()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->toByteArray()[B

    move-result-object p0
    :try_end_8
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_8} :catch_d

    .line 861
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->readNoSecret([B)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0

    .line 859
    :catch_d
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readNoSecret([B)Lcom/google/crypto/tink/KeysetHandle;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "serialized"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/proto/Keyset;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    .line 883
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertNoSecretKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 884
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->fromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0
    :try_end_f
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    .line 887
    :catch_10
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readWithAssociatedData(Lcom/google/crypto/tink/KeysetReader;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/KeysetHandle;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "masterKey",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 833
    invoke-interface {p0}, Lcom/google/crypto/tink/KeysetReader;->readEncrypted()Lcom/google/crypto/tink/proto/EncryptedKeyset;

    move-result-object p0

    .line 834
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->assertEnoughEncryptedKeyMaterial(Lcom/google/crypto/tink/proto/EncryptedKeyset;)V

    .line 835
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/KeysetHandle;->decrypt(Lcom/google/crypto/tink/proto/EncryptedKeyset;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->fromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method private static serializeStatus(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/proto/KeyStatusType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 492
    sget-object v0, Lcom/google/crypto/tink/KeyStatus;->ENABLED:Lcom/google/crypto/tink/KeyStatus;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 493
    sget-object p0, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    return-object p0

    .line 495
    :cond_b
    sget-object v0, Lcom/google/crypto/tink/KeyStatus;->DISABLED:Lcom/google/crypto/tink/KeyStatus;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 496
    sget-object p0, Lcom/google/crypto/tink/proto/KeyStatusType;->DISABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    return-object p0

    .line 498
    :cond_16
    sget-object v0, Lcom/google/crypto/tink/KeyStatus;->DESTROYED:Lcom/google/crypto/tink/KeyStatus;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 499
    sget-object p0, Lcom/google/crypto/tink/proto/KeyStatusType;->DESTROYED:Lcom/google/crypto/tink/proto/KeyStatusType;

    return-object p0

    .line 501
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown key status"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protoKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1226
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->toProtoKeySerialization(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    .line 1227
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    .line 1228
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseKeyWithLegacyFallback(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p0

    return-object p0
.end method

.method private static toKeysetKey(ILcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/crypto/tink/proto/Keyset$Key;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "status",
            "protoKeySerialization"
        }
    .end annotation

    .line 1233
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset$Key;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v0

    .line 1235
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 1236
    invoke-virtual {p2}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 1237
    invoke-virtual {p2}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 1238
    invoke-virtual {p2}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v1

    .line 1234
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyData(Lcom/google/crypto/tink/proto/KeyData$Builder;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v0

    .line 1239
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    .line 1240
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p0

    .line 1241
    invoke-virtual {p2}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p0

    .line 1242
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/Keyset$Key;

    return-object p0
.end method

.method private static toProtoKeySerialization(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protoKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1214
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v0

    .line 1216
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-ne v1, v2, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1218
    :goto_12
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyData;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    .line 1220
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyData;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v3

    .line 1221
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset$Key;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    .line 1217
    invoke-static {v1, v2, v3, p0, v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equalsKeyset(Lcom/google/crypto/tink/KeysetHandle;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1186
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    move v0, v2

    move v1, v0

    .line 1190
    :goto_e
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v3

    if-ge v0, v3, :cond_39

    .line 1191
    iget-object v3, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 1192
    iget-object v4, p1, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/KeysetHandle$Entry;

    if-nez v3, :cond_27

    return v2

    :cond_27
    if-nez v4, :cond_2a

    return v2

    .line 1201
    :cond_2a
    invoke-static {v3, v4}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1800(Lcom/google/crypto/tink/KeysetHandle$Entry;Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result v4

    if-nez v4, :cond_31

    return v2

    .line 1204
    :cond_31
    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle$Entry;->access$1900(Lcom/google/crypto/tink/KeysetHandle$Entry;)Z

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_39
    if-nez v1, :cond_3c

    return v2

    :cond_3c
    const/4 p1, 0x1

    return p1
.end method

.method public getAt(I)Lcom/google/crypto/tink/KeysetHandle$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    if-ltz p1, :cond_d

    .line 693
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 696
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeysetHandle;->entryByIndex(I)Lcom/google/crypto/tink/KeysetHandle$Entry;

    move-result-object p1

    return-object p1

    .line 694
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " for keyset of size "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeys()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/tinkkey/KeyHandle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 709
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset;->getKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 710
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v3

    .line 711
    new-instance v4, Lcom/google/crypto/tink/tinkkey/internal/InternalKeyHandle;

    new-instance v5, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;

    .line 713
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v6

    invoke-static {v6}, Lcom/google/crypto/tink/KeyTemplate;->fromProto(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;-><init>(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)V

    .line 714
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v3

    .line 715
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v2

    invoke-direct {v4, v5, v3, v2}, Lcom/google/crypto/tink/tinkkey/internal/InternalKeyHandle;-><init>(Lcom/google/crypto/tink/tinkkey/TinkKey;Lcom/google/crypto/tink/proto/KeyStatusType;I)V

    .line 711
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 717
    :cond_3d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getKeyset()Lcom/google/crypto/tink/proto/Keyset;
    .registers 2

    .line 619
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    return-object v0
.end method

.method public getKeysetInfo()Lcom/google/crypto/tink/proto/KeysetInfo;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0}, Lcom/google/crypto/tink/Util;->getKeysetInfo(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPrimary()Lcom/google/crypto/tink/KeysetHandle$Entry;
    .registers 4

    .line 661
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Entry;

    if-eqz v1, :cond_6

    .line 662
    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 663
    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getStatus()Lcom/google/crypto/tink/KeyStatus;

    move-result-object v0

    sget-object v2, Lcom/google/crypto/tink/KeyStatus;->ENABLED:Lcom/google/crypto/tink/KeyStatus;

    if-ne v0, v2, :cond_23

    return-object v1

    .line 664
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Keyset has primary which isn\'t enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Keyset has no valid primary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrimitive(Lcom/google/crypto/tink/Configuration;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configuration",
            "targetClassObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/Configuration;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1125
    instance-of v0, p1, Lcom/google/crypto/tink/internal/InternalConfiguration;

    if-eqz v0, :cond_2a

    .line 1129
    check-cast p1, Lcom/google/crypto/tink/internal/InternalConfiguration;

    .line 1130
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/internal/InternalConfiguration;->getInputPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1134
    invoke-direct {p0, p1, p2, v0}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitiveWithKnownInputPrimitive(Lcom/google/crypto/tink/internal/InternalConfiguration;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1132
    :cond_11
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No wrapper found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2a
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Currently only subclasses of InternalConfiguration are accepted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrimitive(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetClassObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1152
    invoke-static {}, Lcom/google/crypto/tink/RegistryConfiguration;->get()Lcom/google/crypto/tink/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Lcom/google/crypto/tink/Configuration;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPublicKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    if-eqz v0, :cond_c0

    .line 976
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Builder;

    move-result-object v0

    .line 977
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 980
    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/KeysetHandle$Entry;

    if-eqz v5, :cond_5c

    .line 984
    invoke-virtual {v5}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object v6

    instance-of v6, v6, Lcom/google/crypto/tink/PrivateKey;

    if-eqz v6, :cond_5c

    .line 985
    invoke-virtual {v5}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/PrivateKey;

    invoke-interface {v6}, Lcom/google/crypto/tink/PrivateKey;->getPublicKey()Lcom/google/crypto/tink/Key;

    move-result-object v6

    .line 986
    new-instance v13, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 987
    invoke-virtual {v5}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getStatus()Lcom/google/crypto/tink/KeyStatus;

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v10

    invoke-virtual {v5}, Lcom/google/crypto/tink/KeysetHandle$Entry;->isPrimary()Z

    move-result v11

    const/4 v12, 0x0

    move-object v7, v13

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;IZLcom/google/crypto/tink/KeysetHandle$1;)V

    .line 988
    invoke-virtual {v5}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getStatus()Lcom/google/crypto/tink/KeyStatus;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getId()I

    move-result v5

    invoke-static {v6, v7, v5}, Lcom/google/crypto/tink/KeysetHandle;->createKeysetKey(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v5

    goto :goto_9f

    .line 990
    :cond_5c
    iget-object v5, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v5, v4}, Lcom/google/crypto/tink/proto/Keyset;->getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v5

    .line 991
    invoke-virtual {v5}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v6

    invoke-static {v6}, Lcom/google/crypto/tink/KeysetHandle;->getPublicKeyDataFromRegistry(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v6

    .line 992
    invoke-virtual {v5}, Lcom/google/crypto/tink/proto/Keyset$Key;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyData(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 994
    :try_start_7a
    invoke-static {v5}, Lcom/google/crypto/tink/KeysetHandle;->toKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/Key;

    move-result-object v7

    .line 995
    invoke-virtual {v5}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v9

    .line 996
    new-instance v13, Lcom/google/crypto/tink/KeysetHandle$Entry;

    .line 999
    invoke-virtual {v5}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v6

    invoke-static {v6}, Lcom/google/crypto/tink/KeysetHandle;->parseStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v8

    iget-object v6, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    .line 1001
    invoke-virtual {v6}, Lcom/google/crypto/tink/proto/Keyset;->getPrimaryKeyId()I

    move-result v6

    if-ne v9, v6, :cond_97

    const/4 v6, 0x1

    move v10, v6

    goto :goto_98

    :cond_97
    move v10, v3

    :goto_98
    const/4 v11, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lcom/google/crypto/tink/KeysetHandle$Entry;-><init>(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/KeyStatus;IZLcom/google/crypto/tink/KeysetHandle$1;)V
    :try_end_9d
    .catch Ljava/security/GeneralSecurityException; {:try_start_7a .. :try_end_9d} :catch_9e

    goto :goto_9f

    :catch_9e
    const/4 v13, 0x0

    .line 1007
    :goto_9f
    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/proto/Keyset$Builder;->addKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 1008
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 1011
    :cond_a9
    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset;->getPrimaryKeyId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setPrimaryKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 1012
    new-instance v2, Lcom/google/crypto/tink/KeysetHandle;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    iget-object v3, p0, Lcom/google/crypto/tink/KeysetHandle;->annotations:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/crypto/tink/KeysetHandle;-><init>(Lcom/google/crypto/tink/proto/Keyset;Ljava/util/List;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V

    return-object v2

    .line 973
    :cond_c0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cleartext keyset is not available"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public primaryKey()Lcom/google/crypto/tink/tinkkey/KeyHandle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1165
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset;->getPrimaryKeyId()I

    move-result v0

    .line 1166
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset;->getKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 1167
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v3

    if-ne v3, v0, :cond_10

    .line 1168
    new-instance v0, Lcom/google/crypto/tink/tinkkey/internal/InternalKeyHandle;

    new-instance v1, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;

    .line 1169
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyData()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/KeyTemplate;->fromProto(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;-><init>(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)V

    .line 1170
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v3

    .line 1171
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/crypto/tink/tinkkey/internal/InternalKeyHandle;-><init>(Lcom/google/crypto/tink/tinkkey/TinkKey;Lcom/google/crypto/tink/proto/KeyStatusType;I)V

    return-object v0

    .line 1174
    :cond_41
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No primary key found in keyset."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    .line 674
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1032
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->getKeysetInfo()Lcom/google/crypto/tink/proto/KeysetInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeysetInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/crypto/tink/KeysetWriter;Lcom/google/crypto/tink/Aead;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keysetWriter",
            "masterKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 901
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/KeysetHandle;->writeWithAssociatedData(Lcom/google/crypto/tink/KeysetWriter;Lcom/google/crypto/tink/Aead;[B)V

    return-void
.end method

.method public writeNoSecret(Lcom/google/crypto/tink/KeysetWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 932
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0}, Lcom/google/crypto/tink/KeysetHandle;->assertNoSecretKeyMaterial(Lcom/google/crypto/tink/proto/Keyset;)V

    .line 933
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-interface {p1, v0}, Lcom/google/crypto/tink/KeysetWriter;->write(Lcom/google/crypto/tink/proto/Keyset;)V

    return-void
.end method

.method public writeWithAssociatedData(Lcom/google/crypto/tink/KeysetWriter;Lcom/google/crypto/tink/Aead;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keysetWriter",
            "masterKey",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle;->keyset:Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0, p2, p3}, Lcom/google/crypto/tink/KeysetHandle;->encrypt(Lcom/google/crypto/tink/proto/Keyset;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/proto/EncryptedKeyset;

    move-result-object p2

    .line 917
    invoke-interface {p1, p2}, Lcom/google/crypto/tink/KeysetWriter;->write(Lcom/google/crypto/tink/proto/EncryptedKeyset;)V

    return-void
.end method
