.class public final Lorg/checkerframework/com/google/common/base/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;,
        Lorg/checkerframework/com/google/common/base/Functions$ConstantFunction;,
        Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;,
        Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;,
        Lorg/checkerframework/com/google/common/base/Functions$ForMapWithDefault;,
        Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;,
        Lorg/checkerframework/com/google/common/base/Functions$IdentityFunction;,
        Lorg/checkerframework/com/google/common/base/Functions$ToStringFunction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TB;TC;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TA;+TB;>;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TA;TC;>;"
        }
    .end annotation

    .line 222
    .local p0, "g":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TB;TC;>;"
    .local p1, "f":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<TA;+TB;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/base/Functions$FunctionComposition;-><init>(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Function;)V

    return-object v0
.end method

.method public static constant(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "Ljava/lang/Object;",
            "TE;>;"
        }
    .end annotation

    .line 318
    .local p0, "value":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Functions$ConstantFunction;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/base/Functions$ConstantFunction;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;)Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TK;TV;>;"
        }
    .end annotation

    .line 115
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/base/Functions$FunctionForMapNoDefault;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;TV;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TK;TV;>;"
        }
    .end annotation

    .line 132
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Functions$ForMapWithDefault;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/base/Functions$ForMapWithDefault;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forPredicate(Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Predicate<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 271
    .local p0, "predicate":Lorg/checkerframework/com/google/common/base/Predicate;, "Lorg/checkerframework/com/google/common/base/Predicate<TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/base/Functions$PredicateFunction;-><init>(Lorg/checkerframework/com/google/common/base/Predicate;Lorg/checkerframework/com/google/common/base/Functions$1;)V

    return-object v0
.end method

.method public static forSupplier(Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .line 363
    .local p0, "supplier":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;-><init>(Lorg/checkerframework/com/google/common/base/Supplier;Lorg/checkerframework/com/google/common/base/Functions$1;)V

    return-object v0
.end method

.method public static identity()Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "TE;TE;>;"
        }
    .end annotation

    .line 83
    sget-object v0, Lorg/checkerframework/com/google/common/base/Functions$IdentityFunction;->INSTANCE:Lorg/checkerframework/com/google/common/base/Functions$IdentityFunction;

    return-object v0
.end method

.method public static toStringFunction()Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lorg/checkerframework/com/google/common/base/Functions$ToStringFunction;->INSTANCE:Lorg/checkerframework/com/google/common/base/Functions$ToStringFunction;

    return-object v0
.end method
