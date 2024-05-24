.class final Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;
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
    name = "ReverseConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/base/Converter<",
        "TB;TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final original:Lorg/checkerframework/com/google/common/base/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "original":Lorg/checkerframework/com/google/common/base/Converter;, "Lorg/checkerframework/com/google/common/base/Converter<TA;TB;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/Converter;-><init>()V

    .line 247
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;->original:Lorg/checkerframework/com/google/common/base/Converter;

    .line 248
    return-void
.end method


# virtual methods
.method correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;->original:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/Converter;->correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method correctedDoForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;->original:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/Converter;->correctedDoBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 286
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;

    if-eqz v0, :cond_0

    .line 287
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;

    .line 288
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<**>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;->original:Lorg/checkerframework/com/google/common/base/Converter;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;->original:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/google/common/base/Converter;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 290
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 295
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;->original:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public reverse()Lorg/checkerframework/com/google/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Converter<",
            "TA;TB;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;->original:Lorg/checkerframework/com/google/common/base/Converter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 300
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;, "Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Converter$ReverseConverter;->original:Lorg/checkerframework/com/google/common/base/Converter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
