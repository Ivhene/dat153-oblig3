.class final Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;
.super Lorg/checkerframework/com/google/common/base/Converter;
.source "Maps.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BiMapConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/base/Converter<",
        "TA;TB;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final bimap:Lorg/checkerframework/com/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/BiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 1501
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;, "Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    .local p1, "bimap":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TA;TB;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/Converter;-><init>()V

    .line 1502
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/BiMap;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;->bimap:Lorg/checkerframework/com/google/common/collect/BiMap;

    .line 1503
    return-void
.end method

.method private static convert(Lorg/checkerframework/com/google/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/BiMap<",
            "TX;TY;>;TX;)TY;"
        }
    .end annotation

    .line 1516
    .local p0, "bimap":Lorg/checkerframework/com/google/common/collect/BiMap;, "Lorg/checkerframework/com/google/common/collect/BiMap<TX;TY;>;"
    .local p1, "input":Ljava/lang/Object;, "TX;"
    invoke-interface {p0, p1}, Lorg/checkerframework/com/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1517
    .local v0, "output":Ljava/lang/Object;, "TY;"
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "No non-null mapping present for input: %s"

    invoke-static {v1, v2, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1518
    return-object v0
.end method


# virtual methods
.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .line 1512
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;, "Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;->bimap:Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/BiMap;->inverse()Lorg/checkerframework/com/google/common/collect/BiMap;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;->convert(Lorg/checkerframework/com/google/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 1507
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;, "Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;->bimap:Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;->convert(Lorg/checkerframework/com/google/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 1523
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;, "Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;

    if-eqz v0, :cond_0

    .line 1524
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;

    .line 1525
    .local v0, "that":Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;, "Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter<**>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;->bimap:Lorg/checkerframework/com/google/common/collect/BiMap;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;->bimap:Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1527
    .end local v0    # "that":Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;, "Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1532
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;, "Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;->bimap:Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1538
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;, "Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maps.asConverter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Maps$BiMapConverter;->bimap:Lorg/checkerframework/com/google/common/collect/BiMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method