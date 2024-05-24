.class Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionComposition"
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
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "TA;TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final f:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TA;+TB;>;"
        }
    .end annotation
.end field

.field private final g:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TB;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TB;TC;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TA;+TB;>;)V"
        }
    .end annotation

    .line 229
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    .local p1, "g":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TB;TC;>;"
    .local p2, "f":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TA;+TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->g:Lorg/checkerframework/com/google/common/base/Function;

    .line 231
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->f:Lorg/checkerframework/com/google/common/base/Function;

    .line 232
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->g:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->f:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 241
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 242
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;

    .line 243
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition<***>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->f:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->f:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v2, v3}, Lorg/checkerframework/com/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->g:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->g:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v2, v3}, Lorg/checkerframework/com/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 245
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition<***>;"
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 250
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->f:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->g:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;, "Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition<TA;TB;TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->g:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;->f:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
