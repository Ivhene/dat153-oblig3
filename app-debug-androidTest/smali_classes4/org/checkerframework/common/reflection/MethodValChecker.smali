.class public Lorg/checkerframework/common/reflection/MethodValChecker;
.super Lorg/checkerframework/common/basetype/BaseTypeChecker;
.source "MethodValChecker.java"


# annotations
.annotation runtime Lorg/checkerframework/framework/qual/StubFiles;
    value = {
        "reflection.astub"
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
.method protected createSourceVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;"
        }
    .end annotation

    .line 18
    new-instance v0, Lorg/checkerframework/common/reflection/MethodValVisitor;

    invoke-direct {v0, p0}, Lorg/checkerframework/common/reflection/MethodValVisitor;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V

    return-object v0
.end method

.method protected bridge synthetic createSourceVisitor()Lorg/checkerframework/framework/source/SourceVisitor;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lorg/checkerframework/common/reflection/MethodValChecker;->createSourceVisitor()Lorg/checkerframework/common/basetype/BaseTypeVisitor;

    move-result-object v0

    return-object v0
.end method

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

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 26
    .local v0, "subCheckers":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Class<+Lorg/checkerframework/common/basetype/BaseTypeChecker;>;>;"
    const-class v1, Lorg/checkerframework/common/value/ValueChecker;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 27
    const-class v1, Lorg/checkerframework/common/reflection/ClassValChecker;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 28
    return-object v0
.end method
