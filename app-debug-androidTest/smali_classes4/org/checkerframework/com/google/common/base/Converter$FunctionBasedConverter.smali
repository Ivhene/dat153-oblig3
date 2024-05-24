.class final Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;
.super Lorg/checkerframework/com/google/common/base/Converter;
.source "Converter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FunctionBasedConverter"
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


# instance fields
.field private final backwardFunction:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TB;+TA;>;"
        }
    .end annotation
.end field

.field private final forwardFunction:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TA;+TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TA;+TB;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TB;+TA;>;)V"
        }
    .end annotation

    .line 438
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;, "Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter<TA;TB;>;"
    .local p1, "forwardFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TA;+TB;>;"
    .local p2, "backwardFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TB;+TA;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/Converter;-><init>()V

    .line 439
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->forwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    .line 440
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->backwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    .line 441
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Converter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/base/Function;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/base/Function;
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/base/Converter$1;

    .line 431
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;, "Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter<TA;TB;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;-><init>(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Function;)V

    return-void
.end method


# virtual methods
.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;, "Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter<TA;TB;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->backwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 445
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;, "Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->forwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 455
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;, "Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter<TA;TB;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 456
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;

    .line 457
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;, "Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter<**>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->forwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->forwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v2, v3}, Lorg/checkerframework/com/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->backwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->backwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    .line 458
    invoke-interface {v2, v3}, Lorg/checkerframework/com/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 457
    :goto_0
    return v1

    .line 460
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;, "Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter<**>;"
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 465
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;, "Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter<TA;TB;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->forwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->backwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 470
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;, "Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converter.from("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->forwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter$FunctionBasedConverter;->backwardFunction:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
