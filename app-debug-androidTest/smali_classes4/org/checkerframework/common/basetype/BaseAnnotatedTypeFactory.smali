.class public Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;
.super Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;
.source "BaseAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory<",
        "Lorg/checkerframework/framework/flow/CFValue;",
        "Lorg/checkerframework/framework/flow/CFStore;",
        "Lorg/checkerframework/framework/flow/CFTransfer;",
        "Lorg/checkerframework/framework/flow/CFAnalysis;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 1
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;

    .line 29
    sget-boolean v0, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->flowByDefault:Z

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V
    .locals 2
    .param p1, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p2, "useFlow"    # Z

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Z)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;

    if-ne v0, v1, :cond_0

    .line 24
    invoke-virtual {p0}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->postInit()V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAbstractAnalysis;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAnalysis;

    move-result-object p1

    return-object p1
.end method

.method protected createFlowAnalysis(Ljava/util/List;)Lorg/checkerframework/framework/flow/CFAnalysis;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljavax/lang/model/element/VariableElement;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            ">;>;)",
            "Lorg/checkerframework/framework/flow/CFAnalysis;"
        }
    .end annotation

    .line 34
    .local p1, "fieldValues":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/javacutil/Pair<Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/framework/flow/CFValue;>;>;"
    new-instance v0, Lorg/checkerframework/framework/flow/CFAnalysis;

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseAnnotatedTypeFactory;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    invoke-direct {v0, v1, p0, p1}, Lorg/checkerframework/framework/flow/CFAnalysis;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;Ljava/util/List;)V

    return-object v0
.end method
