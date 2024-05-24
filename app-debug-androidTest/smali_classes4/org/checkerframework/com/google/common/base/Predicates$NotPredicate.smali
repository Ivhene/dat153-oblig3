.class Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotPredicate"
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
.field final predicate:Lorg/checkerframework/com/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    .line 310
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate<TT;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Predicate;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    .line 312
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 326
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate<TT;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;

    if-eqz v0, :cond_0

    .line 327
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;

    .line 328
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate<*>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/base/Predicate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 330
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 321
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 335
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Predicates.not("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Predicates$NotPredicate;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
