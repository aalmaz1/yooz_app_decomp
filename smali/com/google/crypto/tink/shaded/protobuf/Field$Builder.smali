.class public final Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Field.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/FieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Field;",
        "Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/FieldOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 909
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Field;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Field$1;)V
    .registers 2

    .line 902
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;"
        }
    .end annotation

    .line 1268
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1269
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2200(Lcom/google/crypto/tink/shaded/protobuf/Field;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1258
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1259
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    .line 1260
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 1259
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Field;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1240
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1241
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Field;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1249
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1250
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2000(Lcom/google/crypto/tink/shaded/protobuf/Field;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1231
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1232
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2000(Lcom/google/crypto/tink/shaded/protobuf/Field;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public clearCardinality()Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 2

    .line 1000
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1001
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public clearDefaultValue()Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 2

    .line 1371
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1372
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2900(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public clearJsonName()Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 2

    .line 1322
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1323
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2600(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public clearKind()Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 2

    .line 954
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 955
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$300(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 2

    .line 1066
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1067
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public clearNumber()Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 2

    .line 1028
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1029
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$800(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public clearOneofIndex()Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 2

    .line 1154
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1155
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 2

    .line 1276
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1277
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2300(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public clearPacked()Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 2

    .line 1182
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1183
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1800(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public clearTypeUrl()Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 2

    .line 1115
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1116
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1300(Lcom/google/crypto/tink/shaded/protobuf/Field;)V

    return-object p0
.end method

.method public getCardinality()Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;
    .registers 2

    .line 983
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getCardinality()Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;

    move-result-object v0

    return-object v0
.end method

.method public getCardinalityValue()I
    .registers 2

    .line 965
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getCardinalityValue()I

    move-result v0

    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 2

    .line 1344
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 1353
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getDefaultValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJsonName()Ljava/lang/String;
    .registers 2

    .line 1295
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJsonNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 1304
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getJsonNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/google/crypto/tink/shaded/protobuf/Field$Kind;
    .registers 2

    .line 937
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getKind()Lcom/google/crypto/tink/shaded/protobuf/Field$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getKindValue()I
    .registers 2

    .line 919
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getKindValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1039
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 1048
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .registers 2

    .line 1011
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOneofIndex()I
    .registers 2

    .line 1137
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getOneofIndex()I

    move-result v0

    return v0
.end method

.method public getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1206
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .registers 2

    .line 1200
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getOptionsCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 1192
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    .line 1193
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 1192
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPacked()Z
    .registers 2

    .line 1165
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getPacked()Z

    move-result v0

    return v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .registers 2

    .line 1088
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 1097
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Field;->getTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1284
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1285
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2400(Lcom/google/crypto/tink/shaded/protobuf/Field;I)V

    return-object p0
.end method

.method public setCardinality(Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 991
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 992
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Field;Lcom/google/crypto/tink/shaded/protobuf/Field$Cardinality;)V

    return-object p0
.end method

.method public setCardinalityValue(I)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 973
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 974
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Field;I)V

    return-object p0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1362
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1363
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2800(Lcom/google/crypto/tink/shaded/protobuf/Field;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDefaultValueBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1382
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1383
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$3000(Lcom/google/crypto/tink/shaded/protobuf/Field;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setJsonName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1313
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1314
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2500(Lcom/google/crypto/tink/shaded/protobuf/Field;Ljava/lang/String;)V

    return-object p0
.end method

.method public setJsonNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1333
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1334
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$2700(Lcom/google/crypto/tink/shaded/protobuf/Field;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setKind(Lcom/google/crypto/tink/shaded/protobuf/Field$Kind;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 945
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 946
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Field;Lcom/google/crypto/tink/shaded/protobuf/Field$Kind;)V

    return-object p0
.end method

.method public setKindValue(I)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 927
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 928
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Field;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1057
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1058
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$900(Lcom/google/crypto/tink/shaded/protobuf/Field;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1077
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1078
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Field;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1019
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1020
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$700(Lcom/google/crypto/tink/shaded/protobuf/Field;I)V

    return-object p0
.end method

.method public setOneofIndex(I)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1145
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1146
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Field;I)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 1222
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1223
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    .line 1224
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 1223
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1900(Lcom/google/crypto/tink/shaded/protobuf/Field;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 1213
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1214
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1900(Lcom/google/crypto/tink/shaded/protobuf/Field;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setPacked(Z)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1173
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1174
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Field;Z)V

    return-object p0
.end method

.method public setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1106
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1107
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Field;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1126
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->copyOnWrite()V

    .line 1127
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Field$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Field;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Field;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Field;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method
