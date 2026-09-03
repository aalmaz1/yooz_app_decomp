.class public final Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto;
.super Ljava/lang/Object;
.source "JavaFeaturesProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;,
        Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeaturesOrBuilder;
    }
.end annotation


# static fields
.field public static final JAVA_FIELD_NUMBER:I = 0x3e9

.field public static final java_:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;",
            "Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 469
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    .line 470
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    move-result-object v1

    .line 471
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x3e9

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    const-class v6, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    .line 468
    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto;->java_:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto;->java_:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->add(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    return-void
.end method
