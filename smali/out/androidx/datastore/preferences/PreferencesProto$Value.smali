.class public final Landroidx/datastore/preferences/PreferencesProto$Value;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;
.source "PreferencesProto.java"

# interfaces
.implements Landroidx/datastore/preferences/PreferencesProto$ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/PreferencesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/PreferencesProto$Value$Builder;,
        Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite<",
        "Landroidx/datastore/preferences/PreferencesProto$Value;",
        "Landroidx/datastore/preferences/PreferencesProto$Value$Builder;",
        ">;",
        "Landroidx/datastore/preferences/PreferencesProto$ValueOrBuilder;"
    }
.end annotation


# static fields
.field public static final BOOLEAN_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

.field public static final DOUBLE_FIELD_NUMBER:I = 0x7

.field public static final FLOAT_FIELD_NUMBER:I = 0x2

.field public static final INTEGER_FIELD_NUMBER:I = 0x3

.field public static final LONG_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/PreferencesProto$Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_FIELD_NUMBER:I = 0x5

.field public static final STRING_SET_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1344
    new-instance v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-direct {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;-><init>()V

    .line 1347
    sput-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    .line 1348
    const-class v1, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 517
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 520
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    return-void
.end method

.method static synthetic access$1000(Landroidx/datastore/preferences/PreferencesProto$Value;)V
    .registers 1

    .line 512
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$Value;->clearInteger()V

    return-void
.end method

.method static synthetic access$1100(Landroidx/datastore/preferences/PreferencesProto$Value;J)V
    .registers 3

    .line 512
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->setLong(J)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/datastore/preferences/PreferencesProto$Value;)V
    .registers 1

    .line 512
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$Value;->clearLong()V

    return-void
.end method

.method static synthetic access$1300(Landroidx/datastore/preferences/PreferencesProto$Value;Ljava/lang/String;)V
    .registers 2

    .line 512
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->setString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Landroidx/datastore/preferences/PreferencesProto$Value;)V
    .registers 1

    .line 512
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$Value;->clearString()V

    return-void
.end method

.method static synthetic access$1500(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/protobuf/ByteString;)V
    .registers 2

    .line 512
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->setStringBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/PreferencesProto$StringSet;)V
    .registers 2

    .line 512
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->setStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet;)V

    return-void
.end method

.method static synthetic access$1700(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;)V
    .registers 2

    .line 512
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->setStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;)V

    return-void
.end method

.method static synthetic access$1800(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/PreferencesProto$StringSet;)V
    .registers 2

    .line 512
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->mergeStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet;)V

    return-void
.end method

.method static synthetic access$1900(Landroidx/datastore/preferences/PreferencesProto$Value;)V
    .registers 1

    .line 512
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$Value;->clearStringSet()V

    return-void
.end method

.method static synthetic access$2000(Landroidx/datastore/preferences/PreferencesProto$Value;D)V
    .registers 3

    .line 512
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->setDouble(D)V

    return-void
.end method

.method static synthetic access$2100(Landroidx/datastore/preferences/PreferencesProto$Value;)V
    .registers 1

    .line 512
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$Value;->clearDouble()V

    return-void
.end method

.method static synthetic access$300()Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 1

    .line 512
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/datastore/preferences/PreferencesProto$Value;)V
    .registers 1

    .line 512
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$Value;->clearValue()V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/PreferencesProto$Value;Z)V
    .registers 2

    .line 512
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->setBoolean(Z)V

    return-void
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/PreferencesProto$Value;)V
    .registers 1

    .line 512
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$Value;->clearBoolean()V

    return-void
.end method

.method static synthetic access$700(Landroidx/datastore/preferences/PreferencesProto$Value;F)V
    .registers 2

    .line 512
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->setFloat(F)V

    return-void
.end method

.method static synthetic access$800(Landroidx/datastore/preferences/PreferencesProto$Value;)V
    .registers 1

    .line 512
    invoke-direct {p0}, Landroidx/datastore/preferences/PreferencesProto$Value;->clearFloat()V

    return-void
.end method

.method static synthetic access$900(Landroidx/datastore/preferences/PreferencesProto$Value;I)V
    .registers 2

    .line 512
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->setInteger(I)V

    return-void
.end method

.method private clearBoolean()V
    .registers 3

    .line 605
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 606
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v0, 0x0

    .line 607
    iput-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearDouble()V
    .registers 3

    .line 887
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 888
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v0, 0x0

    .line 889
    iput-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearFloat()V
    .registers 3

    .line 643
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 644
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearInteger()V
    .registers 3

    .line 681
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 682
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearLong()V
    .registers 3

    .line 719
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 720
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearString()V
    .registers 3

    .line 775
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 776
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v0, 0x0

    .line 777
    iput-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearStringSet()V
    .registers 3

    .line 849
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 850
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v0, 0x0

    .line 851
    iput-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearValue()V
    .registers 2

    const/4 v0, 0x0

    .line 569
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 1

    .line 1353
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object v0
.end method

.method private mergeStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet;)V
    .registers 5

    .line 834
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 836
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    .line 837
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->getDefaultInstance()Landroidx/datastore/preferences/PreferencesProto$StringSet;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 838
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->newBuilder(Landroidx/datastore/preferences/PreferencesProto$StringSet;)Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;

    move-result-object v0

    .line 839
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->buildPartial()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    goto :goto_27

    .line 841
    :cond_25
    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    .line 843
    :goto_27
    iput v1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    return-void
.end method

.method public static newBuilder()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 1

    .line 968
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->createBuilder()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroidx/datastore/preferences/PreferencesProto$Value;)Landroidx/datastore/preferences/PreferencesProto$Value$Builder;
    .registers 2

    .line 971
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/PreferencesProto$Value;->createBuilder(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/PreferencesProto$Value;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 951
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->parseDelimitedFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 909
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 916
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/ByteString;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 933
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 940
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 896
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 903
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseFrom([B)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 921
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[B)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parseFrom([BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 928
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->parseFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;[BLandroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p0
.end method

.method public static parser()Landroidx/datastore/preferences/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "Landroidx/datastore/preferences/PreferencesProto$Value;",
            ">;"
        }
    .end annotation

    .line 1359
    sget-object v0, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->getParserForType()Landroidx/datastore/preferences/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBoolean(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 598
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    .line 599
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setDouble(D)V
    .registers 4

    const/4 v0, 0x7

    .line 880
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    .line 881
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setFloat(F)V
    .registers 3

    const/4 v0, 0x2

    .line 636
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    .line 637
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setInteger(I)V
    .registers 3

    const/4 v0, 0x3

    .line 674
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    .line 675
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setLong(J)V
    .registers 4

    const/4 v0, 0x4

    .line 712
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    .line 713
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setString(Ljava/lang/String;)V
    .registers 3

    .line 766
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    .line 768
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    .line 769
    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setStringBytes(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .registers 3

    .line 787
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    .line 789
    iput v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    .line 790
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;)V
    .registers 2

    .line 826
    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 827
    iput p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    return-void
.end method

.method private setStringSet(Landroidx/datastore/preferences/PreferencesProto$StringSet;)V
    .registers 2

    .line 816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    iput-object p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 819
    iput p1, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1292
    sget-object p2, Landroidx/datastore/preferences/PreferencesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_64

    .line 1337
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 1331
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1316
    :pswitch_19
    sget-object p1, Landroidx/datastore/preferences/PreferencesProto$Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_32

    .line 1318
    const-class p2, Landroidx/datastore/preferences/PreferencesProto$Value;

    monitor-enter p2

    .line 1319
    :try_start_20
    sget-object p1, Landroidx/datastore/preferences/PreferencesProto$Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    if-nez p1, :cond_2d

    .line 1321
    new-instance p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    .line 1324
    sput-object p1, Landroidx/datastore/preferences/PreferencesProto$Value;->PARSER:Landroidx/datastore/preferences/protobuf/Parser;

    .line 1326
    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-object p1

    .line 1313
    :pswitch_33
    sget-object p1, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    return-object p1

    :pswitch_36
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string/jumbo v0, "value_"

    aput-object v0, p1, p3

    const-string/jumbo p3, "valueCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "bitField0_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 1300
    const-class p3, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000"

    .line 1309
    sget-object p3, Landroidx/datastore/preferences/PreferencesProto$Value;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->newMessageInfo(Landroidx/datastore/preferences/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1297
    :pswitch_57
    new-instance p1, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/PreferencesProto$Value$Builder;-><init>(Landroidx/datastore/preferences/PreferencesProto$1;)V

    return-object p1

    .line 1294
    :pswitch_5d
    new-instance p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-direct {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;-><init>()V

    return-object p1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_57
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public getBoolean()Z
    .registers 3

    .line 588
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 589
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public getDouble()D
    .registers 3

    .line 870
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e

    .line 871
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat()F
    .registers 3

    .line 626
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 627
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public getInteger()I
    .registers 3

    .line 664
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 665
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public getLong()J
    .registers 3

    .line 702
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 703
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .registers 3

    .line 741
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 742
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_a
    const-string v0, ""

    :goto_c
    return-object v0
.end method

.method public getStringBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .registers 3

    .line 754
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 755
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_a
    const-string v0, ""

    .line 757
    :goto_c
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet()Landroidx/datastore/preferences/PreferencesProto$StringSet;
    .registers 3

    .line 806
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 807
    iget-object v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->value_:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    return-object v0

    .line 809
    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->getDefaultInstance()Landroidx/datastore/preferences/PreferencesProto$StringSet;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;
    .registers 2

    .line 564
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;->forNumber(I)Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasBoolean()Z
    .registers 3

    .line 580
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public hasDouble()Z
    .registers 3

    .line 862
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasFloat()Z
    .registers 3

    .line 618
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasInteger()Z
    .registers 3

    .line 656
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasLong()Z
    .registers 3

    .line 694
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasString()Z
    .registers 3

    .line 732
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasStringSet()Z
    .registers 3

    .line 799
    iget v0, p0, Landroidx/datastore/preferences/PreferencesProto$Value;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
