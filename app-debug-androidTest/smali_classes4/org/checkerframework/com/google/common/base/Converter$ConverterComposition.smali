.class final Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;
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
    name = "ConverterComposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/base/Converter<",
        "TA;TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final first:Lorg/checkerframework/com/google/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TA;TB;>;"
        }
    .end annotation
.end field

.field final second:Lorg/checkerframework/com/google/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TB;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Converter;Lorg/checkerframework/com/google/common/base/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TA;TB;>;",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TB;TC;>;)V"
        }
    .end annotation

    .line 327
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;, "Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition<TA;TB;TC;>;"
    .local p1, "first":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    .local p2, "second":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TB;TC;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/Converter;-><init>()V

    .line 328
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->first:Lorg/checkerframework/com/google/common/base/Converter;

    .line 329
    iput-object p2, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->second:Lorg/checkerframework/com/google/common/base/Converter;

    .line 330
    return-void
.end method


# virtual methods
.method correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TA;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;, "Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition<TA;TB;TC;>;"
    .local p1, "c":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->first:Lorg/checkerframework/com/google/common/base/Converter;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->second:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/base/Converter;->correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/Converter;->correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;, "Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition<TA;TB;TC;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->second:Lorg/checkerframework/com/google/common/base/Converter;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->first:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/google/common/base/Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TA;"
        }
    .end annotation

    .line 346
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;, "Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition<TA;TB;TC;>;"
    .local p1, "c":Ljava/lang/Object;, "TC;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;, "Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition<TA;TB;TC;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 363
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;, "Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition<TA;TB;TC;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 364
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;

    .line 365
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;, "Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition<***>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->first:Lorg/checkerframework/com/google/common/base/Converter;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->first:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/base/Converter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->second:Lorg/checkerframework/com/google/common/base/Converter;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->second:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/base/Converter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 367
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;, "Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition<***>;"
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 372
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;, "Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition<TA;TB;TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->first:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->second:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 377
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;, "Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition<TA;TB;TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->first:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".andThen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter$ConverterComposition;->second:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
