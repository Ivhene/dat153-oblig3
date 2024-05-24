.class public Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;
.super Ljava/lang/Object;
.source "ExceptionHandlers.java"


# instance fields
.field private final exceptionhandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 8
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;->exceptionhandlers:Ljava/util/Map;

    .line 47
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getExceptionHandlers()[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    move-result-object v0

    .line 48
    .local v0, "cegs":[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 49
    .local v3, "ceg":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getCatchType()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v5

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;-><init>(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 50
    .local v4, "eh":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getStartPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    .local v5, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_1
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getEndPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 52
    iget-object v6, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;->exceptionhandlers:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 53
    .local v6, "hs":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;>;"
    if-nez v6, :cond_0

    .line 54
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v6, v7

    .line 55
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;->exceptionhandlers:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v6    # "hs":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;>;"
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    goto :goto_1

    .line 48
    .end local v3    # "ceg":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    .end local v4    # "eh":Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    .end local v5    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method


# virtual methods
.method public getExceptionHandlers(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)[Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;
    .locals 2
    .param p1, "ih"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 67
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandlers;->exceptionhandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 68
    .local v0, "hsSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;>;"
    if-nez v0, :cond_0

    .line 69
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;

    return-object v1

    .line 71
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/verifier/structurals/ExceptionHandler;

    return-object v1
.end method
