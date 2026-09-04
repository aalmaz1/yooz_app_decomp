.class public interface abstract Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MessageOptionsOrBuilder;
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
    name = "MessageOptionsOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MessageOptions;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MessageOptions$Builder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDeprecated()Z
.end method

.method public abstract getDeprecatedLegacyJsonFieldConflicts()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
.end method

.method public abstract getMapEntry()Z
.end method

.method public abstract getMessageSetWireFormat()Z
.end method

.method public abstract getNoStandardDescriptorAccessor()Z
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

.method public abstract hasDeprecated()Z
.end method

.method public abstract hasDeprecatedLegacyJsonFieldConflicts()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasFeatures()Z
.end method

.method public abstract hasMapEntry()Z
.end method

.method public abstract hasMessageSetWireFormat()Z
.end method

.method public abstract hasNoStandardDescriptorAccessor()Z
.end method
