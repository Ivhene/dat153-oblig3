.class Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;
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
    name = "PredicateFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final predicate:Lorg/checkerframework/com/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "TT;>;)V"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;, "Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction<TT;>;"
    .local p1, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Predicate;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    .line 280
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Functions$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/base/Predicate;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/base/Functions$1;

    .line 275
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;, "Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction<TT;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;-><init>(Lorg/checkerframework/com/google/common/base/Predicate;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 284
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;, "Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 275
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;, "Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction<TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;->apply(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 289
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;, "Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction<TT;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;

    if-eqz v0, :cond_0

    .line 290
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;

    .line 291
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;, "Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction<*>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-interface {v1, v2}, Lorg/checkerframework/com/google/common/base/Predicate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 293
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;, "Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 298
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;, "Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 303
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;, "Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Functions.forPredicate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;->predicate:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
