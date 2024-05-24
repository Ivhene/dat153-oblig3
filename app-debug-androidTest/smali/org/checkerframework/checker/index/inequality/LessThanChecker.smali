.class public Lorg/checkerframework/checker/index/inequality/LessThanChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "LessThanChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/source/SuppressWarningsKeys;
    value = {
        "index",
        "lessthan"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;-><init>()V

    return-void
.end method


# virtual methods
.method protected getImmediateSubcheckerClasses()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            ">;>;"
        }
    .end annotation

    .line 18
    nop

    .line 19
    invoke-super {p0}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->getImmediateSubcheckerClasses()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 20
    .local v0, "checkers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;>;"
    const-class v1, Lorg/checkerframework/common/value/ValueChecker;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 21
    return-object v0
.end method
