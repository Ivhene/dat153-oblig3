.class final Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;
.super Ljava/lang/Object;
.source "Equivalence.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EquivalentToPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Predicate<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Equivalence;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;, "Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate<TT;>;"
    .local p1, "equivalence":Lorg/checkerframework/com/google/common/base/Equivalence;, "Lorg/checkerframework/com/google/common/base/Equivalence<TT;>;"
    .local p2, "target":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Equivalence;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    .line 278
    iput-object p2, p0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    .line 279
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 283
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;, "Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate<TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/com/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 288
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;, "Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 289
    return v0

    .line 291
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 292
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;

    .line 293
    .local v1, "that":Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;, "Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate<*>;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 295
    .end local v1    # "that":Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;, "Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate<*>;"
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 300
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;, "Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 305
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;, "Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lorg/checkerframework/com/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".equivalentTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
