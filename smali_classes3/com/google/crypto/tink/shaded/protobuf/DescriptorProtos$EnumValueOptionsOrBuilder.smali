.class public interface abstract Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnumValueOptionsOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDebugRedact()Z
.end method

.method public abstract getDeprecated()Z
.end method

.method public abstract getFeatureSupport()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;
.end method

.method public abstract getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
.end method

.method public abstract getUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getUninterpretedOptionCount()I
.end method

.method public abstract getUninterpretedOptionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDebugRedact()Z
.end method

.method public abstract hasDeprecated()Z
.end method

.method public abstract hasFeatureSupport()Z
.end method

.method public abstract hasFeatures()Z
.end method
