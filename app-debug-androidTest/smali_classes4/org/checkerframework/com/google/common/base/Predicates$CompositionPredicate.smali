.class Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;
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
    name = "CompositionPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Predicate<",
        "TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final f:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TA;+TB;>;"
        }
    .end annotation
.end field

.field final p:Lorg/checkerframework/com/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "TB;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TA;+TB;>;)V"
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    .local p1, "p":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<TB;>;"
    .local p2, "f":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TA;+TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Predicate;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->p:Lorg/checkerframework/com/google/common/base/Predicate;

    .line 591
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->f:Lorg/checkerframework/com/google/common/base/Function;

    .line 592
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Predicates$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/base/Predicate;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/base/Function;
    .param p3, "x2"    # Lorg/checkerframework/com/google/common/base/Predicates$1;

    .line 585
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;-><init>(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Function;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 596
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->p:Lorg/checkerframework/com/google/common/base/Predicate;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->f:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 601
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 602
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;

    .line 603
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate<**>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->f:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->f:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v2, v3}, Lorg/checkerframework/com/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->p:Lorg/checkerframework/com/google/common/base/Predicate;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->p:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-interface {v2, v3}, Lorg/checkerframework/com/google/common/base/Predicate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 605
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate<**>;"
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 610
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->f:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->p:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 616
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;, "Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->p:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Predicates$CompositionPredicate;->f:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method