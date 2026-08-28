.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 27948
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->access$57800()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .registers 2

    .line 27941
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLocation(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;"
        }
    .end annotation

    .line 28033
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 28034
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->access$58200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLocation(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
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

    .line 28023
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 28024
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 28025
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 28024
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->access$58100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method

.method public addLocation(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
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

    .line 28005
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 28006
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->access$58100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method

.method public addLocation(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 28014
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 28015
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->access$58000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method

.method public addLocation(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27996
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 27997
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->access$58000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method

.method public clearLocation()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .registers 2

    .line 28041
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 28042
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->access$58300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;)V

    return-object p0
.end method

.method public getLocation(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 27971
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->getLocation(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p1

    return-object p1
.end method

.method public getLocationCount()I
    .registers 2

    .line 27965
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->getLocationCount()I

    move-result v0

    return v0
.end method

.method public getLocationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .line 27957
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 27958
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->getLocationList()Ljava/util/List;

    move-result-object v0

    .line 27957
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeLocation(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 28049
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 28050
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->access$58400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;I)V

    return-object p0
.end method

.method public setLocation(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
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

    .line 27987
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 27988
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 27989
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 27988
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->access$57900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method

.method public setLocation(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
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

    .line 27978
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 27979
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;->access$57900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method
