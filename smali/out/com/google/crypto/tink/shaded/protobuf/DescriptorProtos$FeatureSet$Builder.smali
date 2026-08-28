.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 25393
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$52100()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .registers 2

    .line 25386
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnumType()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25464
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25465
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$52500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public clearFieldPresence()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25428
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25429
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$52300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public clearJsonFormat()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25608
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25609
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$53300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public clearMessageEncoding()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25572
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25573
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$53100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public clearRepeatedFieldEncoding()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25500
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25501
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$52700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public clearUtf8Validation()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 2

    .line 25536
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25537
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$52900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public getEnumType()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;
    .registers 2

    .line 25447
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getEnumType()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;

    move-result-object v0

    return-object v0
.end method

.method public getFieldPresence()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .registers 2

    .line 25411
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getFieldPresence()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    move-result-object v0

    return-object v0
.end method

.method public getJsonFormat()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;
    .registers 2

    .line 25591
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getJsonFormat()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    move-result-object v0

    return-object v0
.end method

.method public getMessageEncoding()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;
    .registers 2

    .line 25555
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getMessageEncoding()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldEncoding()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;
    .registers 2

    .line 25483
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getRepeatedFieldEncoding()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    move-result-object v0

    return-object v0
.end method

.method public getUtf8Validation()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;
    .registers 2

    .line 25519
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->getUtf8Validation()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;

    move-result-object v0

    return-object v0
.end method

.method public hasEnumType()Z
    .registers 2

    .line 25439
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->hasEnumType()Z

    move-result v0

    return v0
.end method

.method public hasFieldPresence()Z
    .registers 2

    .line 25403
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->hasFieldPresence()Z

    move-result v0

    return v0
.end method

.method public hasJsonFormat()Z
    .registers 2

    .line 25583
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->hasJsonFormat()Z

    move-result v0

    return v0
.end method

.method public hasMessageEncoding()Z
    .registers 2

    .line 25547
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->hasMessageEncoding()Z

    move-result v0

    return v0
.end method

.method public hasRepeatedFieldEncoding()Z
    .registers 2

    .line 25475
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->hasRepeatedFieldEncoding()Z

    move-result v0

    return v0
.end method

.method public hasUtf8Validation()Z
    .registers 2

    .line 25511
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->hasUtf8Validation()Z

    move-result v0

    return v0
.end method

.method public setEnumType(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25455
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25456
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$52400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$EnumType;)V

    return-object p0
.end method

.method public setFieldPresence(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25419
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25420
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$52200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;)V

    return-object p0
.end method

.method public setJsonFormat(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25599
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25600
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$53200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;)V

    return-object p0
.end method

.method public setMessageEncoding(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25563
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25564
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$53000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;)V

    return-object p0
.end method

.method public setRepeatedFieldEncoding(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25491
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25492
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$52600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;)V

    return-object p0
.end method

.method public setUtf8Validation(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 25527
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->copyOnWrite()V

    .line 25528
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;->access$52800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;)V

    return-object p0
.end method
